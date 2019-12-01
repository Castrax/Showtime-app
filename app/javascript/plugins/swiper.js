import Swiper from 'swiper';

const mySwiper = () => {
  new Swiper ('.swiper-container', {
    // Optional parameters
  slidesPerView: 3,
  spaceBetween: 30,
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
    },
  });
};

export { mySwiper };
