const menuIcon = document.getElementById("menu-icon");
const slideoutMenu = document.getElementById("slideout-menu");
const searchIcon = document.getElementById("search-icon");
const searchBox = document.getElementById("searchbox");

searchIcon.addEventListener('click', function(){
	if (searchBox.style.top == '72px'){
		searchBox.style.top = '24px';
		searchBox.style.pointerEvents = 'none';
		searchBox.style.opacity = '0';
	} else {
		searchBox.style.top = '72px';
		searchBox.style.pointerEvents = 'auto';
		searchBox.style.opacity = '1';
	}
});

menuIcon.addEventListener('click',function(){
	if (slideoutMenu.style.opacity == "1"){
		slideoutMenu.style.opacity = '0';
		slideoutMenu.style.pointerEvents = 'none';
	}else {
		slideoutMenu.style.opacity = '1';
		slideoutMenu.style.pointerEvents = 'auto';
	}
});


// Get the modal
var modalLogin = document.getElementById('id01');
var modalRegister = document.getElementById('id02');

function openModal() {
    modal.style.display = "block";
    document.body.style.overflow = "hidden"; // Κλειδώνει το scroll
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modalLogin) {
    modal.style.display = "none";
	document.body.style.overflow = "auto";
  }
  if (event.target == modalRegister) {
        modalRegister.style.display = "none";
        document.body.style.overflow = "auto";
  }
}
