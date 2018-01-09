<?php    
    // Load layout
    $home = $xtemplate->load('home_bootstrap');
    
    // Load lastest news
    $News = new News();
    $news = $News->getLastestNews(0,4);
    $n = count($news);
    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul>';
    $block = $xtemplate->get_block_from_str($home,'NEWS');
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
            $tpl_temp = '<div class="row" id="product_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home ,array(
        'NEWS'   =>  $tpl
    ));
        
    $content = $home;	
?>