<?php
    require_once 'header.php';
?>
<div id="content">

  <table id="card_table">
      <thead>
          <tr>
              <th style="width:18%; padding: 5px;"> Снимка:</th>
              <th style="width:18%; padding: 5px;"> Продукт:</th>
              <th style="width:18%; padding: 5px;"> Ед. цена:</th>
              <th style="width:18%; padding: 5px;"> Количество:</th>
              <th style="width:18%; padding: 5px;"> Общо:</th>
              <th style="width:10%; padding: 5px;"></th>
          </tr>
      </thead>
      <tbody id="tb">
        <?php echo Functions::getCardItems(); ?>
        <tr>
          <td style="text-align: right; padding-right:5px;" colspan="4">
            Крайна сума:
          </td>
          <td id="card_total">

          </td>
          <td>

          </td>
        </tr>
      </tbody>
  </table>
  <div class="row-fluid span12 no-left-margin">
      <input style="width:200px;  margin-right: 12px; margin-left: -8px;" type="submit" id="registerButton" value="Поръчай" class="btn nav-buttons pull-right">
      <input style="" type="submit" id="save_category" value="Запиши" class="btn nav-buttons pull-right">
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {

  function calculateTotal() {
    var all_totals = [];
    var currency = $('.item_number').first().data('currency');

    $('.item_number').each(function(){
      all_totals.push($(this).data('total'));
    });

    if (all_totals.length) {
      var total = all_totals.reduce(function(a, b) {
        return a + b;
      });
    } else {
      var total = 0;
    };
    $('#card_total').text(total + currency);
  }

  calculateTotal();

  $('.item_number').find('i').on('click', function(){

    var old_number = $(this).parent().data('number');
    var new_number = old_number;
    var price_per_item = $(this).parent().data('price_item');
    var item_total = $(this).parent().data('total');
    var currency = $(this).parent().data('currency');

    if($(this).hasClass('glyphicon-chevron-up')){
      new_number+=1;
    } else {
      new_number-=1;
    }

    if (new_number < 0) {
      return;
    };

    $(this).parent().data('number', new_number);
    $(this).parent().find('h4').text(new_number + 'бр.');
    $(this).parent().parent().find('.item_total').text(new_number*price_per_item + currency);
    $(this).parent().data('total', new_number*price_per_item);

    calculateTotal();

  });

  $('.remove_item').each(function(){
    $(this).on('click', function(){
      $(this).parent().remove();
      calculateTotal();
    });
  });

  $('#save_category').on('click', function(e){
    e.preventDefault();
    var items = {};

    $('.item_number').each(function(){
      var item_id = $(this).data('item_id');
      var number  = $(this).data('number');
      items[item_id] = number;
    });

    //console.log(items);

    $.ajax({
      type: 'post',
      url: "save_card.php",
      data: {
          items: JSON.stringify(items)
      },
      dataType: 'json'
    }).done(function(data){

        if (data == 1) {
          alert('Промените бяха записани успешно!');
        } else {
          alert('Възникна грешка при записването. Моля опитайте отново!');
        };

    });

  });

  $('#registerButton').on('click', function(e){
    e.preventDefault();
    var items = {};

    $('.item_number').each(function(){
      var item_id = $(this).data('item_id');
      var number  = $(this).data('number');
      items[item_id] = number;
    });

    //console.log(items);
    info_arr = {}

    $.ajax({
      type: 'post',
      url: "make_order.php",
      data: {
        items: JSON.stringify(items),
        info: JSON.stringify(info_arr)
      },
      dataType: 'json'
    }).done(function(data){

        if (data == 1) {
          alert('Промените бяха записани успешно!');
        } else {
          alert('Възникна грешка при записването. Моля опитайте отново!');
        };

    });

  });

  // $('.articles').on('click', function(){

  //     $.ajax({
  //       type: 'post',
  //       url: "article.php",
  //       data: {
  //           id: $(this).data("id")
  //       },
  //       dataType: 'html'
  //     }).done(function(data){
  //             if(data != false)
  //             {
  //                 $("#content").empty();
  //                 $("#content").append(data);
  //             }
  //             $("#pages").addClass("hidden");
  //     }); 
  // });

});
</script>

<?php
    require_once 'footer.php';
?>