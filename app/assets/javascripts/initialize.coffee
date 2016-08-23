jQuery ->
  $('.scroller').slick({
    dots: true,
    arrows: true,
    lazyLoad: 'ondemand',
    slidesToShow: 4,
  	responsive: [
    {
    breakpoint: 1090,
    settings: {
    slidesToShow: 3
    }
    },
    {
    breakpoint: 680,
    settings: {
    slidesToScroll: 2,
    slidesToShow: 2
    }
    }
    ]
  });