<?php

include "connection.php";
include "SMTP.php";
include "PHPMailer.php";
include "Exception.php";

use PHPMailer\PHPMailer\PHPMailer;


if(isset($_GET["e"])){

    $email = $_GET["e"];

    $rs = Database::search("SELECT * FROM `user` WHERE `email`='".$email."'");    
    $n = $rs->num_rows;

    if($n == 1){

        $code = uniqid();
        Database::iud("UPDATE `user` SET `verification_code`='".$code."' WHERE `email`='".$email."'");

        $mail = new PHPMailer;
        $mail->IsSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'malingadushan27@gmail.com';
        $mail->Password = 'dodtyutfiaylzgzb';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;
        $mail->setFrom('malingadushan27@gmail.com', 'Reset Password');
        $mail->addReplyTo('malingadushan27@gmail.com', 'Reset Password');
        $mail->addAddress($email);
        $mail->isHTML(true);
        $mail->Subject = ' Fruitables Forgot password Verification Code ';
        $bodyContent = '<h1 style="color:black;" > Hi, Your Verification Code is '.$code.'</h1>';
        $mail->Body  = $bodyContent;

        if(!$mail->send()){
            echo 'Verification code sending failed.';
        }else{
            echo 'Success';
        }

    }else{
        echo ("Please enter your Email Address in Email Field.");
    }

}else{
    echo ("Invalid Email Address.");
}

?>