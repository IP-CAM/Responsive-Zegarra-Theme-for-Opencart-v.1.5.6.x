function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

$(document).ready(function() {

	// Dropdown events
	$(document).on("mouseup", function(e) {
		var drops = $("#top-tools .dropdown");
		$.each(drops, function(index, value) {
			var el = $(value).parent();
			if( !$(el).is(e.target) && $(el).has(e.target).length === 0 )
			{
				el.removeClass("active");
				if ( $(window).width() >= 768 )
					$(value).fadeOut(125);
				else
					$(value).slideUp(125);
			}
		});
	});
	$("#top-tools > li > a").on("click", function(e) {
		e.preventDefault();
		var el = $(this).parent();
		el.toggleClass("active");
		if ( $(window).width() >= 768 )
			el.children(".dropdown").fadeToggle(125);
		else
			el.children(".dropdown").slideToggle(125);
	});

	// Product View events
	var list = $("#product-view .list");
	var grid = $("#product-view .grid");
	list.on("click", function(e) {
		$("#product-listing").addClass("list");
		list.addClass("active");
		grid.removeClass("active");
	});
	grid.on("click", function(e) {
		$("#product-listing").removeClass("list");
		list.removeClass("active");
		grid.addClass("active");
	});

	// Product page events
	var el = {
		ref: $('#product .meta input[name="quantity"]'),
		current: '1'
	};
	el.ref.on("keyup", function() {
		var current = el.ref.val();
		var length = current.length;

		if ( !isNumber(current) || current > 100)
		{
			el.ref.val(el.current);
			return;
		}

		if ( length > el.current.length ) length++;
		else if ( length < el.current.length ) length--;

		length = length < 1 ? 1 : length;

		el.ref.attr("size", length);
		el.current = current;
	});
});