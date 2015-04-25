<?php
    require_once 'header.php';
?>
<div id="content">
    <h4>Изпратени поръчки:</h4>
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
      <tbody id="">
        <?php echo Functions::getOrders('send'); ?>
        <tr>
          <td style="text-align: right; padding-right:5px;" colspan="4">
            Крайна сума:
          </td>
          <td id="">
            <?php echo Functions::getOrders('send', true); ?>
          </td>
          <td>

          </td>
        </tr>
      </tbody>
    </table>

    <h4>Получени поръчки:</h4>
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
      <tbody id="">
        <?php echo Functions::getOrders('received'); ?>
        <tr>
          <td style="text-align: right; padding-right:5px;" colspan="4">
            Крайна сума:
          </td>
          <td id="">
            <?php echo Functions::getOrders('received', true); ?>
          </td>
          <td>

          </td>
        </tr>
      </tbody>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function() {
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