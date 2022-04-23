const main = new CORE();
document.getElementById("fileInput").addEventListener("change", (e) => {
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

	main.update(dt)
	main.lcd.update_debug()

	lastRender = timestamp
	window.requestAnimationFrame(loop)
}
var lastRender = 0
window.requestAnimationFrame(loop)