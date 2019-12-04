const buttonFixed = () => {
  const buttonFixed = document.querySelector('.btn-showtime');
  const bookCta = document.querySelector('.book-cta');
  function checkPosition(event) {
    let windowY = window.scrollY;
    const otherShowTimeY = buttonFixed.getBoundingClientRect().top;
    if (windowY > otherShowTimeY) {
      // Scrolling UP
      bookCta.style.transform = "translateY(0%)";
    } else {
      // Scrolling DOWN
      bookCta.style.transform = "translateY(-100%)"
    }
  }
  if (bookCta) {
    window.addEventListener('scroll', (event) => checkPosition(event));
  }
};

export { buttonFixed };
