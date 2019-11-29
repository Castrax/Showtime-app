const heartLike = () => {

  const like = document.getElementById("add-favorite");

  like.addEventListener("click", (event) => {
    console.log(event);
    event.preventDefault();
    event.target.classList.toggle("far");
    event.target.classList.toggle("fas");
  });
};

export { heartLike };
