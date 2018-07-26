window.addEventListener("load", function () {
    var interProCon = document.getElementById("interested-project");
    var box = document.querySelector(".box");
    var content = interProCon.innerText;
    interProCon.onclick = function(){
        alert(content);
       box.appendChild(content);
      
    }
   
});