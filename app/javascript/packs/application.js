import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { geoloc } from "../plugins/geoloc";

initAutocomplete();


if (document.querySelector('.geoloc')) {
  geoloc();
};
