<?php
    $category_key = input($_GET['choose3']);
    if(isset($_GET['choose2'])){
        $category_key = input($_GET['choose2']);
    }    
    
    $category_libary = $xtemplate -> load('category_libary');
    $Cate = new Category();
    $categories = $Cate -> getCategoriesParent_libary();
    $n = count($categories);
    $tpl = '';
    $block = $xtemplate->get_block_from_str($category_libary,'CATEGORY');

    for($i = 0; $i < $n; ++$i){
        if($i !=0 ){
            $tpl .= "<hr style = 'margin-top: 10px;"
                                . "margin-bottom: 10px;"
                                . "border-width:1px;"                                
                                . "border-color:#e1e1e1; "
                                . "width:100%; "
                                . "float:left; "
                                . "margin-right: 50px'>";
        }
        
        // Check the selected category
        $id_danhmuc_main = $categories[$i]['categorieslibary_id'];
        if($category_key === $categories[$i]['categorieslibary_key']) {
            $id_danhmuc_main = "selected";
        }
        $tpl.= $xtemplate->assign_vars($block,array(
            'category_name'     => $categories[$i]['categorieslibary_name'],
            'category_key'      => $categories[$i]['categorieslibary_key'],
            'id_danhmuc_main'   => $id_danhmuc_main
        ));

        $block_sub = $xtemplate->get_block_from_str($category_libary,'SUBCATEGORY');
        $categories_sub = $Cate->getCategoriesSub_libary($categories[$i]['categorieslibary_id']);
        $m = count($categories_sub); 
        $tpl2 = '';

        for($j=0 ; $j<$m ; ++$j){            
            // Check the selected category
            $id_danhmuc_sub = $categories_sub[$j]['categorieslibary_id'];
            $img_danhmuc_sub_display = "display:none";
            if($category_key === $categories_sub[$j]['categorieslibary_key']) {
                $id_danhmuc_sub = "selected";
                $img_danhmuc_sub_display = " display:inline; margin-left: -15px";
            }
            
            $tpl2.= $xtemplate->assign_vars($block_sub,array(
                'category_sub_name'         => $categories_sub[$j]['categorieslibary_name'],
                'category_sub_key'          => $categories_sub[$j]['categorieslibary_key'],
                'category_key'              => $categories[$i]['categorieslibary_key'],
                'id_danhmuc_sub'            => $id_danhmuc_sub,
                'img_danhmuc_sub_display'   => $img_danhmuc_sub_display
            ));
        }

        $tpl = $xtemplate->assign_blocks_content($tpl,array(
            'SUBCATEGORY' => $tpl2
        ));
    }
    
    $category_libary = $xtemplate -> assign_blocks_content($category_libary,array(
        'CATEGORY' => $tpl
    ));	
?>