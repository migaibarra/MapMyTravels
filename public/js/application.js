$(document).ready(() => {
  const $navIcon = $('.nav-icon');
  $navIcon.on('click', () => {
    $(this).toggleClass('button-open')
  });
});
