<?php
error_reporting(E_ERROR | E_PARSE);
session_start();    //$root = "/newhungry/";

//var_dump($_SERVER['SERVER_NAME']);

if ($_SERVER['SERVER_NAME'] == 'localhost') {
    define(DB, 'e_shop');
    define(DB_USER, 'root');
    define(DB_PSWD, '');
    define(PATH_APP, "/e_shop/");
} else {
    define(DB, 'cashtrac_e_shop');
    define(DB_USER, 'cashtrac');
    define(DB_PSWD, 'txj)3vTA#W9G');
    define(PATH_APP, "");
}

$root = PATH_APP;

include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fException.php';
include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fUnexpectedException.php';
include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fExpectedException.php';
include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fActiveRecord.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fAuthorization.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fAuthorizationException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fBuffer.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fCRUD.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fCache.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fConnectivityException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fCookie.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fCore.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fCryptography.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fDatabase.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fDate.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fDirectory.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fEmail.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fEmptySetException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fEnvironmentException.php';  include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fFile.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fFilesystem.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fGrammar.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fHTML.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fImage.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fJSON.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fLoader.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fMailbox.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fMessaging.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fMoney.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fNoRemainingException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fNoRowsException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fNotFoundException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fNumber.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORM.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMColumn.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMDatabase.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMDate.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMFile.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMJSON.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMMoney.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMOrdering.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMRelated.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMSchema.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fORMValidation.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fPagination.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fProgrammerException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fRecordSet.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fRequest.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fResult.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSMTP.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSQLException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSQLSchemaTranslation.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSQLTranslation.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSchema.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fSession.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fStatement.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fTemplating.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fText.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fTime.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fTimestamp.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fURL.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fUTF8.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fUnbufferedResult.php';  include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fUpload.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fValidation.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fValidationException.php'; include 'libs/flourishlib-flourish-classes-0.9.0-0-geb2d48b/flourish/fXML.php'; 

//fORMDatabase::attach(new fDatabase('mysql', 'ihriulr4_games_for_brains', 'ihriulr4', 'xYY!5eu5s:FQ'));
fORMDatabase::attach(new fDatabase('mysql', DB, DB_USER, DB_PSWD));


class User extends fActiveRecord{


}

class Item extends fActiveRecord{


}

class Order extends fActiveRecord{


}

class Category extends fActiveRecord{


}

class Question extends fActiveRecord{


}


class Functions {

    public static function getLoggedPersonByEmail($email){
		try{
			$loggedUser = new User(array("email" => $email));
			$loggedUserId = $loggedUser->getId();
		} catch (fExpectedException $e) {
		    echo $e->printMessage();
		}
		return $loggedUser;
	}

    public static function printCategoriesTabs(){

        $categories = fRecordSet::buildFromSQL('Category', 'SELECT categories.* FROM categories');
        $tabs = '';
        $first = true;
        foreach ($categories as $category) {

            if ($first) {
                $tabs .= '<li class="active"><a href="#' . $category->getId() . '" data-toggle="tab">' . $category->getName() . '</a></li>';
                $first = false;
            } else {
                $tabs .= '<li><a href="#' . $category->getId() . '" data-toggle="tab">' . $category->getName() . '</a></li>';
            }
        }

        return $tabs;
    }

    /*

    */
    public static function printItemsWithCategories($search_params = array()){

        $logged = 0;
        if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true) {
            $logged = 1;
        }
        //var_dump($_SESSION['isLogged']);
        $category_sql = '';
        if (isset($search_params['category'])) {
            $category_sql = ' WHERE id=' . $search_params['category'];
        }

        $step_category_sql = '';
        if (isset($search_params['step_category'])) {
            $step_category_sql = " AND step_category='" . $search_params['step_category'] . "'";
        }

        $text_search = '';
        if (isset($search_params['text'])) {
            $text_search = " AND (`name` LIKE '%" . $search_params['text'] . "%' OR `info` LIKE '%" . $search_params['text'] . "%')";
        }
        
        $categories = fRecordSet::buildFromSQL('Category', 'SELECT categories.* FROM categories' . $category_sql);
        $result = '';
        $first = true;
        foreach ($categories as $category) {
            $items = fRecordSet::buildFromSQL('Item', 'SELECT items.* FROM items WHERE category=' . $category->getId() . $step_category_sql . $text_search);
            if ($first) {
                $result .= '<div class="tab-pane fade active in" id="' . $category->getId() . '" >';
                $first = false;
            } else {
                $result .= '<div class="tab-pane fade" id="' . $category->getId() . '" >';
            }
            foreach ($items as $item) {
                $images = explode('@', $item->getImages());
                $result .= '
                <div class="col-sm-3">
                  <div class="product-image-wrapper">
                    <div class="single-products">
                      <div class="productinfo text-center" data-item_id="' . $item->getId() . '">
                        <div class="item_img_holder">
                            <img src="' . $images[0] . '" alt="" />
                        </div>
                        <h2>' . $item->getPrice() . $item->getCurrency() . '</h2>
                        <p>' . $item->getName() . '</p>
                        <a href="#" data-logged_user="' . $logged . '" data-item_id="' . $item->getId() . '" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Добави в количката</a>
                      </div>
                    </div>
                  </div>
                </div>';
            }

            $result .= '</div>'; 
        }

        return $result;
    }

    /*

    */
    public static function getCardItems(){

        $items = fSession::get('card');
        $result = '';
        
        foreach ($items as $id => $number) {

            if (!is_numeric($id) || $id < 1) {
                continue;
            }

            try {
                $item = new Item($id);
            } catch (Exception $e) {
                
            }
            $images = explode('@', $item->getImages());
            $result .= '
            <tr class="card_item_row" data-item_id="' . $item->getId() . '">
                <td>
                    <img width="100px" src="' . $images[0] . '" alt="" />
                </td>
                <td>
                    <p>' . $item->getName() . '</p>
                </td>
                <td>
                    <h4>' . $item->getPrice() . $item->getCurrency() . '</h4>
                </td>
                <td class="item_number" data-item_id="' . $item->getId() . '" data-currency="' . $item->getCurrency() . '" data-number="' . $number . '" data-price_item="' . $item->getPrice() . '" data-total="' . $number*$item->getPrice() . '">
                    <i class="glyphicon glyphicon-chevron-up"></i><h4>' . $number . 'бр.</h4><i class="glyphicon glyphicon-chevron-down"></i>
                </td>
                <td>
                    <h4 class="item_total">' . $number*$item->getPrice() . $item->getCurrency() . '</h4>
                </td>
                <td class="remove_item" title="Изтрий от количката!">
                    <i class="glyphicon glyphicon-remove-circle"></i>
                </td>
            </tr>';
        }

        return $result;
    }

    /*

    */
    public static function printNewestItems($is_active = 'active', $first_inactive = true, $custom_for_user = 0){

        $logged = 0;
        $delete_button = '';
        if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true) {
            $logged = 1;
            if (fSession::get('current_user_id') == $custom_for_user) {
                $delete_button = '<i class="glyphicon glyphicon-remove-circle remove_item_from_profile"></i>';
            }

        }

        if ($is_active == 'active') {
            # code...
            $result = '<div class="item active">';
        } else {
            $result = '<div class="item">';
        }
        $first = true;
        $user_SQL = '';
        $has_results = false;
        if ($custom_for_user) {
            $user_SQL = " WHERE user_id=" . $custom_for_user . " ";
        }

        $items = fRecordSet::buildFromSQL('Item', "SELECT items.* FROM items " . $user_SQL . " ORDER BY created ASC");

        foreach ($items as $key => $item) {

            if ($is_active == 'active' && $key > 2) {
                continue;
            } elseif ($is_active == 'inactive' && $key < 3) {
                continue;
            }

            if ($is_active == 'inactive') {
                if (($key > 5 && $first_inactive) || ($first_inactive && $key < 3)) {
                    continue;
                }

                if (($key > 8 && !$first_inactive) || (!$first_inactive && $key < 6)) {
                    continue;
                }
            }
            $has_results = true;
            $images = explode('@', $item->getImages());
            $result .= '
              <div class="col-sm-4">
                <div class="product-image-wrapper">
                  <div data-id="' . $item->getId() . '" class="single-products">
                    ' . $delete_button . '  
                    <div class="productinfo text-center" data-item_id="' . $item->getId() . '">
                      <div class="item_img_holder">
                        <img src="' . $images[0] . '" alt="" />
                      </div>
                      <h2>' . $item->getPrice() . $item->getCurrency() . '</h2>
                      <p>' . $item->getName() . '</p>
                      <a href="#" data-logged_user="' . $logged . '" data-name="' . $item->getName() . '" data-item_id="' . $item->getId() . '" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Добави в количката</a>
                    </div>
                  </div>
                </div>
              </div>';
        }

        if ($has_results) {
            return $result . '</div>';
        } else {
            return '';
        }
    }

    public static function getOrders($return_type = 'send', $is_sum = false){

        if ($return_type == 'send') {
            $items_SQL = "";
            $orders_SQL = " AND orders.buyer=" . fSession::get('current_user_id');
        } else {
            $items_SQL = " WHERE items.user_id=" . fSession::get('current_user_id');
            $orders_SQL = "";
        }

        $items = fRecordSet::buildFromSQL(
            'Item', 
            "SELECT items.* 
            FROM items 
            " . $items_SQL . "
            ORDER BY items.created ASC"
        );

        $result = '';
        $sum    = 0;
        
        foreach ($items as $item) {

            $orders = fRecordSet::buildFromSQL(
                'Order', 
                "SELECT orders.* 
                FROM orders 
                WHERE orders.item=" . $item->getId() . $orders_SQL
            );

            foreach ($orders as $order) {

                $number = (int)$order->getQuantity();
                $current_sum = $number * (float)$item->getPrice();
                $sum += $current_sum;

                $images = explode('@', $item->getImages());
                $result .= '
                <tr class="card_item_row" data-item_id="' . $item->getId() . '">
                    <td>
                        <img width="100px" src="' . $images[0] . '" alt="" />
                    </td>
                    <td>
                        <p>' . $item->getName() . '</p>
                    </td>
                    <td>
                        <h4>' . $item->getPrice() . $item->getCurrency() . '</h4>
                    </td>
                    <td class="item_number" data-item_id="' . $item->getId() . '" data-currency="' . $item->getCurrency() . '" data-number="' . $number . '" data-price_item="' . $item->getPrice() . '" data-total="' . $number*$item->getPrice() . '">
                       <h4>' . $number . 'бр.</h4>
                    </td>
                    <td>
                        <h4 class="item_total">' . $number*$item->getPrice() . $item->getCurrency() . '</h4>
                    </td>
                    <td class="remove_item" title="Изтрий от количката!">
                       
                    </td>
                </tr>';

            }

        }
        if ($is_sum) {
            return $sum;
        } else {
            return $result;
        }
    }


    /*

    */
    public static function logout(){
        $id = fSession::get('current_user_id');
        try {
            
            $user = new User($id);
            $user->setIsActive(0);
            $user->store();

        } catch (Exception $e) {
            
        }
    	fSession::destroy();
    	header('Location: index.php');
    }

    public static function getUsers(){
        try{   

            $users = fRecordSet::buildFromSQL('User', 'SELECT users.* FROM users');
            
        } catch (fExpectedException $e) {
            echo $e->printMessage();
        }
        return $users;
    }
    public static function getUser($id){
        try{   
            $user = new User(array("id" => $id));
            
        } catch (fExpectedException $e) {
            echo $e->printMessage();
        }
        return $user;
    }
}

?>