<?php

if(empty($_POST['email'])) {
    echo 'No..';
    exit;
}

if(empty($_POST)) {
    echo 'No..oh...oh..';
    exit;
}

$name='';
$email='';
$subject='';
$message='';
$recipient="contact@domain.com";

$email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
$phone_exp = '[0-9]{3}-[0-9]{3}-[0-9]{4}';

if(isset($_POST['name'])) {
    $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);

}

if(isset($_POST['email'])) {
    $email = str_replace(array("\r","\n","%0a","%0d"),'',$_POST['email']);
    $email = filter_var($email, FILTER_VALIDATE_EMAIL);
}

if(isset($_POST['subject'])) {
    $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['message'])) {
    $message = $_POST['message'];
}

// validate try here 

if(!preg_match($email_exp, $email)) {
    echo "Please Check your email!";
}


$headers = array(
    'From' => 'noreply@test.ca',
    'Reply-To' => $name.'<'.$email.'>'
);

if(mail($recipient, $subject, $message, $headers)) {
    echo '<p> Thank you contacting us, '.$name.'</p>';
} else {
    echo '<p> We are sorry but eamil did not go through</p>';
}

//redirect to home page try here
function redirectHome($url) {
    header('Location:' . $url);
    exit;
}