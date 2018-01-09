<?php
    if (strpos($_SERVER["HTTP_USER_AGENT"], "MSIE")) {
        $script = "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
    } else {
        $script = "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
    }
    
    function checkExistOrderNumber($orderNumber) {
        global $mysql;
        $sql = "SELECT question_id
                FROM question_image
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
        $title = 'Thêm câu hỏi ảnh luận';
        $id = intval($_GET['id']);
        $btn = $arr_lang['add'];
        $panel = $title;
        $update = 0;
        $error = '';
        $selectedResultThird = "";
        $selectedResultFirst = "";
        $selectedResultSecond = "";
        $image = "";
        $imagesrc = "<img src='" . _STYLE_IMG . 'noimages.gif' . "' width='150px'/>";
                
        //Chinh sua update khi chon update
        if (check_id_question_image($id)) {
            $update = 1;
            $ordernumberdisabled = "disabled";
            $btn = $arr_lang['update'];
            $sql = "SELECT question_id
                          ,question_detail
                          ,ordernumber
                          ,question_status
                          ,question_image
                    FROM question_image
                    WHERE question_id=" . $id . " AND language='" . $_SESSION['lag'] . "'";
            $mysql->setQuery($sql);
            $row = $mysql->loadOneRow();
            $question_detail = output($row['question_detail']);
            $question_status = $row['question_status'];
            $ordernumber = $row['ordernumber'];
            $panel = 'Cập nhật câu hỏi';
            $title = $panel;
            if (!empty($row['question_image'])) {
                $image_info = getimagesize(_UPLOAD_IMG_THUMB . $row['question_image']); 
                $width_orig  = $image_info[0]; // current width as found in image file
                $height_orig = $image_info[1]; // current height as found in image file
                if ($width_orig > 550) {
                    $newwidth = 550;
                    $newheight=($height_orig/$width_orig) * $newwidth;
                } else {
                    $newwidth = $width_orig;
                    $newheight = $height_orig;
                }
                $imagesrc = "<img src='" . _UPLOAD_IMG_THUMB . $row['question_image'] 
                        . "' width='".$newwidth."'"
                        . " height='".$newheight."'/>";
            }
        }

        if (isset($_POST['btnadd'])) {
            $error = "";
            $question_detail = output($_POST['txtdetail']);
            $question_key = vitoen($question_detail, '-');
            $image = $_FILES ["image"]["name"];
            
            // we don't update the order number of question - order number of question is unique        
            if ($update != 1) {
                $ordernumber = $_POST['ordernumber'];
                if (!is_int($ordernumber + 0) || empty($ordernumber)) {
                    $error .= 'Thứ tự câu hỏi phải > 0 !'."<br/>";
                }
                if(checkExistOrderNumber($ordernumber) === 1) {
                    $error .= 'Thứ tự câu hỏi đã được sử dụng! Vui lòng thay đổi thứ tự khác.'."<br/>";
                }
            }
            
            if (!empty($image)) {
                // Check size and type image
                $image_ext = strrchr($image, '.');
                // Check if its allowed or not
                $whitelist = array(".jpg",".jpeg",".png");
                if (!(in_array($image_ext, $whitelist))) {
                   $error .= 'Hình ảnh không đúng định dạng .jpg, .png !'."<br/>";
                }

                if($_FILES['image']['size'] > 3000000){
                    $error .= 'Kích thước hình ảnh quá lớn!'."<br/>";
                }    
            }
            
            if (empty(trim($question_detail))) {
                $error .= 'Chưa có câu hỏi !'."<br/>";
            }
            
            if (empty($error)) {
                if ($update == 1) {
                    $sql = "UPDATE question_image SET "
                            . "question_detail='" . input($question_detail)
                            . "' WHERE question_id = '" . $id . "'";
                } else { 
                    $sql = "INSERT INTO question_image(question_detail
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
                    if ($image) {
                        if ($update == 1) {//update image	
                            if (file_exists($imagesrc)) {
                                @unlink(_UPLOAD_IMG . $row['question_image']);
                                @unlink(_UPLOAD_IMG_THUMB . $row['question_image']);
                            }
                            $lastId = $id; 
                        }
                        // change name of image
                        $image = renameFile($_FILES["image"]["name"], 'p-' . input($question_key) . '-' . $lastId);
                        // resize image and move to the folder 
                        if (move_uploaded_file($_FILES ["image"]["tmp_name"], _UPLOAD_IMG_THUMB . $image)) {
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB . $image, 500, 500), _UPLOAD_IMG . $image);
                            $sql = "UPDATE question_image
                                    SET question_image = '" . $image
                                    . "' WHERE question_id = '" . $lastId . "'";
                            $mysql->setQuery($sql);
                            $mysql->query();
                        }
                    }
                    
                    if ($update == 1) {
                        $lastId = $id;
                    }
                    $sql = "UPDATE question_image
                            SET question_key  = '" . input($question_key . '-' . $lastId)
                            . "' WHERE question_id = '" . $lastId . "'";
                    $mysql->setQuery($sql);
                    $mysql->query();
                }

                $_SESSION['timeout'] = time();
                if ($_GET['order']) {
                    header('location:./?show=questionimage&p=' . intval($_GET['p']) . '&order=' . $_GET['order']);
                } else {
                    header('location:./?show=questionimage&p=' . intval($_GET['p']));
                }
            } else {
                $error = "<div class='error' style='color:red'>" . $error . "</div>";
            }
        }

        $xtemplate->path = 'com_question_image/';
        $content = $xtemplate->load('OptProduct');
        $content = $xtemplate->replace($content, array(
            'error' => $error,
            'panel_add_update_question' => $panel,
            'txtdetail' => $question_detail,
            'btn' => $btn,
            'ordernumber' => $ordernumber,
            'ordernumberdisabled' => $ordernumberdisabled,
            'imagesrc' => $imagesrc,
        ));
        $script .= $xtemplate->get_block_from_str($content, "SCRIPT");
        $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
    } else {
        header("location:./?show=questionimage");
    }
?>