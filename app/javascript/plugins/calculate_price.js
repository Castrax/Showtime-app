const calculatePrice = () => {

  const minus = document.querySelectorAll('.minus');
  const plus = document.querySelectorAll('.plus');

  minus.forEach((button) => {
    button.addEventListener("click", (event) => {
      const showtimeId = button.dataset.showtime;
      const numberOfSeats = document.getElementById(`number-of-seats-${showtimeId}`);
      numberOfSeats.value = numberOfSeats.value - 1;
      const totalPrice = document.querySelector(`.total-price-${showtimeId}`);
      const price = totalPrice.dataset.price;
      totalPrice.innerText = parseInt(numberOfSeats.value) * parseInt(price);
      const stripeSeats = document.querySelector(`#number_of_seats_showtime-${showtimeId}`);
      stripeSeats.value = numberOfSeats.value;
    })
  })

  plus.forEach((button) => {
    button.addEventListener("click", (event) => {
      const showtimeId = button.dataset.showtime;
      const numberOfSeats = document.getElementById(`number-of-seats-${showtimeId}`);
      let counter = numberOfSeats.value;
      numberOfSeats.value = parseInt(numberOfSeats.value) + parseInt("1");
      const totalPrice = document.querySelector(`.total-price-${showtimeId}`);
      const price = totalPrice.dataset.price;
      totalPrice.innerText = parseInt(numberOfSeats.value) * parseInt(price);
      const stripeSeats = document.querySelector(`#number_of_seats_${showtimeId}`);
      stripeSeats.value = numberOfSeats.value;
    })
  })
};

export { calculatePrice };
