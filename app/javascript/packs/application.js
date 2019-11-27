import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSiema } from "../plugins/init_carrousel";
import { geoloc } from "../plugins/geoloc";
import { counterField } from "../plugins/counter_field";

initAutocomplete();
initSiema();

if (document.querySelector('.geoloc')) {
  geoloc();
};

counterField();


const seats = document.querySelector('.input-number');
seats.addEventListener('change', (event) => {
  // const numberSeats = document.querySelector('.number-seats');
  // numberSeats.textContent = `You like ${event.target.value}`;
  console.log(event);
});


