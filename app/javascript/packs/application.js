import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSiema } from "../plugins/init_carrousel";
import { geoloc } from "../plugins/geoloc";
import { calculatePrice } from "../plugins/calculate_price";
import { heartLike } from "../plugins/heart_like";

initAutocomplete();
initSiema();

if (document.querySelector('.geoloc')) {
  geoloc();
};

if (document.querySelector('#add-favorite')) {
  heartLike();
};

if (document.querySelector('.number_of_seats_string')) {
  calculatePrice();
};

