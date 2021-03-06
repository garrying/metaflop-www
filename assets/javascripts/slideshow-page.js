/*
 * metaflop - web interface
 * © 2012 by alexis reigel
 * www.metaflop.com
 *
 * licensed under gpl v3
 */

/* global $ */

$(function () {
  var box = $('.box-slideshow');

  // only applicable for slideshow pages
  if (box.length === 0) {
    return;
  }

  var slideshow = box.find('.box-content');
  var progress = box.find('h2 span');
  var initSlideshow = function() {
    slideshow.bjqs({
      width: slideshow.width(),
      height: 540,
      nextText: '',
      prevText: '',
      rotationSpeed: 4000,
      showControls: false,
      showMarkers: false,
      mouseNav: true,
      nextImageLoaded: function(position, slideCount) {
        progress.html(position + 1 + '/' + slideCount);
      }
    });
  };

  initSlideshow();
});
