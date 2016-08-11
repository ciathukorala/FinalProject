function formatDateForDateInput(date)
{
  function pad(num, len) {
    var noZeroes = num.toString().length;
    return Array(len + 1 - noZeroes).join('0') + num
  }

  return date.getUTCFullYear() +
    '-' + pad(date.getUTCMonth() + 1,2 ) +
    '-' + pad(date.getUTCDate(),2 ) +
    'T' + pad(date.getUTCHours(), 2) +
    ':' + pad(date.getUTCMinutes(), 2) +
    ':' + pad(date.getUTCSeconds(), 2);
}

$(function () {
    if (PAMH.MapsAvailable) {
        $("#geo-location-area button").on("click", function(event){
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position){
                    $("#id_latlng").val(position.coords.latitude+ "," + position.coords.longitude);
                    $("#geo-location-form").submit();
                }, function(){
                    $("#geo-location-area").fadeOut();
                });
            } else {

            }
            return true;
        });
    }

    $("#home-form").on("submit", function (c) {
        if (!$("#id_start_date_time").val() || !$("#id_end_date_time").val()) {
            alert("Please enter the dates and times you need to park.");
            return false;
        }

        var start_date = new Date($("#id_start_date_time").val());
        var end_date = new Date($("#id_end_date_time").val());
        var now = new Date();

        if (end_date < start_date){
            alert("Your parking ends before it begins. Time travel isn't yet possible!");
            return false;
        }

        if (start_date < now){
            var newDateObj = new Date(now.getTime() + 300);
            $("#id_start_date_time").val(formatDateForDateInput(newDateObj));
        }

        return true;
    });

    $("#id_end_date_time").change(function (c) {
        $(this).data("user-set-time", true);
    });

    $("#id_start_date_time").change(function (c) {
        if (! $("#id_start_date_time").val()) {
            return false;
        }

        var start_date = new Date($("#id_start_date_time").val());
        var end_date = new Date(start_date.getTime() + 30 * 60000);

        if (! $("#id_end_date_time").data("user-set-time")) {
            $("#id_end_date_time").val(formatDateForDateInput(end_date));
        }

        return true;
    });

    $(function () {
        if ($("body").hasClass("home")) {
            var start_date = new Date($("#id_start_date_time").val());
            var end_date = new Date(start_date.getTime() + 30 * 60000);

            $("#id_end_date_time").val(formatDateForDateInput(end_date));
        }
    });


    $("#check-availability").on("click", function (c) {
        c.preventDefault();
        if (!$("#id_start_date_time").val() || !$("#id_end_date_time").val()) {
          alert("Please enter the dates and times you need to park.");
          return false;
        }

        var start_date = new Date($("#id_start_date_time").val());
        var end_date = new Date($("#id_end_date_time").val());
        var now = new Date();

        if (end_date < start_date) {
          alert("Your parking ends before it begins. Time travel isn't yet possible!");
          return false;
        }

        if (start_date < now){
            var newDateObj = new Date(now.getTime() + 300);
            $("#id_start_date_time").val(formatDateForDateInput(newDateObj));
        }

        var b = $(this).closest("form");
        var a = $("#id_pid").val();

         $.ajax({
            type: "get",
            url: "/parking-spaces/" + a + "/calculate-pricing-availability/",
            dataType: "json",
            data: b.serialize(),
            beforeSend: function(){
                b.showLoading();
            }
        })
         .done(function (response, status, xhr) {
            if (response.availability.status != "available") {
                alert("Sorry but this space has no availability during this period")
            } else {
                b.submit();
            }
        })
        .always(function(){
            b.hideLoading();
        });
    });


    $("#show-credit-payment-container").on("click", function(){
        $(this).hide();
        $("#credit-payment-container").slideDown();
        $(".sticky-footer").removeClass("sticky-footer").css({
          'padding-top': 0
        });

        $('.js-section-body').css({
          'padding-bottom': '1.5rem',
          'margin-bottom': '-1.5rem'
        });

        $('html, body').animate({
            scrollTop: $("#credit-payment-container").offset().top
        }, 2000);
    });


    $("#add-payment-method").on("click", function (e) {
        e.preventDefault();
        $("#current-payment-container").fadeOut(function(){
            $(this).remove();
        });
        $("#update-payment-method").slideDown();
    });

    $("#add-address").on("click", function (e) {
        e.preventDefault();
        $("#current-address-container").fadeOut(function(){
            $(this).remove();
        });
        $("#new-address-container").slideDown();
    });


    $("#load-reviews").on("click", function (event) {
        event.preventDefault();
        var e = $(this);
        $.ajax({
            type: "GET",
            url: e.attr("data-href"),
            dataType: "html",
            data: {
                start: e.attr("data-start")
            },
            beforeSend: function () {
                e.attr("disabled", "disabled")
            },
            success: function (e, t) {
                $("#reviews-list").append(e)
            },
            error: function () {
                e.before('<div class="alert alert-info">No more reviews to show you</div>');
                e.remove()
            },
            complete: function () {
                var t = parseInt(e.attr("data-start")) + parseInt(e.attr("data-rows"));
                e.attr("data-start", t);
                e.removeAttr("disabled")
            }
        })
    });
});


if (PAMH.MapsAvailable) {
    var place_result;
    (function (e) {
        e.searchAutocomplete = function (t) {
            var n = t;
            n.settings = {
                container: t,
                place_result: null
            };
            n.init = function () {
                var t = null;
                n.settings.container.keyup(function () {
                    if (n.settings.container.val()=="") {
                        e("input.autocomplete").val("")
                    }

                    if (e(".ac_coords").val()) {
                        e("input.autocomplete").val("")
                    }
                });

                autocomplete = new google.maps.places.Autocomplete(n.settings.container.get(0), {
                    bounds: t
                });

                n.settings.container.on("keydown", function(e) {
                    if (e.which == 13) {
                        e.preventDefault();

                        if (n.settings.container.val() && n.settings.container.hasClass("search-form-reveal")) {
                            n.settings.container.closest("form").addClass("form-open");
                            $("#search-form-reveal").animate({'opacity':'1'}, 500);
                        }

                        if (n.settings.container.val()) {
                            n.settings.container.closest("form").find("[name='start_date']").focus();
                        }

                    }
                });

                e("<input />", {
                    type: "hidden",
                    name: "coords",
                    "class": "autocomplete ac_coords",
                    value: PAMH.InitialCoords ? PAMH.InitialCoords.join(",") : ""
                }).insertAfter(n.settings.container);
                e("<input />", {
                    type: "hidden",
                    name: "source",
                    "class": "autocomplete ac_source",
                    value: "none"
                }).insertAfter(n.settings.container);
                e("<input />", {
                    type: "hidden",
                    name: "location_name",
                    "class": "autocomplete ac_location_name",
                    value: PAMH.InitialLocationName
                }).insertAfter(n.settings.container);
                e("<input />", {
                    type: "hidden",
                    name: "reference",
                    "class": "autocomplete ac_reference",
                    value: "default"
                }).insertAfter(n.settings.container);
                e("<input />", {
                    type: "hidden",
                    name: "ac_country",
                    "class": "autocomplete ac_country",
                    value: PAMH.localCountry ? PAMH.localCountry : ""
                }).insertAfter(n.settings.container);
                e("<input />", {
                    type: "hidden",
                    "class": "autocomplete places_attribution"
                }).insertAfter(n.settings.container);


                google.maps.event.addListener(autocomplete, "place_changed", function () {
                    place_result = autocomplete.getPlace();

                    if (place_result.geometry) {
                        e(".ac_coords").val(place_result.geometry.location.lat() + "," + place_result.geometry.location.lng()).change();
                        e(".ac_location_name").val(place_result.name);
                        e(".ac_reference").val(place_result.reference);
                        e(".ac_source").val("autocomplete");
                        e(place_result.address_components).each(function () {
                            if (this.types.indexOf("country") > -1) {
                                e(".ac_country").val(this.short_name);
                                return false
                            }
                        });
                        if (n.settings.container.hasClass("auto-submit")) {
                            n.settings.container.closest("form").submit()
                        }

                        if (n.settings.container.hasClass("search-form-reveal")) {
                            n.settings.container.closest("form").addClass("form-open");
                            $("#search-form-reveal").animate({'opacity':'1'}, 500);
                        }
                    }
                });
            };
            n.init();
            return n;
        };
        e.fn.searchAutocomplete = function () {
            return new e.searchAutocomplete(this)
        }
    })(jQuery);
    $(function () {
        $(".places-autocomplete").each(function (e, t) {
            $(t).searchAutocomplete();
        });
    })
}


(function (e) {
    e.fn.formSelectionGroups = function () {
        var t = [];
        e(this).each(function (n, r) {
            t.push(e(r).attr("name").replace("[]", ""))
        });
        t = e.unique(t);
        e.each(t, function (t, n) {
            var r = e("input.selection-chooser[type=radio][name^=" + n + "]");
            var i = e(".selection-container." + n);
            var s = r.filter(":checked");
            if (s) {
                var o = r.index(s[0])
            } else {
                var o = 0
            }
            e(".selection-container." + n + ":not(:eq(" + o + "))").hide();
            r.change(function () {
                var t = r.index(e(this));
                e(".selection-container." + n + ":not(:eq(" + t + "))").hide();
                e(".selection-container." + n + ":eq(" + t + ")").slideDown()
            });
            e("input.selection-chooser[type=radio][name^=" + n + "]:eq(" + o + ")").change()
        })
    }
})(jQuery);

$(function () {
  $("input.selection-chooser[type=radio]").formSelectionGroups()
});

$(function () {
  if ($('input[name="account_type[]"]:radio').length < 1) {
    return;
  }

  var $node = $('.container');
  var $newAccount = $('#account_type-no_account');
  var $hasAccount = $('#account_type-has_account');
  var $newAccountRadio = $('input[value=no_account]:radio', $node);
  var $hasAccountRadio = $('input[value=has_account]:radio', $node);
  var $newAccountContainer = $('.fields-container', $newAccount);
  var $hasAccountContainer = $('.fields-container', $hasAccount);

  // Detach the code which currently applies the animation to the
  // login/signup form.
  $('input[name="account_type[]"]:radio', $node).off('change');
  $('input[name="account_type[]"]:radio', $node).off('click');
  $('.selection-container.account_type', $node).unbind();

  // Redisplay on login or signup option change.
  $('input[name="account_type[]"]:radio', $node).on('change', function() {
    var $this = $(this);

    if ('no_account' === $this.val()) {
      $hasAccount.fadeOut("fast", function() {
        $newAccount.fadeIn("fast", function() {
          $hasAccountContainer.html('');
        });
      });
    }

    if ('has_account' === $this.val()) {
      $newAccount.fadeOut("fast", function() {
        $hasAccount.fadeIn("fast", function() {
          $newAccountContainer.html('');
        });
      });
    }
  });

  // Display the new account section by default.
  var $show = $newAccountRadio;

  // If the has account option is clicked (for example because the
  // page was reloaded with validation errors in has_account) we show
  // the login section.
  if ($hasAccountRadio.is(':checked')) {
    $show = $hasAccountRadio;
  }

});


$(function() {
  if ($('.js-listing-directions').length) {
    var $node       = $('.js-listing-directions');
    var source      = $node.data('source');
    var destination = $node.data('destination');
    var title       = $node.data('destination-title');
    var baseUrl     = "http://maps.google.com/maps?f=d&amp;saddr={source}&amp;daddr={destination}";

    // Allows aliasing of the coordinates in Google Maps.
    baseUrl = baseUrl.replace('{destination}', encodeURIComponent(title) + '@{destination}');

    // Geocoding is supported on the user's browser.
    if ("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = [position.coords.latitude, position.coords.longitude];
        // We have the lat/lng of the source destination provided by
        // the browser.
        $node.attr(
          'href',
          baseUrl
            .replace('{source}', pos.join(','))
            .replace('{destination}', encodeURIComponent(destination))
        );
      }, function() {
        // Geocoding has failed or the user didn't authorise us to get
        // their location.
        $node.attr(
          'href',
          baseUrl
            .replace('{source}', encodeURIComponent(source))
            .replace('{destination}', encodeURIComponent(destination))
        );
      });
    } else {
      // The user's browser doesn't support geocoding.
      //
      // We have a source location, this is either the user's home
      // postcode, or in lack of that the city whence the listing's
      // located.
      $node.attr(
        'href',
        baseUrl
          .replace('{source}', encodeURIComponent(source))
          .replace('{destination}', encodeURIComponent(destination))
      );
    }
  }
});
