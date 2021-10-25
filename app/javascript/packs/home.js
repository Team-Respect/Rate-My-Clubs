/* On Click Listener for Club Cards */

$("div[data-link]").on( "click", function() {
  window.location = $(this).data("link");
});


/* On Click Listeners for Categories Sidebar */

let categoryElements = document.getElementsByClassName('home-category-container');

for (let i = 0; i < categoryElements.length; i++) {
  categoryElements[i].children[0].addEventListener("click", function() {
    editClubs(categoryElements[i].children[1].innerHTML), false
  });
}

/**
 * Edits clubs based on categories that are NOT inputted
 * @param {*} category Array of categories to keep
 */
function editClubs(category) {

  let element = document.getElementsByClassName('home-category-name');

  for (let i = 0; i < element.length; i++) {
    let currText = element[i].innerText;
    let currClub = element[i].parentElement.parentElement;
    
    if (currText != category) {

      if (currClub.style.display === "none") {
        //console.log("SHOWING: " + currClub.innerText);
        currClub.style.display = "";
      } else {
        //console.log("Hiding: " + currClub.innerText);
        currClub.style.display = "none";
      }

    }
  }
}
