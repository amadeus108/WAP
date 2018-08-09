window.addEventListener("load", function() {
	var section = document.querySelector(".visual");
	var swiperContainer = section.querySelector(".swiper-container");
	var swiper = section.querySelector(".swiper");

	var pos = 0;
	//자동 이동
	
	
	//마우스 휠 동작
	swiperContainer.onwheel = function(e) {
		var el = e.target;
		
		// alert(el.className);


		for (; el.className != "swiper-container"; el = el.parentElement);

		if (el.classList.contains("swiper-container")) {
			e.preventDefault();
//			var left = parseInt(el.style.left || '0px');

			if (el.deltaY > 0) {
				pos -= 100;
			} else {
				pos += 100;
			}
			if (pos == -100) {
				pos = 0;
			} else if (pos == +100) {
				pos = -100;
			}

			el.style.left = pos + "%";
		}
	}
});