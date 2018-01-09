<?php
    $xtemplate->path = 'com_admin/';
    $menu = $xtemplate->load('menu');
    $array_checked_box_save = split(';', $_SESSION['admin'][3]);

    if (!empty($row)) {
        for ($i = 0; $i < count($array_checked_box_save); $i++) {
            $display_i = "display_" . $array_checked_box_save[$i];
            $menu = $xtemplate->replace($menu, array(
                $display_i => "display:block",
            ));
        }

        if (strpos($_SESSION['admin'][3], ';1;') === false
                && strpos($_SESSION['admin'][3], ';2;') === false
                && strpos($_SESSION['admin'][3], ';5;') === false 
                && strpos($_SESSION['admin'][3], ';6;') === false
                && strpos($_SESSION['admin'][3], ';7;') === false) {
            $display_all_1 = "display: none";
        }

        if (strpos($_SESSION['admin'][3], ';8;') === false 
                && strpos($_SESSION['admin'][3], ';9;') === false) {
            $display_all_2 = "display: none";
        }

        if (strpos($_SESSION['admin'][3], ';29;') === false 
                && strpos($_SESSION['admin'][3], ';18;') === false) {
            $display_all_4 = "display: none";
        }

        if (strpos($_SESSION['admin'][3], ';21;') === false) {
            $display_all_5 = "display: none";
        }

        if (strpos($_SESSION['admin'][3], ';22;') === false) {
            $display_all_6 = "display: none";
        }
        
        if (strpos($_SESSION['admin'][3], ';36;') === false 
                && strpos($_SESSION['admin'][3], ';37;') === false) {
            $display_all_8 = "display: none";
        }
        
        if (strpos($_SESSION['admin'][3], ';19;') === false 
                && strpos($_SESSION['admin'][3], ';32;') === false) {
            $display_all_9 = "display: none";
        }
        
        if (strpos($_SESSION['admin'][3], ';33;') === false
                && strpos($_SESSION['admin'][3], ';34;') === false) {
            $display_all_10 = "display: none";
        }
        
        if (strpos($_SESSION['admin'][3], ';31;') === false
                && strpos($_SESSION['admin'][3], ';20;') === false) {
            $display_all_11 = "display: none";
        }
    }

    $menu = $xtemplate->replace($menu, array(
        'llag' => ($_SESSION['lag'] == 'vi') ? 'en' : 'vi',
        'lang' => ($_SESSION['lag'] == 'vi') ? 'English' : 'Tiếng Việt',
        'information' => $arr_lang['information'],
        'navpro' => $arr_lang['navpro'],
        'cat_manage' => $arr_lang['cat_manage'],
        'product_manager' => $arr_lang['product_manager'],
        'pnew' => $arr_lang['pnew'],
        'sellers' => $arr_lang['sellers'],
        'newsmanger' => $arr_lang['newsmanger'],
        'news' => $arr_lang['news'],
        'custommer' => $arr_lang['custommer'],
        'supportCus' => $arr_lang['supportCus'],
        'ads' => $arr_lang['ads'],
        'config' => $arr_lang['config'],
        'order2' => $arr_lang['order2'],
        'logout' => $arr_lang['logout'],
        'view' => $arr_lang['view'],
        'config' => $arr_lang['config'],
        'changeacc' => "Cập nhật Super Admin",
        'logout_conf' => $arr_lang['logout_conf'],
        'display_all_1' => $display_all_1,
        'display_all_2' => $display_all_2,
        'display_all_4' => $display_all_4,
        'display_all_5' => $display_all_5,
        'display_all_6' => $display_all_6,
        'display_all_8' => $display_all_8,
        'display_all_9' => $display_all_9,
        'display_all_10' => $display_all_10,
        'display_all_11' => $display_all_11,
    ));
?>