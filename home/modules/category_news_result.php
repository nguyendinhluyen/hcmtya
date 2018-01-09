<?php        
    $news_key = input($_GET['news_key']);
    if($news_key == '') {
        $news_key = $News -> getFistRowsOfResultByCategory();
    }

    $category = $xtemplate->load('category_news_result');
    $Cate = new Category();
    $categories = $Cate -> getCategoriesParent_result();
    $n = count($categories);
    $tpl = '';
    $block = $xtemplate->get_block_from_str($category,'CATEGORY');
    for($i = 0 ; $i < $n ; ++$i) {
        $categories_sub = $Cate -> getCategoriesSub_result($categories[$i]['categoriesresult_id']);
        $m = count($categories_sub);
        if($i !=0 ) {
            $tpl .= "<hr style = 'margin-top: 10px;"
                                . "margin-bottom: 10px;"
                                . "border-width:1px;"                                
                                . "border-color:#e1e1e1; "
                                . "width:100%; "
                                . "float:left; "
                                . "margin-right: 50px'>";
        }
		
        if($m > 0) {		            
            // Thu muc cha co duong link con dau tien
            // Check the selected category
            $id_danhmuc_main = $categories_sub[0]['categoriesresult_id'];
            if($news_key == $categories_sub[0]['categoriesresult_key']){
                $id_danhmuc_main = "selected";
            }
            $tpl.= $xtemplate->assign_vars($block,array(
                'category_name'     => $categories[$i]['categoriesresult_name'],
                'category_key'      => $categories_sub[0]['categoriesresult_key'],
                'id_danhmuc_main'   => $id_danhmuc_main
            ));
        }
        else {
            // Check the selected category
            $id_danhmuc_main = $categories[$i]['categoriesresult_id'];
            if($news_key == $categories[$i]['categoriesresult_key']){
                $id_danhmuc_main = "selected";
            }
            $tpl.= $xtemplate->assign_vars($block,array(
                'category_name'     => $categories[$i]['categoriesresult_name'],
                'category_key'      => $categories[$i]['categoriesresult_key'],
                'id_danhmuc_main'   => $id_danhmuc_main    
            ));
        }

        $block_sub = $xtemplate -> get_block_from_str($category,'SUBCATEGORY');		
        $tpl2 = '';

        if($m > 0) {									
            for($j = 0 ; $j < $m ; ++$j) {
                //Check the selected category
                //$id_danhmuc_sub = $categories_sub[$j]['categoriesresult_key'];
                //$img_danhmuc_sub_display = "display:none";
                //if( $news_key === $categories_sub[$j]['categoriesresult_key']) {
                //    $id_danhmuc_sub = "selected";
                //    $img_danhmuc_sub_display = " display:inline; margin-left: -15px";
                //}
                
                $tpl2.= $xtemplate->assign_vars($block_sub,array(
                    'category_sub_name' 	=> $categories_sub[$j]['categoriesresult_name'],
                    'category_sub_key'          => $categories_sub[$j]['categoriesresult_key'],
                    'category_key'              => $categories[$i]['categoriesresult_key'],
                    //'id_danhmuc_sub'            =>  $id_danhmuc_sub,
                    //'img_danhmuc_sub_display'   =>  $img_danhmuc_sub_display
                ));
            }
        }
			
        $tpl = $xtemplate->assign_blocks_content($tpl,array(            
            'SUBCATEGORY'   =>  $tpl2
        ));
    }
	
    $category = $xtemplate -> assign_blocks_content($category,array(
        'CATEGORY'  =>  $tpl
    ));	
?>