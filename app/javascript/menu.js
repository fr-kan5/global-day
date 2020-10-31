function menu() {

    const btn = document.getElementById('button-trigger');
    const nav = document.querySelector('nav');
    
    btn.addEventListener('click', () => {
      nav.classList.toggle('is-opened')
    
    const lists = document.getElementById("lists");
    const list = document.querySelectorAll('#list');
    list.forEach (function (elem) {
      elem.addEventListener('mouseover',() => {
        elem.setAttribute('style','font-size:20px;color:#000000;background-color:#f0f0f0;padding:10px;border-radius:3px;')
        elem.addEventListener('mouseout',() => {
          elem.removeAttribute('style','font-size:20px;color:#000000;background-color:#f0f0f0;padding:10px;border-radius:3px;')
        });
      });
    });
  });
}


window.addEventListener("load", menu)