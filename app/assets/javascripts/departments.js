$(function() {
        $('.hamburger').on('click', function () {
           
          if ($('.sidebar').hasClass('open')) {
            $('.sidebar').removeClass('open');
          }
          else {
            $('.sidebar').addClass('open');
          }
          
          });
        });

$(function() {
        $('.seller').on('click', function () {
           
          if ($('.hideseller').hasClass('open')) {
            $('.hideseller').removeClass('open');
          }
          else {
            $('.hideseller').addClass('open');
          }
          
          });
        });

$(function() {
        $('.glance').on('click', function () {
           
          if ($('.hideglance').hasClass('open')) {
            $('.hideglance').removeClass('open');
          }
          else {
            $('.hideglance').addClass('open');
          }
          
          });
        });

$(function() {
        $('.feature').on('click', function () {
           
          if ($('.hidefeature').hasClass('open')) {
            $('.hidefeature').removeClass('open');
          }
          else {
            $('.hidefeature').addClass('open');
          }
          
          });
        });

$(function() {
        $('.spec').on('click', function () {
           
          if ($('.hidespec').hasClass('open')) {
            $('.hidespec').removeClass('open');
          }
          else {
            $('.hidespec').addClass('open');
          }
          
          });
        });