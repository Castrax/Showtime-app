const heartLike = () => {

  const like = document.querySelectorAll("#add-favorite");


  like.forEach(function(element) {
    element.addEventListener("click", (event) => {
      console.log(event);
      event.preventDefault();
      event.target.classList.toggle("far");
      event.target.classList.toggle("fas");
    });
  });
};

export { heartLike };
