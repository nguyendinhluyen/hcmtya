<?php
    $flag = input($_GET['flag']);    
    $info = '';    
    $news = new News();    
    switch($flag){
        case 3:
            // Lay thong tin bai viet theo loai danh muc thu vien
            if(!empty($_GET['choose3'])) {
                $libaries = $news->getNewsListAllLibaryMainKeyWord($_GET['choose3']);
            }
            else if(!empty($_GET['choose2'])) {
                $libaries = $news->getNewsListAllLibaryKeyWord($_GET['choose2']);
            }
            else if(input($_GET['choose']) === "choose-dog") {
                $libaries = $news->getNewsListAllLibaryDog();
            }
            else if(input($_GET['choose']) === "choose-cat") {
                $libaries = $news->getNewsListAllLibaryCat();
            }			
            else{
                $libaries = $news->getNewsListAllLibary();
            }
            
            $info = $xtemplate->load('libary_bootstrap');
            $total = count($libaries);

            //Phan trang			
            $pp = 10;
            $p_now = intval($_GET ['page']);
            $numofpages = $total / $pp;
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
            
            $begin = $limitvalue;
            if($numofpages != $p_now){	
                $end =  $begin + $pp;	
            }
            else{
                $end =  $total;
            }                        
            $block = $xtemplate -> get_block_from_str($info,'PROMOTION');
            $tpl = '';
            $n = count($libaries);
            for($i = $begin; $i < $end; $i++) {
                if($libaries[$i]['news_name'] != "") {
                    $info_author = $news->getInfoAuthor($libaries[$i]['translator']);
                    $idadmin = $info_author["idadmin_control_user"];
                    $date_array = split('-',$libaries[$i]['date_publisher']);                                                                                           
                    $tpl.= $xtemplate -> assign_vars($block,array(                        
                        'news_name'     =>  $libaries[$i]['news_name'],                        
                        'news_short'    =>  $libaries[$i]['news_shortcontent'],
                        'news_key'      =>  $libaries[$i]['news_key'],                       
                        'news_image'    =>  $libaries[$i]['news_image'],                        
                        'date'          =>  $date_array[2],                        
                        'month'         =>  $date_array[1],                        
                        'year'          =>  $date_array[0],                        
                        'person_up'     =>  'Tác giả:&nbsp; '
                                            .'<span style= "font-family:SourceSansPro-Regular; color: #337ab7;">'
                                            .$libaries[$i]['translator'].'&nbsp;&nbsp;|&nbsp;&nbsp;</b>',
                    ));
                }
            }

            $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';            
            $breadcrumbs_path .= ' &raquo; '.'Tin tức sự kiện';            
            $tilte_page =   'Tin tức sự kiện'. " | Sở du lịch Hồ Chí Minh";            
            $info  = $xtemplate->assign_blocks_content($info ,array(                
                'PROMOTION'     =>  $tpl
            ));					
            
            $info = $xtemplate->replace($info,array(
                'category'      =>  $category_libary
            ));					

            if(!empty($_GET['choose3'])){
                $info = $xtemplate->replace($info,array(
                    'page'  =>  pagination($linkS."thu-vien/".$_GET['choose3'].'.htmls/',ceil($numofpages), $page),
                ));					
            }
            else if(!empty($_GET['choose2'])){
                $info = $xtemplate->replace($info,array(
                    'page'  =>  pagination($linkS."thu-vien/".$_GET['choose1'].'/'.$_GET['choose2'].'/',ceil($numofpages), $page),
                ));					
            }
            else if(input($_GET['choose']) == "choose-dog"){
                $info = $xtemplate->replace($info,array(
                    'page'  =>  pagination($linkS."thu-vien/choose-dog.html/",ceil($numofpages), $page),
                ));
            }
            else if(input($_GET['choose']) == "choose-cat"){
                $info = $xtemplate->replace($info,array(
                    'page'  =>  pagination($linkS."thu-vien/choose-cat.html/",ceil($numofpages), $page),
                ));
            }
            else if(input($_GET['choose']) == "choose-all"){
                $info = $xtemplate->replace($info,array(
                    'page'  =>  pagination($linkS."thu-vien/choose-all.html/",ceil($numofpages), $page),
                ));
            }
            else{
                $info = $xtemplate->replace($info,array(
                    'page'  => pagination($linkS."thu-vien/",ceil($numofpages), $page),
                ));
            }
            
            // Load relation read news
            $array_temp = explode(',',$promotionNews['upgrade_news_catalogue']);
            $relationNews = $news->getListNewsByCategory(41,0,5,"ASC", $news_key);
            $n = count($relationNews);
            $tpl = '';
            $category_title = "Tin tức sự kiện";
            $block = $xtemplate->get_block_from_str($info,'NEWSCATEGORY');    
            for($i = 0; $i < $n; ++$i){
                $tpl.= $xtemplate->assign_vars($block,array(
                    'news_image' => $relationNews[$i]['news_image'],
                    'news_name'  => $relationNews[$i]['news_name'],
                    'news_key'   => $relationNews[$i]['news_key']
                ));
            }
            $info = $xtemplate -> assign_blocks_content($info,array(
                'NEWSCATEGORY' => $tpl,
            ));
        break;
    }
    $content = $info ;	
?>
