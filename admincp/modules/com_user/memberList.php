<?php
    $full_name_set = $full_name = $_GET['full_name'];
    $email_memeber_set = $email_memeber = $_GET['email_memeber'];
    $phone_memeber_set = $phone_memeber = $_GET['phone_memeber'];

    if (empty($full_name) || $full_name == "*") {
        $full_name = "*";
        $full_name_set = "";
    }

    if (empty($email_memeber) || $email_memeber == "*") {
        $email_memeber = "*";
        $email_memeber_set = "";
    }

    if (empty($phone_memeber) || $phone_memeber == "*") {
        $phone_memeber = "*";
        $phone_memeber_set = "";
    }

    if ($full_name == "*" && $email_memeber == "*" && $phone_memeber == "*") {
        $full_name_set = "";
        $email_memeber_set = "";
        $phone_memeber_set = "";
        $email_memeber = "";
        $full_name = "";
        $phone_memeber = "";
    }

    function filterData(&$str) {
        $str = preg_replace("/\t/", "\\t", $str);
        $str = preg_replace("/\r?\n/", "\\n", $str);
        if (strstr($str, '"'))
            $str = '"' . str_replace('"', '""', $str) . '"';
    }

    if ($_GET['action'] == 'del') {
        if (isset($_GET['id'])) {
            $id = input($_GET['id']);
            deteleUser($id);
            header('location:./?show=memberList&p=' . intval($_GET ['p'])
                    . '&full_name=' . $full_name
                    . '&email_memeber=' . $email_memeber
                    . '&phone_memeber=' . $phone_memeber);
        }
    } else if (isset($_POST['btndel'])) {
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        deteleUser($id);
        header('location:./?show=memberList&p=' . intval($_GET ['p'])
                . '&full_name=' . $full_name
                . '&email_memeber=' . $email_memeber
                . '&phone_memeber=' . $phone_memeber);
    } else if (isset($_POST['btnExportExcel'])) {
        // file name for download
	$fileName = "hcmctya_user_export_data" . date('Ymd') . ".xls";
        
        // headers for download
	header("Content-Disposition: attachment; filename=\"$fileName\"");
	header("Content-Type: application/vnd.ms-excel");
        
        // Load data from server
        $mysql->setQuery("SELECT * FROM user WHERE status <> -1 ORDER BY date DESC");
        $mysql->query();
        $row = $mysql->loadAllRow();
        $output = '';
        if (count($row) > 0) {
            // category multichoice
            $output .= '<table class="table" bordered="1">  
                                <tr style="background-color: #4CAF50;
                                           color: white;
                                           font-size: 12px;">
                                    <th>STT</th>
                                    <th>Họ tên Thí Sinh</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>  
                                    <th>Địa chỉ</th>
                                    <th>Đề trắc nghiệm</th>
                                    <th>Điểm trắc nghiệm</th>
                                    <th>Link tự luận</th>
                                    <th>Link ảnh luận</th>
                                </tr> ';
            for ($i = 0; $i < count($row); $i++) {
                $exam_category = GetOneRow('categories_name'
                                        , 'categories'
                                        , "categories_id = " . $row[$i]['exam']);
                $outputanswer = "";
                if(!empty(output($row[$i]['exam_answer']))) {
                    $outputanswer = "http://hcmctya.com.vn/upload/question/".output($row[$i]['exam_answer']);
                }
                
                $outputanswerimage = "";
                if(!empty(output($row[$i]['exam_answer_image']))) {
                    $outputanswerimage = "http://hcmctya.com.vn/upload/question_image/".output($row[$i]['exam_answer_image']);
                }
                $stt = $i + 1 ;
                $output .= '<tr>
                                <td>' . output($stt) . '</td>
                                <td>' . output($row[$i]['name']) . '</td>
                                <td>' . output($row[$i]['phone']) . '</td>
                                <td>' . output($row[$i]['email']) . '</td>  
                                <td>' . str_replace(' nanapet.com', '', $row[$i]['address']) . '</td>  
                                <td>' . $exam_category['categories_name'] . '</td>
                                <td>' . $row[$i]['score_exam'] . '</td>
                                <td>' . $outputanswer . '</td>
                                <td>' . $outputanswerimage . '</td>
                            </tr>';
            }
            $output .= '</table>';
            echo $output;
            exit;
        }
    }

    $title = "Danh sách thí sinh";
    $xtemplate->path = 'com_user/';
    $content = $xtemplate->load('memberList');
    $code_cats = $xtemplate->get_block_from_str($content, "LIST");

    // Begin navigation
    $p_now = intval($_GET ['p']);
    $mysql->setQuery("SELECT id FROM user WHERE status <> -1 
                AND (email LIKE '%" . $email_memeber . "%' OR name LIKE '%" . $full_name . "%'"
            . " OR phone LIKE '%" . $phone_memeber . "%')");

    if (isset($_POST['search_members'])) {
        header('location:./?show=memberList&p=1' . '&full_name=' . $_POST['full_name']
                . '&email_memeber=' . $_POST['email_memeber']
                . '&phone_memeber=' . $_POST['phone_memeber']);
    }

    if (isset($_POST['all_members'])) {
        header('location:./?show=memberList&p=1' . '&full_name=*'
                . '&email_memeber=*'
                . '&phone_memeber=*');
    }

    $mysql->query();
    $total = $mysql->getNumRows();
    $numofpages = $total / $pp;
    if ($p_now <= 0) {
        $page = 1;
    } else {
        if ($p_now <= ceil($numofpages))
            $page = $p_now;
        else
            $page = 1;
    }
    $limitvalue = $page * $pp - ($pp);
    // End pagination
    
    //$sql = "SELECT * FROM user WHERE status <>-1 ORDER BY date DESC limit ".$limitvalue.','.$pp;
    $sql = "SELECT * FROM user WHERE status <>-1 
                AND (email LIKE '%" . $email_memeber . "%'" . " OR name LIKE '%" . $full_name . "%'" .
            " OR phone LIKE '%" . $phone_memeber . "%')" .
            " ORDER BY date DESC limit " . $limitvalue . ',' . $pp;
    $mysql->setQuery($sql);
    $row = $mysql->loadAllRow();
    $n = count($row);
    $temp = '';

    for ($i = 0; $i < $n; ++$i) {
        $color = ($i % 2 == 0) ? '#d5d5d5' : '#e5e5e5';
        $temp.= $xtemplate->assign_vars($code_cats, array(
            'id' => $row[$i]['id'],
            'username' => output($row[$i]['name']),
            'Gcolor' => GetOnef('color', 'user_group', 'group_id=' . $row[$i]['user_group']),
            'address' => output(cut_string(str_replace(' nanapet.com', '', $row[$i]['address']), 45)),
            'phone' => output($row[$i]['phone']),
            'email' => output(cut_string($row[$i]['email'], 20)),
            'status' => getStatusUser($row[$i]['status']),
            'date' => date('G:i d/m/Y', $row[$i]['date']),
            'color' => $color));
    }

    $content = $xtemplate->assign_blocks_content($content, array("LIST" => $temp));
    $content = $xtemplate->replace($content, array(
        'lag_user_manager' => $title,
        'lag_page' => $arr_lang['page'],
        'lag_delete' => $arr_lang['del'],
        'update' => $arr_lang['update'],
        'delete_check' => $arr_lang['del_check'],
        'status' => $arr_lang['status'],
        'lag_order' => $arr_lang['order'],
        'del_confirm' => $arr_lang['del_confirm'],
        'lag_date_create' => $arr_lang['date_added'],
        'address' => $arr_lang['contact_address'],
        'phone' => $arr_lang['phone'],
        'lag_del' => $arr_lang['delete'],
        'page' => page_div("./?show=memberList&p=%d_pg&full_name="
                . $_GET['full_name'] . "&email_memeber=" . $_GET['email_memeber']
                . "&phone_memeber=" . $_GET['phone_memeber'], "10", ceil($numofpages), $page),
        'page_number' => $_GET ['p'],
        'full_name' => $full_name_set,
        'email_memeber' => $email_memeber_set,
        'phone_memeber' => $phone_memeber_set,
    ));

    function getStatusUser($status) {
        $time = $status - time();
        if ($_SESSION['lag'] == 'vi') {
            if ($time > 0) {
                return '<i>Khóa ' . date('d', $time) . ' ngày</i>';
            } else {
                return 'Hoạt động';
            }
        } else {
            if ($time > 0) {
                return '<i>Block ' . round($time / 60 * 60 * 24) . ' day</i>';
            } else {
                return 'Actived';
            }
        }
    }
?>