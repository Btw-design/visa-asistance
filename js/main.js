/**
 * My Visa Assistance — Main JavaScript
 * Version 2.0 — Modern UX, Accessibility, Performance
 */
(function() {
  'use strict';

  /* ===================================================================
     Utilities
     =================================================================== */
  const $ = (sel, ctx) => (ctx || document).querySelector(sel);
  const $$ = (sel, ctx) => [...(ctx || document).querySelectorAll(sel)];
  const on = (el, ev, fn) => { el.addEventListener(ev, fn); return el; };
  const ready = (fn) => { if (document.readyState !== 'loading') fn(); else on(document, 'DOMContentLoaded', fn); };
  const isMobile = () => window.innerWidth <= 767;
  const isTablet = () => window.innerWidth <= 991;

  /* ===================================================================
     1. Header — Scroll Effect
     =================================================================== */
  ready(function() {
    const header = $('.header');
    if (!header) return;

    let ticking = false;
    on(window, 'scroll', function() {
      if (!ticking) {
        requestAnimationFrame(function() {
          header.classList.toggle('scrolled', window.scrollY > 40);
          ticking = false;
        });
        ticking = true;
      }
    });
    // Initial check
    if (window.scrollY > 40) header.classList.add('scrolled');
  });

  /* ===================================================================
     2. Mobile Menu — Slide-in Drawer with Overlay
     =================================================================== */
  ready(function() {
    const toggle = $('.menu-toggle');
    const navList = $('.nav-list');
    if (!toggle || !navList) return;

    // Create overlay
    const overlay = document.createElement('div');
    overlay.className = 'nav-overlay';
    document.body.appendChild(overlay);

    const openMenu = () => {
      toggle.classList.add('active');
      navList.classList.add('open');
      overlay.classList.add('open');
      document.body.classList.add('menu-open');
      toggle.setAttribute('aria-expanded', 'true');
    };

    const closeMenu = () => {
      toggle.classList.remove('active');
      navList.classList.remove('open');
      overlay.classList.remove('open');
      document.body.classList.remove('menu-open');
      toggle.setAttribute('aria-expanded', 'false');
    };

    toggle.setAttribute('aria-expanded', 'false');
    toggle.setAttribute('aria-label', 'Toggle navigation menu');

    on(toggle, 'click', function(e) {
      e.stopPropagation();
      if (navList.classList.contains('open')) {
        closeMenu();
      } else {
        openMenu();
      }
    });

    // Close on overlay click
    on(overlay, 'click', closeMenu);

    // Close on link click (inside nav)
    navList.querySelectorAll('a').forEach(function(link) {
      on(link, 'click', closeMenu);
    });

    // Close on Escape key
    on(document, 'keydown', function(e) {
      if (e.key === 'Escape' && navList.classList.contains('open')) {
        closeMenu();
      }
    });

    // Close on resize from mobile to desktop
    on(window, 'resize', function() {
      if (window.innerWidth > 767 && navList.classList.contains('open')) {
        closeMenu();
      }
    });
  });

  /* ===================================================================
     3. FAQ Accordion
     =================================================================== */
  ready(function() {
    // Use event delegation on body for any FAQ
    on(document, 'click', function(e) {
      const question = e.target.closest('.faq-question');
      if (!question) return;

      const item = question.closest('.faq-item');
      if (!item) return;

      const faqList = item.closest('.faq-list');
      if (!faqList) return;

      const isActive = item.classList.contains('active');

      // Close all others
      faqList.querySelectorAll('.faq-item.active').forEach(function(i) {
        if (i !== item) i.classList.remove('active');
      });

      // Toggle current
      item.classList.toggle('active', !isActive);
    });
  });

  /* ===================================================================
     4. Scroll to Top
     =================================================================== */
  ready(function() {
    const btn = $('.scroll-top');
    if (!btn) return;

    btn.setAttribute('aria-label', 'Scroll to top');

    let ticking = false;
    on(window, 'scroll', function() {
      if (!ticking) {
        requestAnimationFrame(function() {
          btn.classList.toggle('visible', window.scrollY > 400);
          ticking = false;
        });
        ticking = true;
      }
    });

    on(btn, 'click', function() {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  });

  /* ===================================================================
     5. Smooth Anchor Scrolling
     =================================================================== */
  ready(function() {
    on(document, 'click', function(e) {
      const anchor = e.target.closest('a[href^="#"]');
      if (!anchor) return;

      const targetId = anchor.getAttribute('href');
      if (targetId === '#') return;

      const target = document.querySelector(targetId);
      if (!target) return;

      e.preventDefault();
      const headerOffset = 80;
      const top = target.getBoundingClientRect().top + window.pageYOffset - headerOffset;
      window.scrollTo({ top, behavior: 'smooth' });

      // Update URL hash without jump
      history.pushState(null, '', targetId);
    });
  });

  /* ===================================================================
     6. Cookie Consent Banner
     =================================================================== */
  ready(function() {
    if (localStorage.getItem('mva-cookie-consent')) return;

    const banner = document.createElement('div');
    banner.id = 'cookie-consent-banner';
    banner.setAttribute('role', 'alert');
    banner.setAttribute('aria-live', 'polite');
    banner.innerHTML =
      '<span>We use cookies to enhance your experience. By continuing, you agree to our <a href="/privacy-policy">Privacy Policy</a>.</span>' +
      '<button id="cookie-accept">Accept</button>';

    document.body.appendChild(banner);

    on($('#cookie-accept'), 'click', function() {
      localStorage.setItem('mva-cookie-consent', 'accepted');
      banner.style.display = 'none';
    });
  });

  /* ===================================================================
     7. Copyright Year
     =================================================================== */
  ready(function() {
    const el = $('#currentYear');
    if (el) el.textContent = new Date().getFullYear().toString();
  });

    /* ===================================================================
     9. Country Cards — Render & Filter
     =================================================================== */
  ready(function() {
    // Render country card grids
    const gridIds = [
      { id: 'visaGuideGrid', prefix: '/visa-guide/', suffix: '-visa' },
      { id: 'visaRequirementsGrid', prefix: '/visa-requirements/', suffix: '-visa-requirements' }
    ];

    gridIds.forEach(function(cfg) {
      const grid = document.getElementById(cfg.id);
      if (!grid || typeof countriesData === 'undefined') return;

      grid.innerHTML = ''; // Clear any existing skeleton

      countriesData.forEach(function(country) {
        const card = document.createElement('a');
        card.href = cfg.prefix + country.slug + cfg.suffix;
        card.className = 'country-card';
        card.setAttribute('data-country', country.name);
        card.setAttribute('data-region', country.region);
        card.innerHTML =
          `<span style="font-size:1.5rem;line-height:1;">${country.flag}</span>` +
          `<span class="country-name">${country.name}</span>` +
          `<i class="bi bi-arrow-right arrow"></i>`;
        grid.appendChild(card);
      });
    });

    // Search and filter
    const searchInput = document.getElementById('countrySearch');
    const regionFilter = document.getElementById('regionFilter');
    const allCards = $$('.country-card');

    if (searchInput && allCards.length) {
      on(searchInput, 'input', function() {
        applyFilters();
      });
    }

    if (regionFilter && allCards.length) {
      on(regionFilter, 'change', function() {
        applyFilters();
      });
    }

    function applyFilters() {
      const query = searchInput ? searchInput.value.toLowerCase().trim() : '';
      const region = regionFilter ? regionFilter.value : '';

      allCards.forEach(function(card) {
        const name = (card.getAttribute('data-country') || card.textContent).toLowerCase();
        const cardRegion = card.getAttribute('data-region');
        const matchesSearch = !query || name.includes(query);
        const matchesRegion = !region || cardRegion === region;
        card.style.display = matchesSearch && matchesRegion ? 'flex' : 'none';
      });
    }
  });

  /* ===================================================================
     10. Animated Counters
     =================================================================== */
  ready(function() {
    const statNumbers = $$('.stat-item h3');
    if (!statNumbers.length) return;

    const animateCounters = function() {
      statNumbers.forEach(function(stat) {
        const text = stat.textContent.replace(/[^0-9]/g, '');
        const target = parseInt(text, 10);
        if (!target || stat.classList.contains('animated')) return;

        stat.classList.add('animated');
        const increment = Math.ceil(target / 50);
        let current = 0;

        const update = function() {
          current += increment;
          if (current < target) {
            stat.textContent = current.toLocaleString() + '+';
            requestAnimationFrame(update);
          } else {
            stat.textContent = target.toLocaleString() + '+';
          }
        };

        requestAnimationFrame(update);
      });
    };

    // Use IntersectionObserver
    const statsSection = $('.stats-grid');
    if (statsSection && 'IntersectionObserver' in window) {
      const observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            animateCounters();
            observer.unobserve(entry.target);
          }
        });
      }, { threshold: 0.3 });
      observer.observe(statsSection);
    } else {
      // Fallback
      animateCounters();
    }
  });

  /* ===================================================================
     11. Lazy-Load Images
     =================================================================== */
  ready(function() {
    if ('loading' in HTMLImageElement.prototype) {
      $$('img[loading="lazy"]').forEach(function(img) {
        if (img.dataset.src) img.src = img.dataset.src;
      });
    }
  });

  /* ===================================================================
     12. Page Load Animation
     =================================================================== */
  ready(function() {
    $$('.feature-card, .country-card, .blog-card, .testimonial-card, .expertise-card, .stat-item').forEach(function(el, i) {
      // Only animate if not already animated via CSS
      if (!el.classList.contains('animate-in')) {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
      }
    });

    if ('IntersectionObserver' in window) {
      const observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
            observer.unobserve(entry.target);
          }
        });
      }, { threshold: 0.05 });

      $$('.feature-card, .country-card, .blog-card, .testimonial-card, .expertise-card, .stat-item').forEach(function(el) {
        observer.observe(el);
      });
    } else {
      // Fallback: show all
      $$('.feature-card, .country-card, .blog-card, .testimonial-card, .expertise-card, .stat-item').forEach(function(el) {
        el.style.opacity = '1';
        el.style.transform = 'translateY(0)';
      });
    }
  });

  /* ===================================================================
     13. Console Greeting (dev only)
     =================================================================== */
  console.log('%c My Visa Assistance %c v2.0 %c Loaded successfully ',
    'background:#171299;color:#fff;padding:4px 8px;border-radius:4px 0 0 4px;font-weight:700;',
    'background:#A5D549;color:#0a0a52;padding:4px 8px;font-weight:700;',
    'background:#f3f4f6;color:#ffffff;padding:4px 8px;border-radius:0 4px 4px 0;');

  /* ===================================================================
     14. Hero Carousel Slider
     =================================================================== */
  ready(function() {
    const slider = $('.hero-slider');
    if (!slider) return;

    const slidesContainer = slider.querySelector('.hero-slides');
    const slides = slider.querySelectorAll('.hero-slide');
    const dots = slider.querySelectorAll('.hero-slider-dot');
    const prevBtn = slider.querySelector('.hero-slider-prev');
    const nextBtn = slider.querySelector('.hero-slider-next');
    const totalSlides = slides.length;
    if (totalSlides < 2) return;

    let currentIndex = 0;
    let autoPlayTimer = null;
    const AUTO_PLAY_INTERVAL = 5000; // 5 seconds

    function goToSlide(index) {
      // Loop around
      if (index < 0) index = totalSlides - 1;
      if (index >= totalSlides) index = 0;
      currentIndex = index;

      // Move the slides container
      slidesContainer.style.transform = 'translateX(-' + (currentIndex * 100) + '%)';

      // Update dots
      dots.forEach(function(dot, i) {
        var isActive = i === currentIndex;
        dot.classList.toggle('active', isActive);
        dot.setAttribute('aria-selected', isActive ? 'true' : 'false');
      });
    }

    function nextSlide() {
      goToSlide(currentIndex + 1);
    }

    function prevSlide() {
      goToSlide(currentIndex - 1);
    }

    function startAutoPlay() {
      stopAutoPlay();
      autoPlayTimer = setInterval(nextSlide, AUTO_PLAY_INTERVAL);
    }

    function stopAutoPlay() {
      if (autoPlayTimer) {
        clearInterval(autoPlayTimer);
        autoPlayTimer = null;
      }
    }

    // Event listeners
    if (nextBtn) { on(nextBtn, 'click', function() { nextSlide(); startAutoPlay(); }); }
    if (prevBtn) { on(prevBtn, 'click', function() { prevSlide(); startAutoPlay(); }); }

    dots.forEach(function(dot) {
      on(dot, 'click', function() {
        var index = parseInt(dot.getAttribute('data-index'), 10);
        if (!isNaN(index)) goToSlide(index);
        startAutoPlay();
      });
    });

    // Touch/swipe support
    var touchStartX = 0;
    var touchEndX = 0;
    var isSwiping = false;

    on(slider, 'touchstart', function(e) {
      touchStartX = e.changedTouches[0].screenX;
      isSwiping = true;
      stopAutoPlay();
    }, { passive: true });

    on(slider, 'touchend', function(e) {
      if (!isSwiping) return;
      touchEndX = e.changedTouches[0].screenX;
      var diff = touchStartX - touchEndX;
      if (Math.abs(diff) > 50) {
        if (diff > 0) nextSlide();
        else prevSlide();
      }
      isSwiping = false;
      startAutoPlay();
    }, { passive: true });

    // Pause on hover
    on(slider, 'mouseenter', stopAutoPlay);
    on(slider, 'mouseleave', startAutoPlay);

    // Start autoplay
    startAutoPlay();
  });

  /* ===================================================================
     15. Visa Timeline Checker (Footer)
     =================================================================== */
  window.estimateVisaTimeline = function() {
    const country = document.getElementById('tlCountry');
    const visaType = document.getElementById('tlVisaType');
    const result = document.getElementById('tlResult');
    const daysEl = document.getElementById('tlDays');
    const labelEl = document.getElementById('tlLabel');

    if (!country || !visaType || !result) return;

    const c = country.value;
    const v = visaType.value;

    if (!c || !v) {
      daysEl.textContent = '--';
      labelEl.textContent = 'Please select both country and visa type';
      result.classList.add('show');
      return;
    }

    const timelineData = {
      usa:        { tourist: '3-10', business: '5-15', student: '14-30', work: '30-90', transit: '2-5' },
      uk:         { tourist: '10-21', business: '10-21', student: '21-60', work: '30-90', transit: '3-7' },
      canada:     { tourist: '14-30', business: '21-45', student: '30-90', work: '60-180', transit: '5-10' },
      australia:  { tourist: '7-21', business: '14-28', student: '21-60', work: '30-90', transit: '3-7' },
      schengen:   { tourist: '15-30', business: '15-30', student: '30-60', work: '45-90', transit: '5-10' },
      india:      { tourist: '3-7', business: '5-10', student: '14-30', work: '21-45', transit: '2-5' },
      japan:      { tourist: '5-10', business: '5-10', student: '14-30', work: '21-60', transit: '3-7' },
      china:      { tourist: '4-7', business: '4-7', student: '14-30', work: '21-45', transit: '2-5' },
      thailand:   { tourist: '3-7', business: '5-10', student: '14-30', work: '21-45', transit: '2-5' },
      uae:        { tourist: '3-5', business: '3-7', student: '14-21', work: '14-30', transit: '1-3' },
      singapore:  { tourist: '3-7', business: '3-7', student: '14-28', work: '21-60', transit: '1-3' },
      malaysia:   { tourist: '3-5', business: '3-7', student: '14-21', work: '21-45', transit: '1-3' }
    };

    const visaNames = {
      tourist: 'Tourist Visa',
      business: 'Business Visa',
      student: 'Student Visa',
      work: 'Work Visa',
      transit: 'Transit Visa'
    };

    const data = timelineData[c];
    if (!data || !data[v]) {
      daysEl.textContent = '--';
      labelEl.textContent = 'Data not available for this combination';
      result.classList.add('show');
      return;
    }

    daysEl.textContent = data[v] + ' business days';
    labelEl.textContent = c.charAt(0).toUpperCase() + c.slice(1) + ' ' + visaNames[v] + ' estimated processing time';
    result.classList.add('show');
  };
})();

/* ===================================================================
   20. Download Checklist
   =================================================================== */
function downloadChecklist() {
  var items = [];
  var docHeading = document.querySelector('h2');
  var section = null;
  // find the Documents Required heading
  var allHeadings = document.querySelectorAll('h2');
  for (var i = 0; i < allHeadings.length; i++) {
    if (allHeadings[i].textContent.indexOf('Documents Required') >= 0) {
      section = allHeadings[i];
      break;
    }
  }
  if (!section) {
    alert('Checklist section not found on this page.');
    return;
  }
  // Collect all list items after the heading until the next h2
  var el = section.nextElementSibling;
  while (el) {
    if (el.tagName === 'H2') break;
    if (el.tagName === 'UL') {
      var lis = el.querySelectorAll('li');
      for (var j = 0; j < lis.length; j++) {
        items.push(lis[j].textContent.trim());
      }
    }
    el = el.nextElementSibling;
  }
  if (items.length === 0) {
    alert('No checklist items found.');
    return;
  }
  // Build text content
  var countryName = (section.textContent.replace('Documents Required for', '').replace('Visa', '').trim() || 'Visa') + ' Checklist';
  var text = countryName + '\n' + Array(countryName.length + 1).join('=') + '\n\n';
  for (var k = 0; k < items.length; k++) {
    text += (k + 1) + '. ' + items[k] + '\n';
  }
  text += '\n\nSource: My Visa Assistance (https://www.myvisaassistance.com)\n';
  // Trigger download
  var blob = new Blob([text], { type: 'text/plain;charset=utf-8' });
  var url = URL.createObjectURL(blob);
  var a = document.createElement('a');
  a.href = url;
  a.download = countryName.toLowerCase().replace(/\s+/g, '-') + '.txt';
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}
