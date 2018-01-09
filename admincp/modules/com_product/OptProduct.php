<?php
    if (strpos($_SERVER["HTTP_USER_AGENT"], "MSIE")) {
        $script = "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
    } else {
        $script = "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
    }
    
    function checkExistOrderNumber($orderNumber) {
        global $mysql;
        $sql = "SELECT products_id
                    , products_name
                FROM products 
                WHERE ordernumber=" . $orderNumber;
        $mysql->setQuery($sql);
        if ($mysql) {
            $row = $mysql->loadOneRow();   
            $products_id = output($row['products_id']);
            if ($products_id > 0) {
                return 1;
            }
        }
        return 0;
    }

    if ($_SESSION['timeout'] + $timeout < time()) {
        $title = 'Thêm câu hỏi trắc nghiệm';
        $id = intval($_GET['id']);
        $btn = $arr_lang['add'];
        $panel = $title;
        $update = 0;
        $error = '';
        $selectedResultThird = "";
        $selectedResultFirst = "";
        $selectedResultSecond = "";
                
        //Chinh sua update khi chon update
        if (check_id_product($id)) {
            $update = 1;
            $ordernumberdisabled = "disabled";
            $btn = $arr_lang['update'];
            $sql = "SELECT products_id
                        ,products_name
                        ,upgrade_categories_id
                        ,product_detail
                        ,resultfirst
                        ,resultsecond
                        ,resultthird
                        ,result
                        ,ordernumber
                        ,products_status
                FROM products 
                WHERE products_id=" . $id . " AND language='" . $_SESSION['lag'] . "'";
            $mysql->setQuery($sql);
            $row = $mysql->loadOneRow();
            $products_name = output($row['products_name']);
            $categories_id = $row['upgrade_categories_id'];
            $detail = output($row['product_detail']);
            $products_status = $row['products_status'];
            $ordernumber = $row['ordernumber'];
            $resultfirst = output($row['resultfirst']);
            $resultsecond = output($row['resultsecond']);
            $resultthird = output($row['resultthird']);
            $result = $row['result'];
            
            if ($result === "1") {
                $selectedResultFirst = "checked";
            } else if ($result === "2") {
                $selectedResultSecond = "checked";
            } else if ($result === "3") {
                $selectedResultThird = "checked";
            }
            
            $panel = 'Cập nhật câu hỏi trắc nghiệm';
            $title = $panel;
        }

        if (isset($_POST['btnadd'])) {
            $products_name = trim(output($_POST['txtname']));
            $resultfirst = trim(output($_POST['resultfirst']));
            $resultsecond = trim(output($_POST['resultsecond']));
            $resultthird = trim(output($_POST['resultthird']));
            $result = $_POST['result'];
            $products_key = vitoen($products_name, '-');
            $categories_id = ",";
            $categories_id .= (count($_POST['option']) > 0) ? implode(',', $_POST['option']) : '';
            $categories_id .= ",";
            $array_category = split(",", $categories_id);
            $categories_id_2 = $array_category[1];
            $detail = output($_POST['txtdetail']);
            $ordernumber = $_POST['ordernumber'];
            $error = "";
            // we don't update the order number of question
            // order number of question is unique        
            if ($update != 1) {
                if (!is_int($ordernumber + 0) || empty($ordernumber)) {
                    $error .= 'Thứ tự câu hỏi phải > 0 !'."<br/>";
                }
            }
            
            if(checkExistOrderNumber($ordernumber) === 1) {
                $error .= 'Thứ tự câu hỏi đã có! Vui lòng chọn thứ tự khác !'."<br/>";
            }
            
            if (!isset($products_name{0})) {
                $error .= 'Chưa có câu hỏi !'."<br/>";
            }
            
            if (!isset($resultfirst{0})) {
                $error .= 'Chưa có đáp án 1 !'."<br/>";
            }
            
            if (!isset($resultsecond{0})) {
                $error .= 'Chưa có đáp án 2 !'."<br/>";
            }
            
            if (!isset($resultthird{0})) {
                $error .= 'Chưa có đáp án 3 !'."<br/>";
            }
            
            if (!isset($result{0})) {
                $error .= 'Chưa chọn kết quả !'."<br/>";
            }
            
            if ($categories_id == ",,") {
                $error .= "Chưa chọn bộ đề cho câu hỏi !";
            } 
            
            if ($result === "1") {
                $selectedResultFirst = "checked";
            } else if ($result === "2") {
                $selectedResultSecond = "checked";
            } else if ($result === "3") {
                $selectedResultThird = "checked";
            }
                    
            if (empty($error)) {
                if ($update == 1) {
                    $sql = "UPDATE products SET keywords='" . $keywords
                            . "',products_name='" . input($products_name)
                            . "',upgrade_categories_id='" . $categories_id
                            . "',product_detail='" . input($detail)
                            . "',resultfirst='" . input($resultfirst)
                            . "',resultsecond='" . input($resultsecond)
                            . "',resultthird='" . input($resultthird)
                            . "',result=" . input($result)
                            . " WHERE products_id = '" . $id . "'";
                } else { 
                    $sql = "INSERT INTO products(keywords
                                        ,products_name
                                        ,products_date_added
                                        ,product_detail
                                        ,upgrade_categories_id
                                        ,resultfirst
                                        ,resultsecond
                                        ,resultthird
                                        ,result
                                        ,ordernumber
                                        ,language)
                        VALUES ('" . $keywords . "'
                                ,'" . input($products_name) . "'
                                ," . time() . "
                                ,'" . input($detail) . "'
                                ,'" . $categories_id . "'
                                ,'" . $resultfirst . "'
                                ,'" . $resultsecond . "'
                                ,'" . $resultthird . "'
                                ," . $result . "      
                                ," . $ordernumber . "
                                ,'" . $_SESSION['lag'] . "')";
                    $products_status = 1;
                }
                
                $mysql->setQuery($sql);
                if ($mysql->query()) {
                    $lastId = mysql_insert_id();
                    if ($update == 1) {
                        $lastId = $id;
                    }
                    $sql = "UPDATE products
                            SET products_key  = '" . input($products_key . '-' . $lastId)
                            . "' WHERE products_id = '" . $lastId . "'";
                    $mysql->setQuery($sql);
                    $mysql->query();

                    // Insert product-category
                    if ($update == 1) {
                        $sql = "DELETE
                                FROM product_category
                                WHERE product_id = " . $lastId;
                        $mysql->setQuery($sql);
                        $mysql->query();
                    }

                    $categories_id_list = explode(",", $categories_id);
                    $sql = "INSERT INTO product_category( product_id, category_id, status) VALUES ";
                    for ($i = 0; $i < count($categories_id_list); $i++) {
                        if (!empty($categories_id_list[$i])) {
                            $sql .="(" . $lastId . "," . $categories_id_list[$i] . "," . $products_status . ")";

                            if ($i != (count($categories_id_list) - 2))
                                $sql .= ",";
                        }
                    }
                    $mysql->setQuery($sql);
                    $mysql->query();
                }

                $_SESSION['timeout'] = time();
                if ($_GET['order']) {
                    header('location:./?show=product&p=' . intval($_GET['p']) . '&order=' . $_GET['order']);
                } else {
                    header('location:./?show=product&p=' . intval($_GET['p']));
                }
            } else {
                $error = "<div class='error' style='color:red'>" . $error . "</div>";
            }
        }

        $xtemplate->path = 'com_product/';
        $content = $xtemplate->load('OptProduct');
        $content = $xtemplate->replace($content, array(
            'error' => $error,
            'cat_list' => CatlistUpgrade($categories_id),
            'commodity_list' => commoditylist($commodity_id),
            'panel_add_update_product' => $panel,
            'product_name' => $arr_lang['product_name'],
            'product_of_catalogue' => "Thuộc bộ đề",
            'product_detail' => $arr_lang['product_detail'],
            'reset' => $arr_lang['reset'],
            'btn' => $btn,
            'txtname' => $products_name,
            'txtdetail' => $detail,
            'id_product' => $id,
            'resultfirst' => $resultfirst,
            'resultsecond' => $resultsecond,
            'resultthird' => $resultthird,
            'ordernumber' => $ordernumber,
            'selectedResultFirst' => $selectedResultFirst,
            'selectedResultSecond' => $selectedResultSecond,
            'selectedResultThird' => $selectedResultThird,
            'ordernumberdisabled' => $ordernumberdisabled
        ));
        $script .= $xtemplate->get_block_from_str($content, "SCRIPT");
        $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
    } else {
        header("location:./?show=product");
    }
?>