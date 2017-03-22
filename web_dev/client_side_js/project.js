console.log("The script is running!");

function addBlurSepia(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.filter = "blur(5px) sepia(65%)";
}

var photo = document.getElementById("cat-photo");
photo.addEventListener("click", addBlurSepia);

var wholePage = document.getElementById("about-my-pet");
wholePage.style.background = "hotpink";