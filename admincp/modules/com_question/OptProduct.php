<?php
    if (strpos($_SERVER["HTTP_USER_AGENT"], "MSIE")) {
        $script = "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
    } else {
        $script = "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
    }
    
    function checkExistOrderNumber($orderNumber) {
        global $mysql;
        $sql = "SELECT question_id
                FROM question 
                WHERE ordernumber=" . $orderNumber;
        $mysql->setQuery($sql);
        if ($mysql) {
            $row = $mysql->loadOneRow();
            $question_id = output($row['question_id']);
            if ($question_id > 0) {
                return 1;
            }
        }
        return 0;
    }

    if ($_SESSION['timeout'] + $timeout < time()) {
        $title = 'Thêm câu hỏi';
        $id = intval($_GET['id']);
        $btn = $arr_lang['add'];
        $panel = $title;
        $update = 0;
        $error = '';
        $selectedResultThird = "";
        $selectedResultFirst = "";
        $selectedResultSecond = "";
                
        //Chinh sua update khi chon update
        if (check_id_question($id)) {
            $update = 1;
            $ordernumberdisabled = "disabled";
            $btn = $arr_lang['update'];
            $sql = "SELECT question_id
                        ,question_detail
                        ,ordernumber
                        ,question_status
                FROM question 
                WHERE question_id=" . $id . " AND language='" . $_SESSION['lag'] . "'";
            $mysql->setQuery($sql);
            $row = $mysql->loadOneRow();
            $question_detail = output($row['question_detail']);
            $question_status = $row['question_status'];
            $ordernumber = $row['ordernumber'];
            $panel = 'Cập nhật câu hỏi';
            $title = $panel;
        }

        if (isset($_POST['btnadd'])) {
            $question_detail = output($_POST['txtdetail']);
            $question_key = vitoen($question_detail, '-');
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
                $error .= 'Thứ tự câu hỏi đã được sử dụng! Vui lòng thay đổi thứ tự khác.'."<br/>";
            }
            
            if (empty(trim($question_detail))) {
                $error .= 'Chưa có câu hỏi !'."<br/>";
            }
            
            if (empty($error)) {
                if ($update == 1) {
                    $sql = "UPDATE question SET "
                            . "question_detail='" . input($question_detail)
                            . "' WHERE question_id = '" . $id . "'";
                } else { 
                    $sql = "INSERT INTO question(question_detail
                                            ,question_date_added
                                            ,ordernumber
                                            ,language)
                            VALUES ('" . input($question_detail) . "'
                                    ," . time() . "
                                    ," . $ordernumber . "
                                    ,'" . $_SESSION['lag'] . "')";
                }
                
                $mysql->setQuery($sql);
                if ($mysql->query()) {
                    $lastId = mysql_insert_id();
                    if ($update == 1) {
                        $lastId = $id;
                    }
                    $sql = "UPDATE question
                            SET question_key  = '" . input($question_key . '-' . $lastId)
                            . "' WHERE question_id = '" . $lastId . "'";
                    $mysql->setQuery($sql);
                    $mysql->query();
                }

                $_SESSION['timeout'] = time();
                if ($_GET['order']) {
                    header('location:./?show=question&p=' . intval($_GET['p']) . '&order=' . $_GET['order']);
                } else {
                    header('location:./?show=question&p=' . intval($_GET['p']));
                }
            } else {
                $error = "<div class='error' style='color:red'>" . $error . "</div>";
            }
        }

        $xtemplate->path = 'com_question/';
        $content = $xtemplate->load('OptProduct');
        $content = $xtemplate->replace($content, array(
            'error' => $error,
            'panel_add_update_question' => $panel,
            'txtdetail' => $question_detail,
            'btn' => $btn,
            'ordernumber' => $ordernumber,
            'ordernumberdisabled' => $ordernumberdisabled,
        ));
        $script .= $xtemplate->get_block_from_str($content, "SCRIPT");
        $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
    } else {
        header("location:./?show=question");
    }
?>