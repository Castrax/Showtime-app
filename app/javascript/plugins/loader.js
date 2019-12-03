const loader = () => {
  window.addEventListener('load', (event) => {
    document.querySelector('.sk-folding-cube').classList.add('hidden');
  });
};

const loaderGeoloc = () => {
  const button = document.querySelector('.btn-home');
  if (button) {
    button.addEventListener('click', (event) => {
      document.querySelector('.sk-folding-cube').classList.remove('hidden');
    });
  };
};

export { loader };
export { loaderGeoloc };
