<?php    
    $News  = new News();	
    $news_key = '';    
    if(isset($_GET['news_key'])) {
        $news_key = $_GET['news_key'];
    }

    if($news_key == '') {
        $news_key = $News -> getFistRowsOfIntroduceByCategory();
    }					
    else {	
        $news_key = $News -> getDetailofIntroduceByCategory($news_key);
    }					

    $news_detail = $News -> getDetailNews_Introduce($news_key);
    if(empty($news_detail['newsintroduce_content'])) {
        $news_detail['newsintroduce_name'] = "";        
        $news_detail['newsintroduce_content'] = 'Hiện đang cập nhật ... </br>';
    }
	
    $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
    $tilte_page =  'Kế hoạch'. " | Sở du lịch Hồ Chí Minh";

    if($news_key != '') {
        $breadcrumbs_path .= ' &raquo; '.'<a href="{linkS}gioi-thieu">Kế hoạch</a>';
        $breadcrumbs_path .= ' &raquo; '.$news_detail['newsintroduce_name'];
    } else {
        $breadcrumbs_path .=  ' &raquo; '.'Kế hoạch';
    }		
    $category_title = "Kế hoạch";
    $content = $xtemplate->load('introduce_bootstrap');
    $content = $xtemplate->replace($content,array(
        'tieude'        => $news_detail['newsintroduce_name'],
        'noidung'       => $news_detail['newsintroduce_content'],
        'category'      => $category,
        'category_title'=> $category_title
    ));
?>