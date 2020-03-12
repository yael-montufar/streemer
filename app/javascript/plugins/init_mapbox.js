import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMarker = (marker) => {
  const el = document.createElement('div');
  el.className = `marker marker-${marker.icon}`;

  return el
}

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/vanessapalomino/ck7ghrtg7060q1ip0wax96cr6/draft',
    center: [-96, 37.8], // starting position
    zoom: 12 // starting zoom
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const markerElement = buildMarker(marker)

    const markerInstance = new mapboxgl.Marker(markerElement)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    window.markers[marker.id] = markerInstance;

  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const addGeolocateControl = (map) => {

  map.addControl(
    new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: true,
      showAccuracyCircle: false
    })
  );
};


const getUserLocation = (map) =>{
  navigator.geolocation.getCurrentPosition((data) => {
    // console.log(data)
    const lat = data.coords.latitude
    const lng = data.coords.longitude

    map.flyTo({
    center: [data.coords.longitude, data.coords.latitude],
    essential: true // this animation is considered essential with respect to prefers-reduced-motion
  });

  // if (!window.location.href.includes('lat')) {
  //    window.location.href = `${window.location.href}?lat=${lat}&lng=${lng}`
  // }

});

//     map.flyTo([data.coords.longitude, data.coords.latitude])
//    }, () => {
//   console.log("Rejected") })
};

const logMarkers = (markers) => {

  // const carouselItem = document.querySelectorAll(".carousel-item-map");
  // const carouselItem = document.getElementById("carousel-item-map");

  // markers.forEach((marker) => {
  //   console.log(marker.id)
  // });


  // console.log(markers[0]) should use window.markrs to use marker.id


  // carouselItem.forEach(item =>
  //   item.addEventListener("click", (event) => {
  //     // console.log(event);
  //     const itemId = Number(event.currentTarget.dataset.id);
  //     console.log(itemId);
  //     // console.log(markers[17].lat);
  //     map.flyTo({
  //       center: window.markers[itemId].getLngLat(),
  //       zoom: 16,
  //       essential: true // this animation is considered essential with respect to prefers-reduced-motion
  //     });
  //   }));

}


const initMapbox = () => {
  if (mapElement) {
    window.markers = {};

    const map = buildMap();
    window.map = map;
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    addGeolocateControl(map);
    getUserLocation(map);
    logMarkers(markers);


// =================== get marker id =================
    Object.keys(window.markers).forEach((markerId) => {
      const marker = window.markers[markerId];
      marker.getElement().addEventListener('click', function(){
        const slickSlideElement = document.querySelector(`.slick-slide[data-id='${markerId}']`);
        const slickSlides = [...slickSlideElement.parentElement.childNodes]
        const selectedIndex = slickSlides.indexOf(slickSlideElement)

        console.log(selectedIndex)
        $('[data-slick]').slick('slickGoTo', selectedIndex);
        // $('[data-slick]').trigger("swipe");
      });
    });
  }
};

export { initMapbox };
