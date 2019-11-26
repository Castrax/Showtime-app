import "bootstrap";

const button = document.querySelector('.current-location');
// button.addEventListener("click", (event) => {
//   event.preventDefault();
//   navigator.geolocation.getCurrentPosition(event =>
//     window.location.replace(`http://localhost:3000/movies?lng=${event.coords.longitude}&lat=${event.coords.latitude}`)
//     );
// });

button.addEventListener('click', (event) => {
  event.preventDefault();
  navigator.geolocation.getCurrentPosition(successCallback,errorCallback,{timeout:10000});
});

const successCallback = (event) => {
  const crd = event.coords;
  const lat = crd.latitude;
  const long = crd.longitude;
  window.location.replace(`http://localhost:3000/movies?lng=${long}&lat=${lat}`);
};

const errorCallback = (err) => {
  console.warn(`ERREUR (${err.code}): ${err.message}`);
};

// const showPosition(position) {
//   const longitude = position.coords.longitude;
//   const latitude = position.coords.latitude;
//   console.log(longitude);
//   console.log(latitude);
// }


