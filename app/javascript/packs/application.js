import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSiema } from "../plugins/init_carrousel";

import { geoloc } from "../plugins/geoloc";

initAutocomplete();
initSiema();


if (document.querySelector('.geoloc')) {
  geoloc();
};
