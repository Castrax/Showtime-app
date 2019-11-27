const geoloc = () => {
  const button = document.querySelector('.geoloc');
  button.addEventListener('click', (event) => {
    event.preventDefault();
    navigator.geolocation.getCurrentPosition(successCallback,errorCallback,{timeout:10000});
  });

  const successCallback = (event) => {
    const crd = event.coords;
    const lat = crd.latitude;
    const long = crd.longitude;
    window.location.replace(`/movies?lng=${long}&lat=${lat}`);
  };

  const errorCallback = (err) => {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  };
};

export { geoloc };
