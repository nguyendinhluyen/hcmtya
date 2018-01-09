<?php
    if (($_GET['action'] == 'del') && isset($_GET['id'])) {
        $id = intval($_GET['id']);
        delete_question($id);
        if ($_GET['order'] != "") {
            header('location:./?show=question&order=' . $_GET['order'] . '&p=' . intval($_GET['p']));
        } else {
            header('location:./?show=question&p=' . intval($_GET['p']));
        }
    }

    if (isset($_POST['btnfindQuestion'])) {
        if (empty($_POST['searchfield']) || $_POST['searchfield'] == "") {
            unset($_SESSION['QUERY_S']);
            $_SESSION['QUERY_KEY_S'] = "";
        } else {
            $temp = ($_POST['searchfield'] == '') ? $_GET['keyword'] : $_POST['searchfield'];
            unset($_SESSION['QUERY_S']);
            $keyword = input($temp);
            $where = "AND question_detail like '%" . $keyword . "%'";
            $_SESSION['QUERY_S'] = $where;
            $where = '';
            $_SESSION['QUERY_KEY_S'] = $_POST['searchfield'];
        }
    }

    if (isset($_POST['btndel'])) {
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        delete_question($id);
        if ($_GET['order'] != "") {
            header('location:./?show=question&order=' . $_GET['order'] . '&p=' . intval($_GET['p']));
        } else {
            header('location:./?show=question&p=' . intval($_GET['p']));
        }
    }

    if (isset($_POST['btnstatus'])) {
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        Set_status_question($id);
        if ($_GET['order'] != "") {
            header('location:./?show=question&order=' . $_GET['order'] . '&p=' . intval($_GET['p']));
        } else {
            header('location:./?show=question&p=' . intval($_GET['p']));
        }
    }

    $title = 'Danh sách câu hỏi tự luận';
    $xtemplate->path = 'com_question/';
    $content = $xtemplate->load('ProductList');
    $code_cats = $xtemplate->get_block_from_str($content, "QUESTION");
    $p_now = intval($_GET ['p']);
    $sql = "SELECT question_id 
            FROM question
            WHERE language='" . $_SESSION['lag'] . "' " . $_SESSION['QUERY_S'] . $_SESSION['QUERY_P'];
    $mysql->setQuery($sql);
    $mysql->query();
    $total = $mysql->getNumRows();
    
    // Begin pagination
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
    
    switch ($_GET['order']) {
        case 'ordernumber':
            $orderby = ' ordernumber asc';
            break;
        
        case 'ordernumber_desc':
            $orderby = ' ordernumber desc';
            break;
        
        case 'name':
            $orderby = ' question_detail asc';
            break;

        case 'name_desc':
            $orderby = ' question_detail desc';
            break;

        case 'status':
            $orderby = ' question_status asc';
            break;

        case 'dateadd':
            $orderby = ' question_date_added asc';
            break;

        case 'dateadd_desc':
            $orderby = ' question_date_added desc';
            break;

        case 'datemodifiled':
            $orderby = ' modified_date desc';
            break;

        default:
            $orderby = ' question_id desc';
            break;
    }

    $sql = "SELECT * 
            FROM question
            WHERE language='" . $_SESSION['lag'] . "' " . $_SESSION['QUERY_S'] . $_SESSION['QUERY_P']
            . " ORDER BY $orderby limit $limitvalue,$pp";
    $mysql->setQuery($sql);
    $row = $mysql->loadAllRow();
    $n = count($row);
    $temp = '';
    $begin = 0;
    $end = $n;

    for ($i = $begin; $i < $end; ++$i) {
        $color = ($i % 2 == 0) ? '#d5d5d5' : '#e5e5e5';
        $temp.= $xtemplate->assign_vars($code_cats, array(
            'id' => $row[$i]['question_id'],
            'ordernumber' => $row[$i]['ordernumber'],
            'question_detail' => cut_string($row[$i]['question_detail'], 60 , true),
            'question_status' => ($row[$i]['question_status'] == '1') ? $arr_lang['show'] : '<i>' . $arr_lang['hidden'] . '</i>',
            'date_added' => date('G:i d/m/Y', $row[$i]['question_date_added']),
            'modified_date' => ($row[$i]['modified_date'] == '0') ? '0' : date('G:i d/m/Y', $row[$i]['modified_date']),
            'color' => $color
        ));
    }

    $content = $xtemplate->assign_blocks_content($content, array("QUESTION" => $temp));
    $content = $xtemplate->replace($content, array(
        'lag_question_manager' => $title,
        'suggestionText' => $suggestionText,
        'defaultText' => 'Tìm câu hỏi tự luận: ',
        'questionKey' => $_SESSION['QUERY_KEY_S'],
        'lag_page' => $arr_lang['page'],
        'p' => ($_GET['p'] == '') ? '1' : intval($_GET['p']),
        'oderby' => $_GET['order'],
        'page' => page_div("./?show=question&p=%d_pg&order=" . $_GET['order'], "10", ceil($numofpages), $page),
        'lag_delete' => $arr_lang['del'],
        'lag_edit' => $arr_lang['edit'],
        'lag_status' => $arr_lang['status'],
        'lag_date_create' => $arr_lang['date_added'],
        'lag_date_modifiled' => $arr_lang['date_modifiled'],
        'delete_check' => $arr_lang['del_check'],
        'del_confirm' => $arr_lang['del_confirm'],
        'questionname' => 'Câu hỏi',
        'shi' => $arr_lang['shi'],
    ));

    $script = $xtemplate->get_block_from_str($content, "SCRIPT");
    $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
?>