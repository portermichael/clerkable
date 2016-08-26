$ ->
  $('.boiller').slick
    dots: true
    arrows: true
    lazyLoad: 'ondemand'
    slidesToShow: 3
    responsive: [ {
      breakpoint: 1070
      settings: {
      slidesToShow: 2
      slidesToScroll: 2
      }
    } ]
  return