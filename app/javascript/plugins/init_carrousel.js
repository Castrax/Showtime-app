import Siema from 'siema';

const initSiema = () => {
  const siemas = document.querySelectorAll(".siema");
    siemas.forEach(siema => {
    new Siema({
      selector: siema,
      perPage: 1.5,
      });
  });
};

export { initSiema };


