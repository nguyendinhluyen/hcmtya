<?php
    if (($_GET['action'] == 'del') && isset($_GET['id'])) {
        $id = intval($_GET['id']);
        delete_news_result($id);
        if ($_GET['order'] != '') {
            header('location:./?show=newsList_result&p=' . $_GET['p'] . '&order=' . $_GET['order']);
        } else {
            header('location:./?show=newsList_result&p=' . $_GET['p']);
        }
    }

    if (isset($_POST['btndel'])) {
        if (count($_POST['chk']) > 0) {
            $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
            delete_news_result($id);
            if ($_GET['order'] != '') {
                header('location:./?show=newsList_result&p=' . $_GET['p'] . '&order=' . $_GET['order']);
            } else {
                header('location:./?show=newsList_result&p=' . $_GET['p']);
            }
        } else {
            ?>
            <script>
                alert("Chưa chọn đối tượng để xóa! Vui lòng chọn lại! ");
            </script>							
            <?php
        }
    } else if (isset($_POST['btnStatus'])) {
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        Set_status_news_result($id);
        if ($_GET['order'] != '') {
            header('location:./?show=newsList_result&p=' . $_GET['p'] . '&order=' . $_GET['order']);
        } else {
            header('location:./?show=newsList_result&p=' . $_GET['p']);
        }
    }

    $title = 'Quản lý kết quả cuộc thi';
    $xtemplate->path = 'com_news_result/';
    $content = $xtemplate->load('NewsList');
    $code_cats = $xtemplate->get_block_from_str($content, "NEWS");

    //Pagination
    $p_now = intval($_GET ['p']);
    $mysql->setQuery("SELECT newsresult_id 
                    FROM news_result 
                    WHERE languageresult ='" . $lag . "'");
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
    //End pagination

    switch ($_GET['order']) {
        case 'name':
            $orderby = ' newsresult_name asc';
            break;
        case 'name_desc':
            $orderby = ' newsresult_name desc';
            break;
        case 'catalogue':
            $orderby = ' newsresult_catalogue asc';
            break;
        case 'status':
            $orderby = ' statusresult asc';
            break;
        case 'dateadd':
            $orderby = ' dateresult_added asc';
            break;
        case 'dateadd_desc':
            $orderby = ' dateresult_added desc';
            break;
        case 'datemodifiled':
            $orderby = ' lastresult_modified asc';
            break;
        case 'datemodifiled_desc':
            $orderby = ' lastresult_modified desc';
            break;
        default:
            $orderby = ' dateresult_added desc';
            break;
    }

    $sql = "SELECT 
                newsresult_id,
                newsresult_name,					
                newsresult_catalogue,
                statusresult,
                dateresult_added,
                lastresult_modified 
            FROM 
                news_result 
            WHERE 
                languageresult ='" . $_SESSION['lag'] . "' ORDER BY dateresult_added DESC";
    $mysql->setQuery($sql);
    $row = $mysql->loadAllRow();
    $n = count($row);
    $temp = '';
    for ($i = 0; $i < $n; ++$i) {
        $color = ($i % 2 == 0) ? '#d5d5d5' : '#e5e5e5';
        $temp.= $xtemplate->assign_vars($code_cats, array(
            'id' => $row[$i]['newsresult_id'],
            'news_name' => $row[$i]['newsresult_name'],
            'news_catalogue' => get_cats_name_introduce($row[$i]['newsresult_catalogue']),
            'status' => 'Hiển thị',
            'date_added' => date('G:i d/m/Y', $row[$i]['dateresult_added']),
            'last_modified' => ($row[$i]['lastresult_modified'] == '') ? '0' : date('G:i d/m/Y', $row[$i]['lastresult_modified']),
            'color' => $color,
        ));
    }

    $content = $xtemplate->assign_blocks_content($content, array("NEWS" => $temp));
    $date = 'Ngày thêm';
    $date_modify = 'Ngày sửa';
    $lag_status = 'Trạng thái';
    $content = $xtemplate->replace($content, array(
        'tieu_de' => 'Tiêu đề',
        'thuoc_danh_muc' => 'Thuộc danh mục',
        'lag_status' => $lag_status,
        'date' => $date,
        'date_modify' => $date_modify,
        'lag_page' => $arr_lang['page'],
        'p' => ($_GET['p'] == '') ? '1' : intval($_GET['p']),
        'oderby' => $_GET['order'],
        'page' => page_div("./?show=newsList_result&p=%d_pg&order=" . $_GET['order'], "10", ceil($numofpages), $page),
        'lag_edit' => $arr_lang['edit'],
        'delete_check' => $arr_lang['del_check'],
        'del_confirm' => $arr_lang['del_confirm'],
        'status' => $status,
        'opt' => $opt,
    ));
    $script = $xtemplate->get_block_from_str($content, "SCRIPT");
    $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
?>