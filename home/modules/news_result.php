<?php    
    $News  = new News();	
    $news_key = '';    
    if(isset($_GET['news_key'])) {
        $news_key = $_GET['news_key'];
    }
	
    if($news_key == '') {
        $news_key = $News -> getFistRowsOfResultByCategory();
    }
    else {	
        $news_key = $News -> getDetailofResultByCategory($news_key);
    }

    $news_detail = $News -> getDetailNews_Result($news_key);
    if(empty($news_detail['newsresult_content'])) {
        $news_detail['newsresult_name'] = "";
        $news_detail['newsresult_content'] = 'Hiện đang cập nhật ... </br>';
    }
	
    $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
    $tilte_page =  'Kết quả'. " | Sở du lịch Hồ Chí Minh";

    if($news_key != '') {
        $breadcrumbs_path .= ' &raquo; '.'<a href="{linkS}ket-qua">Kết quả</a>';
        $breadcrumbs_path .= ' &raquo; '.$news_detail['newsresult_name'];
    } else {
        $breadcrumbs_path .= ' &raquo; '.'Kết quả';
    }		
    $category_title = "Kết quả";
    $content = $xtemplate->load('result_bootstrap');
    $content = $xtemplate->replace($content,array(
        'tieude'    => $news_detail['newsresult_name'],
        'noidung'   => $news_detail['newsresult_content'],
        'category'  => $category,
        'category_title' => $category_title
    ));
?>