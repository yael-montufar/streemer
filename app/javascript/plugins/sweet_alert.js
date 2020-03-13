import Swal from "sweetalert2";

const initSwal = () => {
  const popupNotice = document.querySelector(".js-popup-notice");

  if (popupNotice) {
    Swal.fire({
      title: popupNotice.innerText,
      text: 'Thank for supporting local artists!',
      icon: 'success',
      confirmButtonText: 'Cool'
    })
  }
};

export { initSwal };
