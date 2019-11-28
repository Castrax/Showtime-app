import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSiema } from "../plugins/init_carrousel";
import { geoloc } from "../plugins/geoloc";
import { counterField } from "../plugins/counter_field";
import { calculatePrice } from "../plugins/calculate_price";

initAutocomplete();
initSiema();

if (document.querySelector('.geoloc')) {
  geoloc();
};

calculatePrice();

