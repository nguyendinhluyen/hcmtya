<?php
    $News = new News();
    $news_key = '';
    if (isset($_GET['news_key'])) {
        $news_key = $_GET['news_key'];
    }

    if ($news_key == '') {
        $news_key = $News->getFistRowsOfAdoptionByCategory();
    } else {
        $news_key = $News->getDetailofAdoptionByCategory($news_key);
    }

    $news_detail = $News->getDetailNews_Adoption($news_key);
    if (empty($news_detail['newsadoption_content'])) {
        $news_detail['newsadoption_content'] = 'Hiện đang cập nhật ... </br>';
    }

    $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
    $tilte_page = 'Vòng sơ tuyển' . " | Sở du lịch Hồ Chí Minh";

    if ($news_key != '') {
        $breadcrumbs_path .= ' &raquo; ' . '<a href="{linkS}vong-so-tuyen">Vòng sơ tuyển</a>';
        $breadcrumbs_path .= ' &raquo; ' . $news_detail['newsadoption_name'];
    } else {
        $breadcrumbs_path .= ' &raquo; ' . 'Vòng sơ tuyển';
    }
    $category_title="Vòng sơ tuyển";
    $content = $xtemplate->load('roundone_bootstrap');
    $content = $xtemplate->replace($content, array(
        'tieude'    => $news_detail['newsadoption_name'],
        'noidung'   => $news_detail['newsadoption_content'],
        'category'  => $category,
        'category_title' => $category_title
    ));
?>