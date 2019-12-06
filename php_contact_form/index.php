<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact Form</title>
</head>
<body>
    <h2>Contact Us!</h2>

    <form action="data/contact.php" method="post"> 
    <label for="name">Name test</label>
    <input id="name" type="text" name="name" placeholder="name">
    
    <label for="email">Email</label>
    <input id="email" type="email" name="email" required pattern=".+@globex.com" placeholder="email">

    <label for="subject">Subject</label>
    <input id="subject" type="text" name="subject" placeholder="subject">

    <label for="phone">Phone</label>
    <input id="phone" type="tel">

    <label for="message">Message</label>
    <textarea id="message" name="message"></textarea>

    <button type="submit">Submit</button>
    </form>
</body>
</html>
