const calculatePrice = () => {

  let number_of_seats_string = document.querySelector('#number-of-seats');
  let counter = 1
  const plus = document.querySelector('#plus');
  const minus = document.querySelector('#minus');
  const price_per_seat_string = document.querySelector(".price-per-seat");
  const total_price = document.querySelector(".total-price");


  plus.addEventListener("click", (event) => {
    console.log(event);
    counter += 1;
    number_of_seats_string.value = counter;
    total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
  });
  minus.addEventListener("click", (event) => {
    console.log(event);
    counter -= 1;
    number_of_seats_string.value = counter;
    total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
  });
  number_of_seats_string.addEventListener('input', (event) => {
    console.log(total_price.innerText);
    if(number_of_seats_string.value == ""){
      total_price.innerText = 0
    } else {
      total_price.innerText = parseInt(price_per_seat_string.innerText) * parseInt(number_of_seats_string.value);
    }
  });
};

export { calculatePrice };
