/*price range*/

 // $('#sl2').slider();

	// var RGBChange = function() {
	//   $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	// };	
		
/*scroll to top*/

$(document).ready(function(){
	// $(function () {
	// 	$.scrollUp({
	//         scrollName: 'scrollUp', // Element ID
	//         scrollDistance: 300, // Distance from top/bottom before showing element (px)
	//         scrollFrom: 'top', // 'top' or 'bottom'
	//         scrollSpeed: 300, // Speed back to top (ms)
	//         easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	//         animation: 'fade', // Fade, slide, none
	//         animationSpeed: 200, // Animation in speed (ms)
	//         scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
	// 				//scrollTarget: false, // Set a custom target element for scrolling to the top
	//         scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	//         scrollTitle: false, // Set a custom <a> title if required.
	//         scrollImg: false, // Set true to use image
	//         activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	//         zIndex: 2147483647 // Z-Index for the overlay
	// 	});
	// });

  var scope = '#search_container ';
  $(scope + '#item_category').on('change', function(){
      var step_categories = $(scope + '#item_category option:selected').data('step_category').split('@');
      $(scope + '#item_step_category').empty();
      for (var i = step_categories.length - 1; i >= 0; i--) {
          $(scope + '#item_step_category').append('<option value="' + step_categories[i] + '">' + step_categories[i] + '</option>');
      };
  });

  $(scope + '#item_category').trigger('change');

  function getItemsAjax(text, category, step_category) {
    //alert('111111111111111111111111111');
    // $('body').css('cursor', 'auto');
    // $('#search-input').prop('disabled', false);

    //$('#search-input').on('keydown', function(){
      
      
      $('body').css('cursor', 'wait');
      $('#search-input').prop('disabled', true);
      //console.log($('#search-input').val());

      $.ajax({
        type: 'post',
        url: "search.php",
        data: {
            text_search: text,
            category: category,
            step_category: step_category
        },
        dataType: 'html'
      }).done(function(data){
          //console.log(data);
          if(data != false){
              $("#wrapper1").empty();
              $("#wrapper1").append(data);
          }

          $('body').css('cursor', 'auto');
          $('#search-input').prop('disabled', false);

          $(document).off();
          $(document).keypress(function(e) {
            if(e.which == 13) {
                e.preventDefault();
                if ($('#search-input').val().length < 1) {
              return;
            };

            $('#search-input').off();
            getItemsAjax($('#search-input').val(), $('#search_container #item_category').val(), $('#search_container #item_step_category').val());
            }
          });

          productsBinds();

          // $('.step_category_a').each(function(){
          //   $(this).off();
          //   $(this).click(function(e){
          //     e.preventDefault();
          //     var category_id = $(this).attr('data-category_id');
          //     var step_category = $(this).attr('data-name');
          //     getItemsAjax('', category_id, step_category);
          //   });
          // });
            
      });
      
      
    //});
  }

  $(document).keypress(function(e) {
      if(e.which == 13) {
          e.preventDefault();
          if ($('#search-input').val().length < 1) {
            return;
          };

          $('#search-input').off();
          getItemsAjax($('#search-input').val(), $('#search_container #item_category').val(), $('#search_container #item_step_category').val());
      }
  });

  $('.step_category_a').each(function(){
    //$(this).off();
    $(this).on('click', function(e){
      //e.preventDefault();
      var category_id = $(this).attr('data-category_id');
      var step_category = $(this).attr('data-name');
      getItemsAjax('', category_id, step_category);
    });
  });

  // $('.category_a').parent().parent().each(function(){
  //   $(this).off('mousedown');
  //   $(this).on('mousedown', function(e){
  //     e.preventDefault();
  //     var category_id = $(this).attr('data-category_id');
  //     getItemsAjax('', category_id, '');
  //   });
  // });
                      
	// $( ".nav-buttons" ).mouseover(function() {
 //      if ($(this).children().last().attr('class') == "subMenu") {
 //          $(this).children().last().show();
 //      };
      
 //    });
 //    $( ".nav-buttons" ).mouseout(function() {
 //      if ($(this).children().last().attr('class') == "subMenu") {
 //        $(this).children().last().hide();
 //      }
 //    });

    $('#login-trigger').on('click', function(e){

      e.preventDefault();

      if ($(this).attr('data-open') == 0) {
        $('#login-aside').show();
        $('#right-logo').hide();
        $(this).css('color', 'black');
        $(this).attr('data-open', 1);
      } else {
        $('#login-aside').hide();
        $('#right-logo').show();
        $(this).css('color', 'white');
        $(this).attr('data-open', 0);
      };
      

    });

	var open_menu = $('#nav_trigger_input').val();

 	// if (open_menu != undefined && open_menu != '') {
 	// 	$('#nav_' + open_menu).css('background-color', 'rgb(123, 132, 144) !important;');
 	// 	$('#nav_' + open_menu).css('color', '#fff !important');
 	// };

 	$("#nav_categories").on('click', function(){

 		if ($('.categories_accordion').hasClass('hidden')) {
 			$('.categories_accordion').removeClass('hidden');
 			$(this).parent().parent().find('.nav-buttons').not('.categories_accordion').not('.admin_accordion').addClass('hidden');
 			$("#nav_categories").parent().removeClass('hidden');
 			$("#nav_categories").text('Назад');
 		} else {
 			$('.categories_accordion').addClass('hidden');
 			$(this).parent().parent().find('.nav-buttons').not('.categories_accordion').not('.admin_accordion').removeClass('hidden');
 			$("#nav_categories").text('Категории');
 		};
 	});

 	$("#nav_admin").on('click', function(){

 		if ($('.admin_accordion').hasClass('hidden')) {
 			$('.admin_accordion').removeClass('hidden');
 			$(this).parent().parent().find('.nav-buttons').not('.admin_accordion').not('.categories_accordion').addClass('hidden');
 			$("#nav_admin").parent().removeClass('hidden');
 			$("#nav_admin").text('Назад');
 		} else {
 			$('.admin_accordion').addClass('hidden');
 			$(this).parent().parent().find('.nav-buttons').not('.admin_accordion').not('.categories_accordion').removeClass('hidden');
 			$("#nav_admin").text('Админ панел');
 		};
 		
 	});

 	function productsBinds() {

		$('.productinfo').each(function(){
			var item_id = $(this).attr('data-item_id');
			$(this).children().not('a').off('click');
			$(this).children().not('a').on('click', function(){
				window.location.href = "view_item.php?item_id=" + item_id;
			});
		});

		var new_height = ($('.img_articles').height() + 50) + 'px';
		if ($('.img_articles').height() > 480) {
			//console.log(new_height);
			$('#content').css('height', new_height);
		};

		$('.add-to-cart').off('click')
		$('.add-to-cart').on('click', function(){
			var name   = $(this).attr('data-name');
			var logged = $(this).attr('data-logged_user');
			
			if (logged == '0') {
				alert('За да добавите артикул в количката моля влезте в системата!');
				return;
			};
			var number = prompt('Вие избрахте да добавите в количката ' + name + ', моля посочете желаната от вас бройка!');
			if (number.trim() == '') {
				return;
			};
			if(isNaN(number) || number < 1 || number % 1 !== 0){
				$(this).trigger('click');
			} else {
				$.ajax({
			        type: 'post',
			        url: "add_item_to_card.php",
			        data: {
			            item_id: $(this).data("item_id"),
			            number: number
			        },
			        dataType: 'JSON'
			      }).done(function(data){
			            if (data == 1) {
			            	alert('Артикулът е успешно добавен в количката!');
			            };
			      });
			}
			//console.log(number);
		});
 	}

 	productsBinds();

});
