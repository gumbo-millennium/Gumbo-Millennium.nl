<script type="text/javascript">

Webcam = {};
Webcam.Image = function (img) {
	var running = false, timeout = null, preload, delay;
	var url = (img.src.indexOf("?") > 0) ? img.src.substr(0, img.src.indexOf("?")) : img.src;

	this.start = function () { 
		running = true;
		delay = 5000;
		run();
	}

	this.stop = function () {
		running = false;
		clearTimeout(timeout);
		timeout = null;
	}

	this.reset = function () {
		delay = 5000;
	}

	var load = function() {
		timeout = null;
		preload.src = url + "?" + (new Date()).getTime();
	}.bind(this);

	var run = function() {
		if (running && timeout === null) { 
			timeout = setTimeout(load, delay);
			delay = (delay < 600000) ? Math.floor(delay * 1.008) : delay;
		}
	}.bind(this);

	preload = new Image();

	preload.onload = function () { if (running) { img.src = preload.src; } run(); }.bind(this);
	preload.onerror = function () { run(); }.bind(this);
}

$(document).on("dom:loaded", function(){
	try {
		webcam1 = new Webcam.Image($('webcam-image1'));
		webcam1.start();
	} catch(e) {}

	try {
		webcam2 = new Webcam.Image($('webcam-image2'));
		webcam2.start();
	} catch(e) {}

	updater = new Ajax.PeriodicalUpdater($('webcam-messages'), '/lichtkrant/messages.php', {method: 'get', frequency: 5, decay: 1.5});
});

</script>