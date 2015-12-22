// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function() {
  menuSlider();
  timeColor();
  tipFiller();
  currencySwitcher();
});

function menuSlider() {
  $('.sliding-panel-button,.sliding-panel-fade-screen,.sliding-panel-close')
    .on('click touchstart', function(e) {
      $('.sliding-panel-content,.sliding-panel-fade-screen').toggleClass(
        'is-visible');
      e.preventDefault();
    });
};

var $time = $('.time')

function timeColor() {
  $time.each(function() {
    var $scope = $(this)
    var num = $scope.text()
    if (num >= 30) {
      $scope.css("color", "orangered")
    }
    if (num < 30) {
      $scope.css("color", "darkorange")
    }
    if (num < 20) {
      $scope.css("color", "gold")
    }
    if (num < 10) {
      $scope.css("color", "forestgreen")
    }
  });
};

function tipFiller() {
  $('#party_tip').change(function() {
    this.form.submit()
  })
};

function currencySwitcher() {
  var currency = 'us'
  $('#currency-switch').change(function() {
    if (currency === 'euro') {
      $('.currency').each(function() {
        var amount = $(this).text().substr(1, this.length);
        usd = Math.ceil(amount * 1.1);
        $(this).text("$" + usd);
        $('.currency-EURO').toggle();
        $('.currency-USD').toggle();
      });
      currency = 'us'
    } else if (currency === 'us') {
      $('.currency').each(function() {
        var amount = $(this).text().substr(1, this.length);
        euros = Math.floor(amount * 0.91);
        $(this).text("€" + euros);
        $('.currency-EURO').toggle();
        $('.currency-USD').toggle();
      });
      currency = 'euro'
    }
  });
};
