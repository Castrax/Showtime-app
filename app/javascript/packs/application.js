import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSiema } from "../plugins/init_carrousel";
import { geoloc } from "../plugins/geoloc";
import { calculatePrice } from "../plugins/calculate_price";
import { heartLike } from "../plugins/heart_like";
import { mySwiper } from "../plugins/swiper";
import { textWrapper } from "../plugins/anime";
import { loader } from "../plugins/loader";
import { loaderGeoloc } from "../plugins/loader";

initAutocomplete();
initSiema();
mySwiper();
textWrapper();
loader();
loaderGeoloc();

if (document.querySelector('.geoloc')) {
  geoloc();
};

if (document.querySelector('#add-favorite')) {
  heartLike();
};

if (document.querySelector('.modal')) {
  calculatePrice();
};
