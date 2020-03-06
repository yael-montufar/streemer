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
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [-96, 37.8], // starting position
    zoom: 3 // starting zoom
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    const markerElement = buildMarker(marker)

    new mapboxgl.Marker(markerElement)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
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
      trackUserLocation: true
    })
  );
};


const getUserLocation = (map) =>{
  navigator.geolocation.getCurrentPosition((data) => {
    console.log(data)
    const lat = data.coords.latitude
    const lng = data.coords.longitude

    map.flyTo({
    center: [data.coords.longitude, data.coords.latitude],
    essential: true // this animation is considered essential with respect to prefers-reduced-motion
  });
    if (!window.location.href.includes('lat')) {
       window.location.href = `${window.location.href}?lat=${lat}&lng=${lng}`
    }

});

//     map.flyTo([data.coords.longitude, data.coords.latitude])
//    }, () => {
//   console.log("Rejected") })
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);

    addGeolocateControl(map);
    getUserLocation(map);
  }
};

export { initMapbox };
