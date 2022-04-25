"use strict";

const main = new CORE();
document.getElementById("fileInput").addEventListener("change", (e) => {
	main.reset();
	const file = e.target.files[0];
	if (!file) return;
	var fileReader = new FileReader();
	fileReader.onload = function () {
		if (!this.result) return;
		main.setRom(this.result);
		main.started = true;
	};
	fileReader.readAsArrayBuffer(file);
});


var pressedKeys = {};
window.onkeyup = function(e)   { pressedKeys[e.keyCode] = false; }
window.onkeydown = function(e) { pressedKeys[e.keyCode] = true;  }


/// LAZY LOOP!
function loop(timestamp) {
	var dt = timestamp - lastRender

	for (var i = 0; i < 4; i++) {
		main.update(dt)
	}
	main.lcd.update_debug()

	var canvas = document.getElementById('Screen');
	main.lcd.render( canvas )

	lastRender = timestamp
	window.requestAnimationFrame(loop)
}
var lastRender = 0
window.requestAnimationFrame(loop)






function openMenu(evt, cityName) {
	// Declare all variables
	var i, tabcontent, tablinks;

	// Get all elements with class="tabcontent" and hide them
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}

	// Get all elements with class="tablinks" and remove the class "active"
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}

	// Show the current tab, and add an "active" class to the button that opened the tab
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
} 


/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function dropdownEvent() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
} 














