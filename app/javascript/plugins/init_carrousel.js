import Siema from 'siema';

const initSiema = () => {
  const siemas = document.querySelectorAll(".siema");
    siemas.forEach(siema => {
    new Siema({
      selector: siema,
      perPage: 2,
      });
  });
};

export { initSiema };
