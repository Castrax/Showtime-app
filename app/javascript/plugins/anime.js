const textWrapper = () => {
  const textWrapper = document.querySelector('.ml3');
  if (!textWrapper) return;
  textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

  anime.timeline({loop: true})
    .add({
      targets: '.ml3 .letter',
      opacity: [0,1],
      easing: "easeInOutQuad",
      duration: 2250,
      delay: (el, i) => 150 * (i+1)
    }).add({
      targets: '.ml3',
      opacity: 0.4,
      duration: 100,
      easing: "easeOutExpo",
      delay: 200
    });
};

export { textWrapper };
