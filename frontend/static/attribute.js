$(document).ready(function () {
  $(".choose-size").hide();

  $(".choose-color").on("click", function () {
    $(".choose-color").removeClass("focused");
    $(this).addClass("focused");

    var _color = $(this).attr("data-color");

    $(".choose-size").hide();
    $(".color" + _color).show();
    $(".color" + _color)
      .first()
      .addClass("active");
    var _price = $(".color" + _color)
      .first()
      .attr("data-price");
    $(".product-price").text(_price);
  });

  $(".choose-size").on("click", function () {
    $(".choose-size").removeClass("active");
    $(this).addClass("active");

    var _price = $(this).attr("data-price");
    $(".product-price").text(_price);
  });

  $(".choose-color").first().addClass("focused");
  var _color = $(".choose-color").first().attr("data-color");
  var _price = $(".choose-size").first().attr("data-price");
  $(".color" + _color).show();
  $(".color" + _color)
    .first()
    .addClass("active");

  $(".product-price").text(_price);
});
