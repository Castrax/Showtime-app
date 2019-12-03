const initStripe = () => {

  var stripe = Stripe('pk_test_KscDhR4jVaxvhenogp2KyLpb00ZIRNpHlt');
  var elements = stripe.elements();

  var card = elements.create('card', {
  hidePostalCode: true,
  style: {
   base: {
    iconColor: '#666EE8',
    color: '#31325F',
    lineHeight: '40px',
    fontWeight: 300,
    '::placeholder': {
      color: '#CFD7E0',
     },
    },
   }
  });

  card.mount("#card-element");

  card.addEventListener('change', ({error}) => {
    const displayError = document.getElementById('card-errors');
    if (error) {
      displayError.textContent = error.message;
    } else {
      displayError.textContent = '';
    }
  });

  var submitButton = document.getElementById('submit');
  var clientSecret = document.getElementById('payment_intent').value;
  var orderId = document.getElementById('order_id').value;

  submitButton.addEventListener('click', function(ev) {
    stripe.confirmCardPayment(clientSecret, {
      payment_method: {card: card}
    }).then(function(result) {
      if (result.error) {
        // Show error to your customer (e.g., insufficient funds)
        console.log(result.error.message);
      } else {
        // The payment has been processed!
        if (result.paymentIntent.status === 'succeeded') {
          window.location.href = `http://localhost:3000/orders/${orderId}`;
        }
      }
    });
  });
}

export { initStripe };
