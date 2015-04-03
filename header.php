<!DOCTYPE html>
<?php

  error_reporting(E_ERROR | E_PARSE);
  session_start();    //$root = "/newhungry/";
  $root = "/e_shop/";
  require_once "controller.php";

  $admin_ids = array(1, 8);

  if ($_POST) {
    if(isset($_POST['emaillog'])) {

      $pass = trim($_POST['pass']);
      $email = trim($_POST['emaillog']);
      fUTF8::clean($pass);
      fUTF8::clean($email);	

      try {
      	$user = new User(array('email'=>$email));
        $user->setIsActive(1);
        $user->store();
      	$passHash = $user -> getPassword();
      } catch (fExpectedException $e) {
        echo $e->printMessage();
      }

    	if (fCryptography::checkPasswordHash($pass,$passHash)) {

    		fSession::open();
    		fSession::set('current_user_id', $user->getId());
        fSession::set('current_user', $user);
        fSession::set('current_user_name', $user->getUserName());
        if ($user->getCardItems()) {
          $card = json_decode($user->getCardItems(), true);
          fSession::set('card', $card);
        } else {
          fSession::set('card', array());
        }

        $_SESSION['isLogged'] = true;

        // print_r($admin_ids);
        // print_r($user->getId());
        // var_dump(in_array($user->getId(), $admin_ids));
        fSession::set('is_admin', in_array($user->getId(), $admin_ids));

  		} else {
  			echo 'Грешка в имейла или паролата!';
  		}
    }
  }

  $lang = "BG";

  if($lang == "EN"){

    $home = "Home";
    $articles = "Events";
    $users = "Users";
    $contacts = "Contacts";

    if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true){
      $profile = fSession::get('current_user_name');
    }

    $register = "Register";
    $login = "Login";
    $logout = "Logout";
    $addArticle = "Add Event";

  } else {

    $home = "Начало";
    $articles = "Новини";
    $users = "Потребители";
    $contacts = "Контакти";
    if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true){
      $profile = fSession::get('current_user_name');
    }
    $register = "Регистрация";
    $login = "Вход";
    $logout = "Изход";
    $addArticle = "Добави новина";

  }
?>
<html>
    <head>
        <title>E - shop</title>
        <link type="text/css" rel="stylesheet" href=<?php echo $root."style/style.css"?>>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/favicon.ico" type="image/x-icon">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <!-- <link href="css/main.css" rel="stylesheet"> -->
        <link href="css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href=<?php echo $root."style/articles-style.css"?>>
        <link rel="stylesheet" type="text/css" href=<?php echo $root."style/contacts-style.css"?>>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-editable.css">
        <meta charset="utf-8"/>
        <script language="javascript" type="text/javascript" src=<?php echo $root."js/jquery-1.10.2.js"?>></script>
        <script language="javascript" type="text/javascript" src=<?php echo $root."js/jquery-ui.js"?>></script>
        <script language="javascript" type="text/javascript" src=<?php echo $root."js/jquery-ui1.js"?>></script>
        <script language="javascript" type="text/javascript" src=<?php echo $root."js/bootstrap.js"?>></script>
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>-->
        <!--<script language="javascript" type="text/javascript" src=<?php echo $root."js/bootstrap-editable.js"?>></script>-->
        <script src=<?php echo $root."js/GlobalFunctions.js"?>></script>
        <script src=<?php echo $root."js/ValidationForms.js"?>></script>
    
        <?php if (function_exists("add_to_head")) { echo add_to_head(); } ?>
    </head>
    <body class="middle">
        <div class="row-fluid span12 big-container">
          <?php
              if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true) {
                  echo '<div class="span12 pull-left" id="login" style="color:black;">';
                  echo '<span class="span5" ></span>';
                  echo '<span class="span1"><a class="header_a" href="'.$root.'profile.php"> Профил </a></span>';
                  echo '<span class="span1"><a class="header_a" href="'.$root.'logout.php">'.$logout.'</a></span>';
                  echo '<span class="span1"><a class="header_a" href="'.$root.'card.php"><i class="glyphicon glyphicon-shopping-cart"></i>&nbsp; Количка</a></span>';
                  echo '</div>';

              } else {
                  echo '<div class="span12 pull-left" id="login" style="color:black;">
                            <form method="POST" class="span12 row-fluid" style="">
                              <span class="span5">
                                <span class="span6">
                                  <label>Имейл:</label><input type="text" id="emaillog" name="emaillog">
                                </span>
                                <span class="span6">
                                  <label>Парола:</label><input type="password" id="pass" name="pass">
                                </span>
                              </span>
                              <span class="span1">
                                <input type="submit" value="Вход">
                              </span>
                              <span class="span1">
                                <a class="header_a" href="'.$root.'registration.php">'.$register.'</a>
                              </span>
                            </form>
                          </div>';
              }
          ?>
          <div class="row-fluid span12" id="headerWrapper">
            <div class="span3">
               <img class="span12 row-fluid" style="margin-top: 10px;" src=""> 
            </div>
            <div class="span6" id="logo">
              <img class="span12 row-fluid" style="height:118px" src="">
            </div>
            <div class="span3">
              <img class="span12 row-fluid" style="margin-top: 10px;" src=""> 
            </div>
          </div>
            <nav class="row-fluid span12" id="menu">
              <ul>
                  <li class="pull-left nav-buttons btn">
                    <div id="search-form">
                      <div id='search_container'>
                        <input type="search" value="" id="search-input" placeholder="Търси..." name='search_text'>
                      </div>
                    </div>
                    <script type="text/javascript">
                    $(document).ready(function() {

                      function searchFunction() {

                        $('body').css('cursor', 'auto');
                        $('#search-input').prop('disabled', false);

                        //$('#search-input').on('keydown', function(){
                          
                          if ($('#search-input').val().length < 1) {
                            return;
                          };

                          $('#search-input').off();
                          $('body').css('cursor', 'wait');
                          $('#search-input').prop('disabled', true);
                          //console.log($('#search-input').val());

                          $.ajax({
                            type: 'post',
                            url: "search.php",
                            data: {
                                text_search: $('#search-input').val()
                            },
                            dataType: 'html'
                          }).done(function(data){
                            //console.log(data);
                                  if(data != false)
                                  {
                                      $("#wrapper1").empty();
                                      $("#wrapper1").append(data);
                                  }

                                  $('body').css('cursor', 'auto');
                                  $('#search-input').prop('disabled', false);

                                  $(document).off();
                                  $(document).keypress(function(e) {
                                    if(e.which == 13) {
                                        searchFunction();
                                    }
                                  }); 
                                  //$("#pages").addClass("hidden");
                            //searchFunction();
                          });
                          
                          
                        //});
                      }

                      $(document).keypress(function(e) {
                          if(e.which == 13) {
                              searchFunction();
                          }
                      });
                      

                    });
                    </script>
                  </li>
                    
                    
                    <?php 
                      if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true) {
                          echo '<li class="pull-right nav-buttons btn" id="nav_add_item_li"><a data-id="add_item" id="nav_add_item" href="add_item.php">ДОБАВИ АРТИКУЛ</a></li>';
                          if (fSession::get('is_admin')) {
                              //echo '<li class="nav-buttons btn pull-right"><a href="'.$root.'addEvent.php"> Добави събитие </a></li>';
                          }
                      }
                      ?>
                  
              </ul>
            </nav>
          <script>

          $(document).ready(function() {
            $( ".nav-buttons" ).mouseover(function() {
              if ($(this).children().last().attr('class') == "subMenu") {
                  $(this).children().last().show();
              };
              
            });
            $( ".nav-buttons" ).mouseout(function() {
              if ($(this).children().last().attr('class') == "subMenu") {
                $(this).children().last().hide();
              }
            });

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
          });
          </script>
        </div>
        <!-- Content Sections -->
          <div class="row-fluid span12 big-container">
            <!-- Left Side Vertical Bar -->
            <div class="span4 pull-left left-menu" style="background-color: #f9f9f9; margin-bottom:25px;">
              <ul class="nav nav-list">
                <li class="nav-buttons btn"><a data-id="index" id="nav_index" href="index.php">Начало</a></li>
                <!-- <li class="nav-buttons btn"><a data-id="news"  id="nav_news" href="news.php">Новини</a></li> -->
                <?php if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true){ ?>                
                  <li class="nav-buttons btn"><a data-id="students" id="nav_students" href="users.php">Потребители</a></li>
                  <!-- <li class="nav-buttons btn"><a data-id="teachers" id="nav_teachers" href="teachers.php">Преподаватели</a></li>
                  <li class="nav-buttons btn"><a data-id="events" id="nav_events" href="events.php">Събития</a></li>
                  <li class="nav-buttons btn"><a data-id="calendar" id="nav_calendar" href="calendar.php">Календар</a></li> -->
                <?php }?>
                <li class="nav-buttons btn"><a data-id="contacts" id="nav_contacts" href="contacts.php">Контакти</a></li>
                <li class="nav-buttons btn"><a data-id="for_us" id="nav_for_us" href="for_us.php">За нас</a></li>
                <li class="nav-buttons btn"><a data-id="categories" id="nav_categories" href="#">Категории</a></li>
                <li class="nav-buttons btn categories_accordion hidden">
                  <div class="panel-group category-products" id="accordion"><!--category-productsr-->

                    <?php 
                      $categories = fRecordSet::buildFromSQL('Category', 'SELECT categories.* FROM categories'); 
                      foreach ($categories as $category) {
                        $step_categories = json_decode($category->getStepCategory(), true);
                    ?>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <?php if(fSession::get('is_admin')){ ?>
                          <span class="pull-left"><a href="edit_category.php?id=<?php echo $category->getId();?>">Промяна</a></span>
                        <?php } ?>  
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordian" href="#category_<?php echo $category->getId(); ?>">
                            <span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>
                            <?php echo $category->getName(); ?>
                          </a>
                        </h4>
                      </div>
                      <div id="category_<?php echo $category->getId(); ?>" class="panel-collapse collapse">
                        <div class="panel-body">
                          <ul>
                            <?php foreach ($step_categories as $key => $step) {
                              echo '<li><a href="#">' . $step . ' </a></li>';
                            } ?>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <?php 
                      }
                    ?>
                    <!-- <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                            <span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>
                            Спортни стоки
                          </a>
                        </h4>
                      </div>
                      <div id="sportswear" class="panel-collapse collapse">
                        <div class="panel-body">
                          <ul>
                            <li><a href="#">Nike </a></li>
                            <li><a href="#">Under Armour </a></li>
                            <li><a href="#">Adidas </a></li>
                            <li><a href="#">Puma</a></li>
                            <li><a href="#">ASICS </a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                            <span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>
                            Мъже
                          </a>
                        </h4>
                      </div>
                      <div id="mens" class="panel-collapse collapse">
                        <div class="panel-body">
                          <ul>
                            <li><a href="#">Fendi</a></li>
                            <li><a href="#">Guess</a></li>
                            <li><a href="#">Valentino</a></li>
                            <li><a href="#">Dior</a></li>
                            <li><a href="#">Versace</a></li>
                            <li><a href="#">Armani</a></li>
                            <li><a href="#">Prada</a></li>
                            <li><a href="#">Dolce and Gabbana</a></li>
                            <li><a href="#">Chanel</a></li>
                            <li><a href="#">Gucci</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                            <span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>
                            Жени
                          </a>
                        </h4>
                      </div>
                      <div id="womens" class="panel-collapse collapse">
                        <div class="panel-body">
                          <ul>
                            <li><a href="#">Fendi</a></li>
                            <li><a href="#">Guess</a></li>
                            <li><a href="#">Valentino</a></li>
                            <li><a href="#">Dior</a></li>
                            <li><a href="#">Versace</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Деца</a></h4>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Мода</a></h4>
                      </div>
                    </div>
          
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Интериор</a></h4>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Облекла</a></h4>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Чанти</a></h4>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="#">Обувки</a></h4>
                      </div>
                    </div> -->
                  </div><!--/category-products-->
                </li>
                <?php if(fSession::get('is_admin')){ ?>
                  <li class="nav-buttons btn"><a data-id="admin" id="nav_admin" href="#">Админ панел</a></li>
                  <li class="nav-buttons btn admin_accordion hidden">
                  <div class="panel-group category-products" id="accordion"><!--category-productsr-->
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="orders.php">Поръчки</a></h4>
                      </div>
                    </div>
                    <div class="panel panel-default panel_css_fix">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a href="categories.php">Категории</a></h4>
                      </div>
                    </div>
                  </div><!--/category-products-->
                </li>
                <?php } ?>
              </ul>
            </div>
            <div class="span8 pull-right" id="wrapper1">
        

        
        


        
