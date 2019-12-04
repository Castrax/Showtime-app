const buttonFixed = () => {
  const buttonFixed = document.querySelector('.link-button');
  const otherShowTime = document.querySelector('.autres-seances');

  function checkPosition(event) {
    let windowY = window.scrollY;
    const otherShowTimeY = otherShowTime.getBoundingClientRect().top;
    if (windowY < otherShowTimeY) {
      // Scrolling UP
      buttonFixed.classList.add('d-block');
      buttonFixed.classList.remove('d-none');
    } else {
      // Scrolling DOWN
      buttonFixed.classList.add('d-none');
      buttonFixed.classList.remove('d-block');
    }
  }
  if (otherShowTime) {
    window.addEventListener('scroll', (event) => checkPosition(event));
  }
};

export { buttonFixed };
