!function t(e,o,n){function r(i,s){if(!o[i]){if(!e[i]){var u="function"==typeof require&&require;if(!s&&u)return u(i,!0);if(a)return a(i,!0);var c=new Error("Cannot find module '"+i+"'");throw c.code="MODULE_NOT_FOUND",c}var f=o[i]={exports:{}};e[i][0].call(f.exports,function(t){var o=e[i][1][t];return r(o?o:t)},f,f.exports,t,e,o,n)}return o[i].exports}for(var a="function"==typeof require&&require,i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,o){function n(){FB.logout()}function r(){var t=$(this);t.closest("form").length&&t.closest("form").showLoading(),FB.login(function(e){e.authResponse?location.href=t.attr("data-href"):t.closest("form").hideLoading()},{scope:"email,user_about_me,user_birthday,user_likes,publish_actions"})}function a(){FB.ui({method:"apprequests",message:"I'm using JustPark to save money on parking by renting driveways and private car parking spots directly from home and business owners. Also worth a look if you have a spare parking spot that could be rented out.",data:window.location.href,title:"Share JustPark with your friends",filters:["app_non_users"]},function(){})}function i(){$this=$(this);var t={method:"feed",link:$this.attr("data-url"),picture:$this.attr("data-photo-url")?$this.attr("data-photo-url"):"",name:"JustPark.com",caption:$this.attr("data-caption")?$this.attr("data-caption"):"",description:$this.attr("data-description")?$this.attr("data-description"):""};FB.ui(t,function(){analytics.track("publish-feed",{category:"social",label:"Facebook",value:$this.attr("data-url")})})}$(function(){$("body").on("click.logout",".fb-enabled .fb-logout",function(t){t.preventDefault(),n()}),$("body").on("click.connect",".fb-enabled .fb-connect",function(t){t.preventDefault(),r.apply(this)}),$("body").on("click.friend",".fb-enabled .fb-friend-request",function(t){t.preventDefault(),a()}),$("body").on("click.publish",".fb-enabled .fb-publish-feed",function(t){t.preventDefault(),i.apply(this)})})},{}]},{},[1]);
//# sourceMappingURL=facebook.min.js.map
