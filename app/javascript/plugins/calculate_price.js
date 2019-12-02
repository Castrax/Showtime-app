const calculatePrice = () => {

  let number_of_seats_string = document.querySelector('#number-of-seats');
  let counter = 1
  const plus = document.querySelector('#plus');
  const minus = document.querySelector('#minus');
  const price_per_seat_string = document.querySelector(".price-per-seat");
  const total_price = document.querySelector(".total-price");
  const stripeSeats = document.querySelector("#number_of_seats");


  plus.addEventListener("click", (event) => {
    counter += 1;
    number_of_seats_string.value = counter;
    total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
    stripeSeats.value = number_of_seats_string.value;
  });
  minus.addEventListener("click", (event) => {
    counter -= 1;
    number_of_seats_string.value = counter;
    total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
    stripeSeats.value = number_of_seats_string.value;
  });
  number_of_seats_string.addEventListener('input', (event) => {
    if(number_of_seats_string.value == ""){
      total_price.innerText = 0
    } else {
      total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
      stripeSeats.value = number_of_seats_string.value;
    }
  });
};

export { calculatePrice };
