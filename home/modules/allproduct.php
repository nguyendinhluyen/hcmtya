<?php        
    include 'category.php';    
    function getpercent($str1,$str2){ 				
        $encourage = (int)str_replace(".","",$str1);        
        $price = (int)str_replace(".","",$str2);        
        if($encourage > $price){
            $saleoff = round(($encourage - $price) / $encourage * 100);
        }		
        $saleoff = $saleoff.'%';        
        return $saleoff;
    }
    
    $content = $xtemplate->load('product_bootstrap');
    $Product = new Product();
    if($_SESSION['username']!=''){        
        // Discount for customer
        $Discount_honorUser = $Product -> getDiscountOfCustomer($_SESSION['username']);
        if(intval($Discount_honorUser) > 0){
            $disCountVIPCustomer = (int)$Discount_honorUser;
        }
    }

    $Category = new Category();
    if($_GET['type'] == 'new'){
        $tilte_page = 'Sản Phẩm Mới Nhất | NanaPet';
        $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Sản Phẩm Mới Nhất';
        $products = $Product-> getProductsNewLimit(0,24);
    }
    else if($_GET['type'] == 'best'){
        $tilte_page = 'Sản Phẩm Bán Chạy | NanaPet';
        $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Sản Phẩm Bán Chạy';
        $products = $Product-> getProductsBestSellLimit(0,24);
    }
    else if($_GET['type'] == 'promo'){
        $tilte_page = 'Khuyến Mãi Trong Tuần | NanaPet';
        $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Khuyến Mãi Trong Tuần';
        $products = $Product-> getProductsPromotionLimit(0,24);
    }
    else if ($_GET['type'] == 'allproduct'){
        $tilte_page = 'Sản Phẩm | NanaPet';
        $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Sản Phẩm';
        $products = $Product-> getProductsNewCount();        
        $n = count($products);   
    
        //Phan trang
        if(isset($_GET['num'])){
            $pp_quan = input($_GET['num']);
            $_SESSION['pp_quan'] = $pp_quan;
        }
        $pp_quan = $_SESSION['pp_quan'];
        $pp = 24;
        if($pp_quan > 0){
            $pp = $pp_quan;
        }
        $p_now = intval($_GET ['page']);
        $numofpages = $n / $pp;
        $page = 0;
        if ($p_now <= 0){
            $page = 1;
        }
        else{
            if($p_now <= ceil($numofpages)){
                $page = $p_now;
            }
            else{
                $page = 1;
            }
        }
        $limitvalue = $page * $pp - ($pp);
        //end phan trang

        $linkPage = "san-pham.htmls";
        if($pp_quan > 0){
            $nav_page = pagination($linkS.$linkPage."/".$pp.'/',ceil ( $numofpages ), $page);
        }
        else{
            $nav_page = pagination($linkS.$linkPage."/",ceil ( $numofpages ), $page);
        }        
        $products = $Product-> getProductsNewLimit($limitvalue,$pp);                
    }       
    $n = count($products);    
    $tpl = '';

    // Bootstrap
    $tpl_temp = '<div class="row" id="product_main">
                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul style ="margin-left: -43px">';
    $flag = 0;
    $block = $xtemplate->get_block_from_str($content,'PRODUCT');
    for($i = 0 ; $i < $n ; ++$i){
        $flag ++;		
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "";		

        // GIAM GIA CHO NHUNG SAN PHAM KHONG DUOC GIAM GIA		
        //if($products[$i]['product_encourage'] == '' && $disCountVIPCustomer > 0 && $products[$i]['p_type'] == ''){
            //$price_not_discount_product = $products[$i]['products_price'];
            //$price_of_product = (int)str_replace(".","",$price_not_discount_product);					
            //$priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;	
            //$priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;
            //$priceVIPCustomer = round($priceVIPCustomer / 1000);
            //$priceVIPCustomer = $priceVIPCustomer * 1000;
            //$price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);			
            //$price_not_discount_product = $price_not_discount_product." VNĐ";			
            //$PromotionSale='<span class="promotion">                
            //<span class="promotion_sale">-'.$disCountVIPCustomer.'%'.'</span>                
            //</span>';																			
        //}							

        if($products[$i]['product_encourage'] != '' && $products[$i]['p_type'] == ''){
            $price_not_discount_product = $products[$i]['products_price'];		
            $price_encourage = (int)str_replace(".","",$products[$i]['product_encourage']);
            $price_of_product = (int)str_replace(".","",$price_not_discount_product);					
            $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;	
            $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;

            if( $price_encourage > $priceVIPCustomer){			
                $priceVIPCustomer = round($priceVIPCustomer / 1000);
                $priceVIPCustomer = $priceVIPCustomer * 1000;
                $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);								
                $PromotionSale='<span class="promotion">
                                    <span class="promotion_sale">-'.$disCountVIPCustomer.'%'.'</span>
                                </span>';
            }												
            else{
                $price_encourage = common::convertIntToFormatMoney($price_encourage);
                $percent = getpercent($products[$i]['products_price'], $price_encourage);
                $PromotionSale='<span class="promotion">
                                    <span class="promotion_sale">-'.$percent.'</span>
                                </span>';	
            }
            $price_not_discount_product = $price_not_discount_product." VNĐ";
        }
        else {	
            $PromotionSale='';		
        }
        $category_key = $Category->getCategoryKeyByProductKey($products[$i]['products_key']);

        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'product_img'           =>  $products[$i]['products_image'],
            'product_name'          =>  $products[$i]['products_name'],
            'promotion_Sale'        =>  $PromotionSale,			
            'product_price'         =>  $price_encourage,
            'product_price_old'     =>  $price_not_discount_product,
            'product_short'         =>  '',
            'product_key'           =>  $products[$i]['products_key'],
            'category'              =>  $category_key,
            'product_name_nocut'    =>  $products[$i]['products_name']
        ));

        if( $flag % 4 == 0 || $i > $n-2){
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp.'</div></div>';
            $tpl_temp = '<div class="row" id="product_main">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul style ="margin-left: -43px">';
        }
    }

    $content = $xtemplate->assign_blocks_content($content ,array(
        'PRODUCTS'  =>  $tpl,
    ));
	
    $url =  getFullUrl();
    $url .="/";
    $url1  =$url."order/";

    // Load dog news
    $News = new News();
    $news = $News->getNewsNewest("4");
    $n = count($news);

    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($content,'NEWS');
    $flag = 0;
    for($i=0 ; $i<$n ; ++$i){
        $flag ++;
        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'news_name'     =>  $news[$i]['news_name'],
            'news_key'      =>  $news[$i]['news_key'],
            'news_image'    =>  $news[$i]['news_image'],
        ));

        if($flag % 4 == 0){
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp.'</div></div>';
        }
    }

    $content = $xtemplate->assign_blocks_content($content ,array(
        'NEWS' => $tpl
    ));

    //List advs
    $list_advs = '';    
    $arrAdvs = GetRows('adver_id,adver_logo,adver_link', 'ads', "adver_pos = 1 and adver_status = 1");    
    foreach($arrAdvs as $adv){
        $list_advs .= '<div>'
                        . '<a target="_blank" style = "outline: none" href="'.$adv['adver_link'].'">'
                            .'<img src="{linkS}upload/adver/thumb/'.$adv['adver_logo'].'" width = "110px" height= "90px"/>'
                        . '</a> '
                     . '</div>';
    }
    $content = $xtemplate->replace($content,array(
        'page'          => $nav_page,
        'url'           => $url,
        'url1'          => $url1,
        'self_total'    => '1 - 32',
        'total_product'	=> '32',
        'style_span'    => 'style = "display:none"',       
        'category'      => $category,        
        'list_advs'     => $list_advs,
    ));	
?>

