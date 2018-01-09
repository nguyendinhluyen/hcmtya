<?php
    date_default_timezone_set('Asia/Ho_Chi_Minh');

    // random exam
    function randomExam() {
        $examCategory = new Product();
        $categories = $examCategory->getListAllMutilChoiceCategory();
        $minRandom = 0;
        $maxRandom = count($categories);
        $randomExam = rand($minRandom, $maxRandom - 1);
        return $categories[$randomExam]['categories_id'];
    }

    // Check user exam
    function isUserExam($username) {
        $examCategory = new Product();
        $idExam = $examCategory->isUserExam($username);
        if ($idExam > 0) {
            return $idExam;
        }
        return 0;
    }

    // Check user finish exam
    function isUserFinishExam($username) {
        $examFinish = new Product();
        $idFinishExam = $examFinish->isUserFinishExam($username);
        if ($idFinishExam > 0) {
            return $idFinishExam;
        }
        return 0;
    }

    // Check user has full info
    function isUserFullInfo($username) {
        $userFullInfo = new Product();
        $userInfo = $userFullInfo->userFullInfo($username);
        if ($userInfo > 0) {
            return $userInfo;
        }
        return 0;
    }

    // calculate score for multi choices 
    function calculateScore($selected_id) {
        $score = new Product();
        return $score->calculateScore($selected_id);
    }

    if (empty($_SESSION['username'])) {
        ?>
        <script>
            window.location = "<?php echo $linkS . 'dang-nhap'; ?>";
        </script>
        <?php
    }
    if (isset($_SESSION['username'])) {
        // Check user full info
        if (isUserFullInfo($_SESSION['username']) === 0) {
            ?>
            <script>
                alert('Vui lòng cập nhật thông tin trước khi tham gia thi nhé!');
                window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
            </script>
            <?php
        }

        if (isUserFinishExam($_SESSION['username']) > 0) {
            ?>
            <script>
                alert("Bạn đã tham gia phần thi trắc nghiệm! Bạn chỉ được tham gia 1 lần!");
                window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
            </script>
            <?php
        } else {
            $idExam = isUserExam($_SESSION['username']);
            if ($idExam > 0) {
                $randCategory = $idExam;
            } else {
                $randCategory = randomExam();
                if (empty($randCategory)) {
                    ?>
                    <script>
                        alert("Hệ thống đang cập nhật câu hỏi! Vui lòng quay lại sau nhé!");
                        window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                    </script>
                    <?php
                }
                
                // save exam
                $timeNow = time();
                $endTime = $timeNow + (24 * 60 * 60);
                $sql = "UPDATE user SET exam =" . $randCategory
                        . ", start_time_exam = " . $timeNow
                        . ", end_time_exam = " . $endTime
                        . " WHERE email = '" . $_SESSION['username'] . "'";
                $mysql->setQuery($sql);
                if ($mysql->query()) {

                } else {
                    $randCategory = 0;
                    ?>
                    <script>
                        alert('Hệ thống đang gặp lỗi. Vui lòng đăng nhập lại!');
                        window.location = "dang-nhap";
                    </script>
                    <?php
                }
            }

            $multichoice = new Product();
            $mulChoices = $multichoice->getListAllMutilChoice($randCategory);
            $info = $xtemplate->load('multiplechoice_bootstrap');
            $total = count($mulChoices);

            // Navigation - we have 100 questions
            /* $pp = 100;
              $p_now = intval($_GET ['page']);
              $numofpages = $total / $pp;
              $page = 0;
              if ($p_now <= 0) {
              $page = 1;
              } else {
              if ($p_now <= ceil($numofpages)) {
              $page = $p_now;
              } else {
              $page = 1;
              }
              }
              $limitvalue = $page * $pp - ($pp);
              // End navigation

              $begin = $limitvalue;
              if ($numofpages != $p_now) {
              $end = $begin + $pp;
              } else {
              $end = $total;
              } */

            $block = $xtemplate->get_block_from_str($info, 'MULTICHOICES');
            $tpl = "";
            $selected_id = ";";
            $begin = 0;
            $end = $total;
            for ($i = $begin; $i < $end; $i++) {
                if (!empty(trim($mulChoices[$i]['products_name']))) {
                    $tpl.= $xtemplate->assign_vars($block, array(
                        'multichoice_question' => $mulChoices[$i]['products_name'],
                        'resultfirst' => $mulChoices[$i]['resultfirst'],
                        'resultsecond' => $mulChoices[$i]['resultsecond'],
                        'resultthird' => $mulChoices[$i]['resultthird'],
                        'id' => $mulChoices[$i]['products_id'],
                        'stt' => $i + 1
                    ));
                }
                $selected_id .= (!empty($_POST['result' . $mulChoices[$i]['products_id']])) ? $_POST['result' . $mulChoices[$i]['products_id']][0] : '';
                $selected_id .=";";
            }

            if (isset($_POST['btnSumbit'])) {
                // Check time finish 
                $timeFinish = $multichoice->timeFinish($_SESSION['username']);
                $end_time = $timeFinish['end_time_exam'];
                if (time() > $end_time + 60 * 5) {
                    $sql = "UPDATE user SET exam_check = 2"
                            . " WHERE email = '" . $_SESSION['username'] . "'";
                    $mysql->setQuery($sql);
                    if ($mysql->query()) {
                        ?>
                        <script>
                            alert("Rất tiết bạn đã hết thời gian gửi bài thi!");
                            window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                        </script>
                        <?php
                    } else {
                        ?>
                        <script>
                            alert('Hệ thống chưa lưu được kết quả thi của bạn. Vui lòng thử lại!');
                        </script>
                        <?php
                    }
                } else {
                    $total_score = calculateScore($selected_id);
                    // Update result for user
                    $sql = "UPDATE user SET result_exam = '" . $selected_id ."'"
                            . " ,exam_check = 1"
                            . " ,score_exam = ".$total_score
                            . " WHERE email = '" . $_SESSION['username'] . "'";
                    $mysql->setQuery($sql);
                    if ($mysql->query()) {
                        ?>
                        <script>
                        alert("Bạn đã hoàn thành phần thi trắc nghiệm !");
                        window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                        </script>
                        <?php
                    } else {
                        ?>
                        <script>
                        alert('Hệ thống chưa lưu được kết quả thi của bạn. Vui lòng thử lại!');
                        </script>
                        <?php
                    } 
                }
            }

            $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
            $breadcrumbs_path .= ' &raquo; ' . 'Thi trắc nghiệm';
            $tilte_page = 'Trắc nghiệm' . " | Sở du lịch Hồ Chí Minh";
            $info = $xtemplate->assign_blocks_content($info, array(
                'MULTICHOICES' => $tpl
            ));

            $timeFinish = $multichoice->timeFinish($_SESSION['username']);
            $timedown = $timeFinish['end_time_exam'] - time();
            $username = $timeFinish['name'];
            $birthday = date("d-m-Y", $timeFinish['birthday']);
            if ($timedown < 0) {
                $timedown = 0;
            }
            $info = $xtemplate->replace($info, array(
                'timedown' => $timedown,
                'username' => $username,
                'birthday' => $birthday,
                'start_date' => date("G:i d-m-Y ", $timeFinish['start_time_exam']),
                //'timedown' => '1',
                //'page' => pagination($linkS . "trac-nghiem/", ceil($numofpages), $page),
            ));

            $content = $info;
        }
    } else {
        ?>
        <script>
            alert('Bạn chưa đăng nhập. Mời bạn đăng nhập');
            window.location = "dang-nhap";
        </script>
        <?php
    }
?>