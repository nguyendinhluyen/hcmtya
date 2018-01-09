<?php
    $news_key = input($_GET['news_key']);
    $info = '';
    $cate = input($_GET['cate']);
    $news = new News();
    $info = $xtemplate->load('info_detail_libary_bootstrap');
    $promotionNews = $news->getDetailNews($news_key);    

    // Update for $title_page and meta
    $tilte_page = $promotionNews['title_page']; 
    $description = $promotionNews['meta_description'];
    $keywords = $promotionNews['meta_keyword'];			       
    $array_date = split("-",$promotionNews['date_publisher']);
    
    // List all category of news detail
    $array_temp = explode(',',$promotionNews['upgrade_news_catalogue']);
    
    // Get chuyen muc
    $array_temp[0] = 0;
    $array_temp[count($array_temp)-1] = 0;
    $array_category = implode(',',$array_temp);    
    $info_category_news = $news->getInfoCategoryNews($array_category);    
    $chuyen_muc = "";
    for($i = 0; $i < count($info_category_news); $i++){
        if($i != count($info_category_news) - 1) {
            $chuyen_muc .= $info_category_news[$i]['categorieslibary_name']. ", ";        
        }
        else {
            $chuyen_muc .= $info_category_news[$i]['categorieslibary_name'];        
        }
    }
    $category_title = "TIN TỨC SỰ KIỆN";
    $info  = $xtemplate->replace($info,array(
        'display_resource'          => $display_resource,
        'news_name'                 => $promotionNews['news_name'],
        'news_content'              => $promotionNews['news_content'],
        'news_shortcontent'         => $promotionNews['news_shortcontent'],
        'news_key'                  => "thu-vien/".$promotionNews['news_key']."/",
        'news_name_twitter'         => $promotionNews['news_name']." - ",
        'linkResource'              => $promotionNews['resource'],
        'author'                    => $promotionNews['author'],
        'translator'                => $promotionNews['translator'],
        'date_added'                => "Ngày ".$array_date[2].", Tháng ".$array_date[1].", Năm ".$array_date[0],
        'category'                  => $category_libary,
        'chuyen_muc'                => $chuyen_muc,
        'category_title'            => $category_title
    ));	    
    $library_active = 'library_active';
    $bread = "Tin tức sự kiện";
    $link = "{linkS}thu-vien";
    $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
    if($news_key != ''){
        $breadcrumbs_path .= ' &raquo; <a href="'.$link.'">'.$bread.'</a>'.'&nbsp;&raquo;&nbsp;'.$promotionNews['news_name'];
    }
    else{
        $breadcrumbs_path .= ' &raquo; '.$bread;
    }	
    $content = $info ;
?>