<?php
    $title = $arr_lang['addcat'];
    $id = intval($_GET['id']);
    $check_do = 'checked';
    $btn = $arr_lang['add_cat'];
    $panel = $arr_lang['add_cat'];
    $update = 0;
    if (check_valid_result($id)) { 
        $title = $arr_lang['updatecat'];
        $btn = $arr_lang['update'];
        $panel = $arr_lang['update_cat'];
        $update = 1;
        $sql = "SELECT categoriesresult_name,
                        categoriesresult_key,
                        descriptionresult,
                        keywordsresult,
                        parentresult_id,
                        sortresult_order,
                        categoriesresult_status
                FROM   categoriesresult 
                WHERE  categoriesresult_id = '" . $id . "'";
        $mysql->setQuery($sql);
        $row = $mysql->loadOneRow();
        $catname = output($row['categoriesresult_name']);
        $parent_id = $row['parentresult_id'];
        $keywords = $row['keywordsresult'];
        $description = $row['descriptionresult'];
        $catname_old = $catname;
        $catorder = $row['sortresult_order'];
        $check_do = ($row['categoriesresult_status'] == '1') ? 'checked' : '';
    }

    if (isset($_POST['btnadd'])) {
        $catname = output($_POST['txtcats_name']);
        $catorder = intval($_POST['txtcats_order']);
        $keywords = $_POST['keywords'];
        $description = $_POST['description'];
        $parent_id = intval($_POST['dl_subcats']);
        if ($parent_id != 0) {
            $level = getLevel_result($parent_id) + 1;
        } else {
            $level = 1;
        }

        if ($_POST['chkb_status'] != 'on') {
            $check_do = '';
            $status = '0';
        } else {
            $status = '1';
        }

        $catkey = vitoen($catname, '-');
        if (!isset($catname{1})) {
            $error = $arr_lang['err_cat_name_short'] . ' !<br>';
        }

        if (check_cats_name_result(input($catname), $id, $parent_id)) {
            $error = $arr_lang['err_cat_name_valid'] . ' !';
            $catname = $catname_old;
        }

        if (empty($error)) {
            include(_CLASS . 'cache.php');
            $cache = new cache();
            $cache->flush(_HOME . 'home/cache/');
            //UPDATE								
            if ($update == 1) {
                $sql = "UPDATE categoriesresult 
                        SET categoriesresult_name = '" . input($catname)
                            . "',keywordsresult='" . $keywords
                            . "',descriptionresult='" . $description
                            . "',categoriesresult_key = '" . $catkey
                            . "',parentresult_id = " . intval($parent_id)
                            . ",levelresult ='" . $level
                            . "',sortresult_order = '" . $catorder
                            . "',categoriesresult_status = '" . $status
                            . "',modifiedresult_date = " . time() .
                        " WHERE categoriesresult_id = " . $id . "";
                $mysql->setQuery($sql);
                $mysql->query();
                if ($_GET['order'] != "") {
                    header('location:./?show=catalogue_result&p=' . intval($_GET['p']) . '&order=' . $_GET['order']);
                } else {
                    header('location:./?show=catalogue_result&p=' . intval($_GET['p']));
                }
            }

            //INSERT
            else {
                $sql = "INSERT INTO categoriesresult(categoriesresult_name,
                                    keywordsresult,
                                    descriptionresult,
                                    parentresult_id,
                                    levelresult,
                                    sortresult_order,
                                    categoriesresult_status,
                                    dateresult_added,
                                    languageresult)															
                                VALUES('" . input($catname) . "','"
                                    . $keywords . "','"
                                    . $description . "',"
                                    . intval($parent_id) . ",'"
                                    . intval($level) . "',"
                                    . $catorder . ","
                                    . $status . ","
                                    . time() . ",'"
                                    . $_SESSION['lag'] . "')";

                $mysql->setQuery($sql);
                $mysql->query();
                $id = $mysql->lastId;
                $mysql->setQuery("UPDATE categoriesresult 
                                SET categoriesresult_key ='" . input($catkey) .
                                "' WHERE categoriesresult_id='" . $id . "'");
                $mysql->query();
                if ($_GET['order'] != "") {
                    header('location:./?show=catalogue_result&p=' . intval($_GET['p']) . '&order=' . $_GET['order']);
                } else {
                    header('location:./?show=catalogue_result&p=' . intval($_GET['p']));
                }
            }
        }
    }

    $xtemplate->path = 'com_catalogue_result/';
    $content = $xtemplate->load('CatalogueOpt');
    $content = $xtemplate->replace($content, array(
        'lag_cats_name' => $arr_lang['cat_name'],
        'keywords' => $keywords,
        'description' => $description,
        'add_cat' => $panel,
        'lag_order' => $arr_lang['order'],
        'dl_subcats' => dl_subcats_result($parent_id, 200),
        'lag_show' => $arr_lang['show'],
        'btn' => $btn,
        'txt_cats_name' => output($catname),
        'txt_cats_order' => $catorder,
        'check_do' => $check_do,
        'ofcatalogue' => $arr_lang['ofcatalogue'],
        'error' => $error
    ));
?>