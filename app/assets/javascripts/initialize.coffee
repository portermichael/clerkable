jQuery ->
  $('.scrolldept').slick({
    dots: true,
    arrows: true,
    lazyLoad: 'ondemand',
    slidesToShow: 4,
  	responsive: [
    {
    breakpoint: 1070,
    settings: {
    slidesToShow: 3
    }
    },
    ]
  });