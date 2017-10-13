$(document).ready(() => {
  const $toggler = $(".nav-button"), $navWrap = $(".nav-wrap")

  $toggler.on("click", (e) => {
    $toggler.toggleClass("nav-button-toggle");
    $navWrap.toggleClass("nav-show")
  });
});
