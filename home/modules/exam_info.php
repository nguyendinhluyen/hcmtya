<?php
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    if (($_SESSION['username'] == '')) {
        ?>
        <script>
            window.location = "<?php echo $linkS . 'dang-nhap'; ?>";
        </script>
        <?php
    }
    $user_info = $xtemplate->load('exam_info_bootstrap');
    if (isset($_SESSION['username'])) {
        $user = input($_SESSION['username'], 1);
        $row_ac = GetOneRow('email,
                            name,
                            phone,
                            address,
                            avarta'
                    , 'user'
                    , "email = '$user' AND status > -1");
        
        if (empty(trim($row_ac['email']))
                || empty(trim($row_ac['name']))
                || empty(trim($row_ac['phone']))
                || empty(trim($row_ac['address']))
                || empty(trim($row_ac['avarta']))) {
            ?>
            <script>
                alert('Vui lòng cập nhật thông tin trước khi tham gia thi nhé!');
                window.location = "thong-tin-tai-khoan";
            </script>
            <?php
        }
        
        $user_info = $xtemplate->replace($user_info, array(
            'avatar' => $row_ac['avarta'],
            'name_hello' => str_replace("(Chị) ", "", (str_replace("(Anh) ", "", $row_ac['name']))),
        ));

        $content = $user_info;
    } else {
        ?>
        <script>
            alert('Bạn chưa đăng nhập. Mời bạn đăng nhập');
            window.location = "dang-nhap";
        </script>
        <?php
    }
    $breadcrumbs_path .= 'Tham gia thi';
    $tilte_page = 'Tham gia thi | ' . 'Sở du lịch Hồ Chí Minh';
    $content = $user_info;
?>
