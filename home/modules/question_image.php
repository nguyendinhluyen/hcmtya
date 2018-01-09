<?php
    date_default_timezone_set('Asia/Ho_Chi_Minh');

    // random exam
    function randomExam() {
        $examQuestion = new Product();
        $questions = $examQuestion->getListAllQuestionImage();
        $minRandom = 0;
        $maxRandom = count($questions);
        $randomExam = rand($minRandom, $maxRandom - 1);
        return $questions[$randomExam]['question_id'];
    }

    // Check user exam
    function isUserExam($username) {
        $examQuestion = new Product();
        $idExam = $examQuestion->isUserExamQuestionImage($username);
        if ($idExam > 0) {
            return $idExam;
        }
        return 0;
    }

    // Check user finish exam
    function isUserFinishExam($username) {
        $examFinish = new Product();
        $idFinishExam = $examFinish->isUserFinishExamQuestionImage($username);
        if ($idFinishExam > 0) {
            return $idFinishExam;
        }
        return 0;
    }
    
    // Check user finish multi choice exam
    function isUserFinishMultiChoiceExam($username) {
        $examFinish = new Product();
        $idFinishExam = $examFinish->isUserFinishMultiChoiceExam($username);
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
        
        if (isUserFinishMultiChoiceExam($_SESSION['username']) !== "1") {
            ?>
            <script>
                alert('Bạn chưa tham gia thi trắc nghiệm! Vui lòng thi trắc nghiệm trước nhé!');
                window.location = "<?php echo $linkS . 'tham-gia-thi'; ?>";
            </script>
            <?php
        } else { 
            if (isUserFinishExam($_SESSION['username']) > 0) {
                ?>
                <script>
                    alert("Bạn đã tham gia phần thi ảnh luận! Bạn chỉ được tham gia 1 lần!");
                    window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                </script>
                <?php
            } else {
                $idExam = isUserExam($_SESSION['username']);
                if ($idExam > 0) {
                    $randQuestion = $idExam;
                } else {
                    $randQuestion = randomExam();
                    if (empty($randQuestion)) {
                        ?>
                        <script>
                            alert("Hệ thống đang cập nhật câu hỏi! Vui lòng quay lại sau nhé!");
                            window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                        </script>
                        <?php
                    }

                    // save exam
                    $timeNow = time();
                    $endTime = $timeNow + (7 * 24 * 60 * 60);
                    $sql = "UPDATE user SET exam_question_image =" . $randQuestion
                            . ", start_time_exam_question_image = " . $timeNow
                            . ", end_time_exam_question_image = " . $endTime
                            . " WHERE email = '" . $_SESSION['username'] . "'";
                    $mysql->setQuery($sql);
                    if ($mysql->query()) {

                    } else {
                        $randQuestion = 0;
                        ?>
                        <script>
                            alert('Hệ thống đang cập nhật. Vui lòng quay lại sau nhé!');
                            window.location = "<?php echo $linkS . 'thong-tin-tai-khoan'; ?>";
                        </script>
                        <?php
                    }
                }

                $info = $xtemplate->load('question_image_bootstrap');
                if (isset($_POST['btnSumbit'])) {
                    // Check time finish 
                    $question = new Product();
                    $timeFinish = $question->timeFinish($_SESSION['username']);
                    $end_time = $timeFinish['end_time_exam_question_image'];
                    if (time() > $end_time + 60 * 5) {
                        $sql = "UPDATE user SET exam_check_question_image = 2"
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
                        $file = $_FILES ["question"]["name"];
                        if (empty(trim($file))) {
                            ?>
                            <script>
                            alert("Vui lòng tải bài thi (.doc, .docx, .pdf) bạn nhé!");
                            window.location = "<?php echo $linkS . 'thi-anh-luan'; ?>";
                            </script>
                            <?php
                        } else {
                            $file_ext = strrchr($file, '.');
                            $whitelist = array(".doc",".docx",".pdf");
                            if (!(in_array($file_ext, $whitelist))) {
                                $error++;
                                ?>				
                                <script>
                                    alert('Bài viết không đúng định dạng .doc, .docx, .pdf !');
                                    window.location = "<?php echo $linkS . 'thi-anh-luan'; ?>";
                                </script>
                                <?php
                            } else {
                                if($_FILES['question']['size'] > 5000000){
                                    $error++;
                                    ?>
                                    <script>
                                        alert('Kích thước bài viết phải <= 5MB!');
                                        window.location = "<?php echo $linkS . 'thi-anh-luan'; ?>";
                                    </script>
                                    <?php
                                } else {
                                    $usInfo = GetOneRow('id, name', 'user', "email ='".$_SESSION['username']."' AND status >-1");
                                    $file = renameFile($_FILES["question"]["name"], $usInfo['name'] . '-answer-image-' . $usInfo['id']);
                                    if (move_uploaded_file($_FILES ["question"]["tmp_name"], '../upload/question_image/' . $file)) {
                                        $sql_u = "UPDATE user SET exam_answer_image = '" . $file 
                                                . "' , exam_check_question_image = 1 "
                                                . " WHERE email = '" . $_SESSION['username'] . "' AND status > -1";
                                        $mysql->setQuery($sql_u);
                                        if ($mysql->query()) {
                                            ?>
                                            <script>
                                            alert("Bạn đã hoàn thành phần thi ảnh luận !");
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
                            }
                        }
                    }
                }

                $breadcrumbs_path .= '<a href="{linkS}">Trang chủ</a>';
                $breadcrumbs_path .= ' &raquo; ' . 'Thi ảnh luận';
                $tilte_page = 'Thi ảnh luận' . " | Sở du lịch Hồ Chí Minh";
                $question = new Product();
                $timeFinish = $question->timeFinish($_SESSION['username']);
                $timedown = $timeFinish['end_time_exam_question_image'] - time();
                $username = $timeFinish['name'];
                $birthday = date("d-m-Y", $timeFinish['birthday']);
                if ($timedown < 0) {
                    $timedown = 0;
                }
                $question_id = $timeFinish['exam_question_image'];
                $question_image = $question->getQuestionImage($question_id);
                $image_info = getimagesize("../upload/product/thumb/" . $question_image['question_image']); 
                $width_orig  = $image_info[0]; // current width as found in image file
                $height_orig = $image_info[1]; // current height as found in image file
                $newwidth = 0;
                if ($width_orig > 750) {
                    $newwidth = 750;
                    $newheight=($height_orig/$width_orig) * $newwidth;
                } else {
                    $newwidth = $width_orig;
                    $newheight = $height_orig;
                }
                
                $imagesrc = "<img src='{linkS}upload/product/thumb/" 
                        . $question_image['question_image']."' width='".$newwidth."'/>";
                $info = $xtemplate->replace($info, array(
                    'timedown' => $timedown,
                    'username' => $username,
                    'birthday' => $birthday,
                    'start_date' => date("G:i d-m-Y ", $timeFinish['start_time_exam_question_image']),
                    'question_content' => $question_image['question_detail'],
                    'image' => $imagesrc,
                    'newwidth' => $newwidth
                ));
                $content = $info;
            }
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