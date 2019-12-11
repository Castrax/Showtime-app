import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('autocomplete_address');
  if (addressInput) {
    const placesAutocomplete = places({ container: addressInput });
    const button = document.querySelector('.btn-home');
    placesAutocomplete.on('change', (event) => {
      const lat = event.suggestion.latlng.lat;
      const lng = event.suggestion.latlng.lng;
      button.disabled = false;
      button.addEventListener('click', (event) => {
        event.preventDefault();
        window.location.assign(`/movies?lng=${lng}&lat=${lat}`);
      });
    });
    if (addressInput.value == "") {
      button.disabled = true;
    };
  };
};


export { initAutocomplete };
