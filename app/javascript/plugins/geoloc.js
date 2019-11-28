const geoloc = () => {
  const buttons = document.querySelectorAll('.geoloc');
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      navigator.geolocation.getCurrentPosition(successCallback,errorCallback,{timeout:10000});
    });
  });

  const successCallback = (event) => {
    const crd = event.coords;
    const lat = crd.latitude;
    const long = crd.longitude;
    console.log(long);
    console.log(lat);
    window.location.replace(`/movies?lng=${long}&lat=${lat}`);
  };

  const errorCallback = (err) => {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  };
};

export { geoloc };
