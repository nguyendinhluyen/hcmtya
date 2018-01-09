<?php        
    $News  = new News();
    $news_key = '';
    
    if(isset($_GET['news_key'])) {
        $news_key = $_GET['news_key'];
    }
    
    if($news_key == '')	{
        $news_key = $News -> getFistRowsOfHelpByCategory();
    } else {
        $news_key = $News -> getDetailofHelpByCategory($news_key);
    }					

    $news_detail = $News -> getDetailNews($news_key);	
    if(empty($news_detail['news_content'])) {
        $news_detail['news_name'] = "Vòng chung kết";        
        $news_detail['news_content'] = 'Hiện đang cập nhật ... </br>';
    }

    $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
    $tilte_page =  'Vòng chung kết'. " | Sở du lịch Hồ Chí Minh";
    
    if($news_key != '') {
        $breadcrumbs_path .= ' &raquo; '.'<a href="{linkS}vong-chung-ket">Vòng chung kết</a>';
        $breadcrumbs_path .= ' &raquo; '.$news_detail['news_name'];
    }
    else {
        $breadcrumbs_path .= ' &raquo; '.'Vòng chung kết';
    }
    $category_title = "Vòng chung kết";
    $content = $xtemplate->load('roundfinal_bootstrap');
    $content = $xtemplate->replace($content,array(        
        'tieude'	=>  $news_detail['news_name'],
        'noidung'       =>  $news_detail['news_content'],        
        'category'      =>  $category,
        'category_title' => $category_title
    ));
?>