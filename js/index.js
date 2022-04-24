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