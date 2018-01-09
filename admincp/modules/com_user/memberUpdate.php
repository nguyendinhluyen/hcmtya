<?php
    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
        if (check_id_user($id)) {
            $row_ac = GetOneRow('email
                                ,name
                                ,phone
                                ,date
                                ,last_login
                                ,address
                                ,birthday
                                ,yahoo
                                ,sex
                                ,avarta
                                ,result_exam
                                ,exam
                                ,exam_check
                                ,score_exam
                                ,exam_answer
                                ,exam_answer_image
                                ,start_time_exam
                                ,start_time_exam_question
                                ,start_time_exam_question_image
                                ,exam_question
                                ,exam_question_image', 'user', "id = '$id' AND status > -1");
            $user = $row_ac['email'];
            $selected1 = "";
            $selected2 = "";
            $selected3 = "";
            if ($row_ac['sex'] == 0) {
                $selected2 = "selected";
            }

            if ($row_ac['sex'] == 1) {
                $selected1 = "selected";
            }

            $adressformat = "";
            $selected4 = "selected";
            if (trim($row_ac['address']) != "") {
                list($text_address, 
                    $text_street, 
                    $text_ward, 
                    $text_chung_cu, 
                    $text_lau, 
                    $text_can_ho, 
                    $text_district, 
                    $text_city ) = split(' nanapet.com ', $row_ac['address']);
                $adressformat = $text_can_ho 
                        . ' ' . $text_lau 
                        . ' ' . $text_chung_cu 
                        . ' - ' . $text_address 
                        . ' ' . $text_street 
                        . ' ' . $text_ward 
                        . ' ' . $text_district 
                        . ' ' . $text_city;
                $text_street = str_replace("Đường ", "", $text_street);
                $text_ward = str_replace("Phường ", "", $text_ward);
                $text_chung_cu = str_replace("Chung cư/Tòa nhà ", "", $text_chung_cu);
                $text_lau = str_replace("Lầu ", "", $text_lau);
                $text_can_ho = str_replace("Căn hộ ", "", $text_can_ho);
                if ($text_can_ho == "") {
                    $adressformat = str_replace("Căn hộ  ", "", $adressformat);
                }

                if ($text_lau == "") {
                    $adressformat = str_replace("Lầu  ", "", $adressformat);
                }

                if ($text_chung_cu == "") {
                    $adressformat = str_replace("Chung cư/Tòa nhà  - ", "", $adressformat);
                }
                $selected4 = "";
                $selected5 = "selected";
            }
            $selected_city = "selected_" . $text_city;
           
        } else {
            header('location:./?show=memberList&p=' . intval($_GET ['p'])
                    . '&full_name=' . $_GET['full_name']
                    . '&email_memeber=' . $_GET['email_memeber']
                    . '&phone_memeber=' . $_GET['phone_memeber']);
        }
    }

    if (isset($_POST['cmd_submit_update_user']) && isset($_GET['id'])) {
        $number_address = $_POST['text_edit_number_address'];
        $number_street = $_POST['text_edit_number_street'];
        $number_street = str_replace("Đường", "", $number_street);
        $number_ward = $_POST['text_edit_number_ward'];
        $number_ward = str_replace("Phường", "", $number_ward);
        $buildings = $_POST['text_edit_number_address_Chung_Cu'];
        $floor = $_POST['text_edit_floor_Chung_Cu'];
        $room = $_POST['text_edit_room_Chung_Cu'];
        $number_city = $_POST['list_city_buy'];
        $number_district = $_POST['list_district_buy'];
        $email = input($_POST['email'], 1);
        $error = "";

        if (empty(trim($number_address)) 
                || empty(trim($number_street)) 
                || empty(trim($number_ward))
                || $number_city == 'Chưa chọn tỉnh/thành' 
                || $number_district == 'Chưa chọn quận/huyện' 
                || empty(trim($email))) {
            $error = "Chưa điền đầy đủ thông tin địa chỉ hoặc địa chỉ email. Cập nhật thất bại !";
        } else {
            $name = input($_POST['name'], 1);
            $phone = input($_POST['phone'], 1);
            $birthday = input(strtotime($_POST['birthday']), 1);

            // VI TRI CAN CHINH SUA KHI UPDATE DIA CHI CAN HO
            $address = trim($number_address) .
                    ' nanapet.com Đường ' . trim($number_street) .
                    ' nanapet.com Phường ' . trim($number_ward) .
                    '  nanapet.com Chung cư/Tòa nhà ' . trim($buildings) .
                    ' nanapet.com Lầu ' . trim($floor) .
                    ' nanapet.com Căn hộ ' . trim($room) .
                    ' nanapet.com ' . $number_district .
                    ' nanapet.com ' . $number_city;

            $yahoo = "";
            $sex = input($_POST['gender']);
            $row_scores_email_again = GetOneRow("id", "user", "email = '" . $email . "'");
            $sql = '';
            
            // Check email moi co ton tai hay khong
            if ($email != $user && empty($row_scores_email_again)) { 
                $sql = " UPDATE user 
                        SET name ='" . $name . "',
                            email ='" . $email . "',
                            phone='" . $phone . "',
                            address='" . $address . "',
                            birthday ='" . $birthday . "',
                            sex = " . $sex . ",
                            yahoo ='" . $yahoo . "',
                            update_flag = 1
                        WHERE id = '$id'
                        AND   status >-1";
            } else if ($email == $user) {
                $sql = " UPDATE user 
                        SET name ='" . $name . "',
                                email ='" . $email . "',
                                phone='" . $phone . "',
                                address='" . $address . "',
                                birthday ='" . $birthday . "',
                                sex = " . $sex . ",
                                yahoo ='" . $yahoo . "',
                                update_flag = 1
                        WHERE id = '$id'
                        AND status >-1";
            } else {
                $error = "Email này đã có người sử dụng. Cập nhật thất bại!";
            }

            $mysql->setQuery($sql);
            if ($mysql->query() && empty($error)) {
                $usInfo = GetOneRow('id', 'user', 'id = ' . $id . ' and status > -1');
                $image = renameFile($_FILES["avatar"]["name"], 'nanapet-' . $usInfo['id']);
                //Resize image
                if (move_uploaded_file($_FILES ["avatar"]["tmp_name"], '../../upload/avatar/' . $image)) {
                    $image_info = getimagesize($_FILES ["avatar"]["tmp_name"]); 
                    $width  = $image_info[0]; // current width as found in image file
                    $height = $image_info[1]; // current height as found in image file
                    $newwidth = 250;
                    $newheight=($height/$width) * $newwidth;
                    @imagejpeg(resize('../../upload/avatar/' . $image,$newwidth, $newheight), '../../upload/avatar/' . $image);
                    $sql_u = "UPDATE user 
                                    SET avarta = '" . $image . "' 
                                    WHERE id = '" . $id . "' and status >-1";
                    $mysql->setQuery($sql_u);
                    $mysql->query();
                }
                header('location:./?show=memberList&p=' . intval($_GET ['p'])
                        . '&full_name=' . $_GET['full_name']
                        . '&email_memeber=' . $_GET['email_memeber']
                        . '&phone_memeber=' . $_GET['phone_memeber']);
            }
        }
    }

    // get exam category
    $exam_category = GetOneRow('categories_name'
                            , 'categories'
                            , "categories_id = ".$row_ac['exam']);
    $question = GetOneRow('ordernumber'
                        , 'question'
                        , "question_id = ".$row_ac['exam_question']);
    $question_image = GetOneRow('ordernumber'
                        , 'question_image'
                        , "question_id = ".$row_ac['exam_question_image']);
    $question_output = "";
    if (!empty($question["ordernumber"])) {
        $question_output = "Câu hỏi ". $question["ordernumber"];
    }
    
    $question_image_output = "";
    if (!empty($question_image["ordernumber"])) {
        $question_image_output = "Câu hỏi ". $question_image["ordernumber"];
    }
    
    $title = "Cập nhật thành viên";
    $xtemplate->path = 'com_user/';
    $content = $xtemplate->load('memberUpdate');
    $content = $xtemplate->replace($content, array(
        'title' => 'Cập nhật thông tin thành viên',
        'username' => $user,
        'phone' => $row_ac['phone'],
        'name' => $row_ac['name'],
        'email' => $row_ac['email'],
        'text_address' => $text_address,
        'text_street' => $text_street,
        'text_ward' => $text_ward,
        $selected_city => "selected",
        'district_value' => $text_district,
        'selected_district ' => $selected4,
        'selected_district_value' => $selected5,
        'address' => $adressformat,
        'text_address_Chung_Cu' => $text_chung_cu,
        'text_edit_floor_Chung_Cu' => $text_lau,
        'text_edit_room_Chung_Cu' => $text_can_ho,
        'birthday' => date("d-m-Y", $row_ac['birthday']),
        'yahoo' => $row_ac['yahoo'],
        'sex' => $row_ac['sex'],
        'avatar' => ($row_ac['avarta'] != '') ? $row_ac['avarta'] : 'default.png',
        'selected1' => $selected1,
        'selected2' => $selected2,
        'selected3' => $selected3,
        'error' => $error,
        'exam_category'=>$exam_category ['categories_name'],
        'score_exam' => $row_ac['score_exam'] >= 0 ? $row_ac['score_exam']: "",
        'exam_answer' => $row_ac['exam_answer'],
        'exam_answer_image' => $row_ac['exam_answer_image'],
        'start_time_exam' => $row_ac['start_time_exam'] > 0 ? date('G:i d/m/Y' ,$row_ac['start_time_exam']) : "",
        'start_time_exam_question' => $row_ac['start_time_exam_question'] > 0 ? date('G:i d/m/Y' ,$row_ac['start_time_exam_question']) : "",
        'question' => $question_output,
        'start_time_exam_question_image' => $row_ac['start_time_exam_question_image'] > 0 ? date('G:i d/m/Y' ,$row_ac['start_time_exam_question_image']) : "",
        'question_image' => $question_image_output,
    ));
?>