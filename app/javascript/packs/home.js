/* On Click Listener for Club Cards */

$("div[data-link]").on( "click", function() {
  window.location = $(this).data("link");
});


/* On Click Listeners for Categories Sidebar */

// Saves the categories
let categoryElements = document.getElementsByClassName('home-category-container');
// Array for all clubs that are checked
let clubList = [];

// Create event listeners for each category
// When clicked, update the DOM to toggle showing 
// or hiding the clubs based on category clicked on
for (let i = 0; i < categoryElements.length; i++) {
  categoryElements[i].children[0].addEventListener("click", function() {
    updateClubList(categoryElements[i].children[1].innerHTML), false
  });
}

/**
 * Adds or removes category from list
 * Updates the DOM to toggle show or hide clubs based on categories in the list
 * Checks conditional: 
 * When the user unchecks the last checkbox, show all club cards back on the DOM
 * @param {*} category 
 */
function updateClubList(category) {
  if (clubList.includes(category)) {
    let index = clubList.indexOf(category);
    if (index !== -1) {
      clubList.splice(index, 1);
    }
  } else {
    clubList.push(category.toString());
  }

  updateHomePage();
  checkIfNoCheckboxesAreChecked();
}

/**
 * Updates the DOM to show and hide club cards based on what is checked
 * in the categories sidebar
 */
function updateHomePage() {

  let categoryElements = document.getElementsByClassName('home-category-name');
  
  // Show all club cards on the DOM regardless if checked or not from the DOM
  for (let i = 0; i < categoryElements.length; i++) {
    let currClub = categoryElements[i].parentElement.parentElement;

    if (currClub.style.display === "none") {
      currClub.style.display = "";
    }
    
  }

  // Hide all club cards not in the list of categories from the DOM
  for (let i = 0; i < categoryElements.length; i++) {
    let currText = categoryElements[i].innerText;
    let currClub = categoryElements[i].parentElement.parentElement;
    
    if (!clubList.includes(currText)) {
      currClub.style.display = "none";
    }
  }
}

/**
 * When the user unchecks the last checkbox, show all club cards back on the DOM
 */
function checkIfNoCheckboxesAreChecked() {
  // If no checkboxes are checked, show all club cards on DOM
  if ($(".home-category-background input:checkbox:checked").length <= 0) {
    let categoryElements = document.getElementsByClassName('home-category-name');

    // Show all club cards on the DOM
    for (let i = 0; i < categoryElements.length; i++) {
      let currClub = categoryElements[i].parentElement.parentElement;

      if (currClub.style.display === "none") {
        currClub.style.display = "";
      }
      
    }
  }
}
