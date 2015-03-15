	<?php

	?>	
		
				</div> 
			</div>
		<div class="row-fluid span12 big-container">
			<footer class="span12">
				<nav id="menu">
					<ul>
					</ul>
				</nav>
			</footer>
		</div>
		<script type="text/javascript">
		$( document ).ready(function() {

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
		});
		</script>
	</body>
</html>