/* Visa guide: "Visa application centres in India" – list/map highlight, closest centre, minimise list */
(function () {
  'use strict';
  function km(a, b, c, d) {
    var r = Math.PI / 180, x = Math.sin((c - a) * r / 2), y = Math.sin((d - b) * r / 2);
    return 12742 * Math.asin(Math.sqrt(x * x + Math.cos(a * r) * Math.cos(c * r) * y * y));
  }
  document.querySelectorAll('[data-vac]').forEach(function (box) {
    var items = box.querySelectorAll('.n-vac-list li'), pins = box.querySelectorAll('.n-vac-pin');
    var out = box.querySelector('.n-vac-out'), near = box.querySelector('.n-vac-near'), min = box.querySelector('.n-vac-min');
    function mark(city, on) {
      items.forEach(function (li) { li.classList.toggle('on', on && li.dataset.city === city); });
      pins.forEach(function (p) { p.classList.toggle('on', on && p.dataset.city === city); });
    }
    items.forEach(function (li) {
      li.addEventListener('mouseenter', function () { mark(li.dataset.city, true); });
      li.addEventListener('mouseleave', function () { if (!li.classList.contains('pick')) mark(li.dataset.city, false); });
    });
    pins.forEach(function (p) {
      p.addEventListener('mouseenter', function () { mark(p.dataset.city, true); });
      p.addEventListener('mouseleave', function () { mark(p.dataset.city, false); });
    });
    if (min) min.addEventListener('click', function () {
      var open = min.getAttribute('aria-expanded') === 'true';
      box.classList.toggle('n-vac-short', open);
      min.setAttribute('aria-expanded', open ? 'false' : 'true');
      min.querySelector('span').textContent = open ? 'Show full list' : 'Minimise list';
      min.querySelector('i').className = open ? 'bi bi-eye' : 'bi bi-eye-slash';
    });
    if (near) near.addEventListener('click', function () {
      if (!navigator.geolocation) { out.textContent = 'Your browser cannot share your location. Pick the nearest city from the list.'; return; }
      out.textContent = 'Finding your location…';
      navigator.geolocation.getCurrentPosition(function (pos) {
        var best = null, bd = 1e9;
        items.forEach(function (li) {
          var d = km(pos.coords.latitude, pos.coords.longitude, +li.dataset.lat, +li.dataset.lon);
          if (d < bd) { bd = d; best = li; }
        });
        if (!best) return;
        items.forEach(function (li) { li.classList.remove('pick'); });
        best.classList.add('pick'); mark(best.dataset.city, true);
        box.classList.remove('n-vac-short');
        out.textContent = 'Closest to you: ' + best.dataset.city + ' (about ' + Math.round(bd) + ' km away, in a straight line).';
      }, function () {
        out.textContent = 'We could not get your location. Allow location access, or pick the nearest city from the list.';
      }, { timeout: 10000, maximumAge: 600000 });
    });
  });
})();
