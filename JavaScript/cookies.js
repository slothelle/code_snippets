// Original functions from http://www.quirksmode.org/js/cookies.html
// Original functions modified to suit my personal needs and preferences

function createPermanentCookie(name, value) {
  var expires = "; expires=Fri, 31 Dec 9999 23:59:59 GMT";
  document.cookie = name + "=" + value + expires + "; path=/";
}

function createExpiringCookie(name, value, days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime() + (days*24*60*60*1000));
    var expires = "; expires=" + date.toGMTString();
  }
  else var expires = "";
  document.cookie = name + "=" + value + expires + "; path=/";
}

function readCookie(name) {
  var nameEqual = name + "=";
  var fullCookie = document.cookie.split(';');
  for(var i=0; i < fullCookie.length; i++) {
    var cookie = fullCookie[i];
    while (cookie.charAt(0)==' ') cookie = cookie.substring(1, cookie.length);
    if (cookie.indexOf(nameEqual) == 0) return cookie.substring(nameEqual.length, cookie.length);
  }
  return null;
}

function eraseCookie(name) {
  createCookie(name, "", -1);
}