/* Chat launcher: replaces Tawk's default bubble and "We Are Here!" sticker with a button in the site's own style.
   Tawk still provides the chat window; this only changes how it is opened. */
(function () {
  if (window.self !== window.top || document.querySelector('.mva-chat')) return;
  var api = window.Tawk_API = window.Tawk_API || {};
  var st = document.createElement('style');
  st.textContent =
    '.mva-chat{position:fixed;right:calc(28px + env(safe-area-inset-right,0px));bottom:calc(36px + env(safe-area-inset-bottom,0px));z-index:999;display:inline-flex;align-items:center;gap:10px;height:56px;padding:0 22px 0 18px;border:0;border-radius:999px;background:#2F45C5;color:#fff;font:700 15px/1 Inter,system-ui,-apple-system,"Segoe UI",sans-serif;cursor:pointer;box-shadow:0 10px 28px rgba(47,69,197,.35),0 2px 6px rgba(3,27,48,.18);transition:transform .2s ease,box-shadow .2s ease,background .2s ease}' +
    '.mva-chat[hidden]{display:none}' +
    '.mva-chat:hover{background:#2437A6;transform:translateY(-2px);box-shadow:0 14px 34px rgba(47,69,197,.42),0 2px 6px rgba(3,27,48,.2)}' +
    '.mva-chat:focus-visible{outline:3px solid #fff;outline-offset:2px;box-shadow:0 0 0 6px #2F45C5}' +
    '.mva-chat svg{width:24px;height:24px;flex:none}' +
    '.mva-chat-dot{position:absolute;top:4px;left:38px;width:12px;height:12px;border-radius:50%;background:#22C55E;border:2px solid #fff}' +
    '.mva-chat-n{position:absolute;top:-6px;right:-4px;min-width:22px;height:22px;padding:0 6px;border-radius:11px;background:#E11D48;color:#fff;font-size:12px;line-height:22px;text-align:center;border:2px solid #fff;box-sizing:content-box}' +
    '.mva-chat.is-loading{opacity:.85;cursor:progress}' +
    '@media(max-width:767px){.mva-chat{right:16px;bottom:20px;width:48px;height:48px;padding:0;justify-content:center}.mva-chat-tx{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0 0 0 0)}.mva-chat svg{width:22px;height:22px}.mva-chat-dot{top:0;left:auto;right:0}}' +
    '.scroll-top{bottom:calc(108px + env(safe-area-inset-bottom,0px))!important}' +
    '@media(max-width:767px){.scroll-top{bottom:calc(80px + env(safe-area-inset-bottom,0px))!important}}' +
    '@media(prefers-reduced-motion:reduce){.mva-chat{transition:none}.mva-chat:hover{transform:none}}' +
    '@media print{.mva-chat{display:none}}';
  document.head.appendChild(st);

  var b = document.createElement('button');
  b.type = 'button';
  b.className = 'mva-chat';
  b.innerHTML = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M21 12a8 8 0 0 1-11.6 7.1L4 20.5l1.4-4.6A8 8 0 1 1 21 12z"/><path d="M8.5 11h7M8.5 14h4.5"/></svg>' +
    '<span class="mva-chat-tx">Chat with us</span><span class="mva-chat-dot" hidden></span><span class="mva-chat-n" hidden></span>';
  document.body.appendChild(b);
  var dot = b.querySelector('.mva-chat-dot'), badge = b.querySelector('.mva-chat-n');
  var ready = false, want = false;

  function openChat() { api.showWidget(); api.maximize(); }
  function status(s) { dot.hidden = s !== 'online'; }
  b.addEventListener('click', function () {
    if (ready) { openChat(); return; }
    want = true;                       /* Tawk loads on first interaction; open as soon as it is ready */
    b.classList.add('is-loading');
    setTimeout(function () {           /* chat blocked or offline: fall back to the contact page */
      if (!ready && want) { want = false; b.classList.remove('is-loading'); window.location.href = '/contact/'; }
    }, 10000);
  });
  api.onBeforeLoad = function () { if (!want && api.hideWidget) api.hideWidget(); };
  api.onLoad = function () {
    ready = true;
    b.classList.remove('is-loading');
    if (want) { want = false; openChat(); } else { api.hideWidget(); }
    if (api.getStatus) status(api.getStatus());
  };
  api.onStatusChange = status;
  api.onChatMaximized = function () { b.hidden = true; };
  api.onChatMinimized = function () { api.hideWidget(); b.hidden = false; };
  api.onChatHidden = function () { b.hidden = false; };
  api.onUnreadCountChanged = function (n) {
    badge.hidden = !n;
    badge.textContent = n > 9 ? '9+' : n;
    b.setAttribute('aria-label', n ? 'Chat with us, ' + n + ' unread' : 'Chat with us');
  };
  if (typeof api.getStatus === 'function') api.onLoad();   /* Tawk finished loading before this file did */
})();
