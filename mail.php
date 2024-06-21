<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
    <style>
        /* Custom style to set the font to Arial */
        .swal2-popup {
            font-family: 'Arial', sans-serif;
        }
    </style>
<body>




<?php


require "admin/Mail/phpmailer/PHPMailerAutoload.php";

// Check if the form is submitted
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['subject']) && isset($_POST['message'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $recipientEmail = 'holyredeemerschooleduc@gmail.com'; // Replace with the recipient's email address

    

    // Create a new PHPMailer instance
    $mail = new PHPMailer(true);

    try {
        // Server settings
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; // Your SMTP server address
        $mail->SMTPAuth = true;
        $mail->Username = 'holyredeemerschooleduc@gmail.com'; // Your SMTP username
        $mail->Password = 'syuhibutnrspktrs'; // Your SMTP password
        $mail->SMTPSecure = 'tls'; // Enable TLS or SSL
        $mail->Port = 587; // Use the appropriate port (587 for TLS, 465 for SSL)

        // Sender and recipient
        $mail->setFrom($email, $name);
        $mail->addReplyTo($email, $name);
        //$mail->addAddress($userEmail);

        // Recipient email
        $mail->addAddress($recipientEmail);

        // Content
        $mail->isHTML(false); // Set to true if your message is HTML
        $mail->Subject = $subject;
        $mail->Body = $message;

        // Send the email
        $mail->send(); ?>
        <script>
        // Show the custom alert using SweetAlert2
        Swal.fire({
            title: "Sent!",
            text: "Your message has been sent!",
            icon: "success",
            showCancelButton: false,
            confirmButtonColor: "#3085d6",
            confirmButtonText: "OK",
        }).then((result) => {
            // Check if the "OK" button is clicked
            if (result.isConfirmed) {
                redirectToPreviousPage();
            }
        });

        // Function to redirect to the previous page
        function redirectToPreviousPage() {
            //window.history.back();
            window.location='index.php'
        }
    </script>


    <?php } catch (Exception $e) { ?>

        <script>
							// Show the custom alert using SweetAlert2
							Swal.fire({
								title: "Error",
								text: "Message could not be sent. <?php echo $mail->ErrorInfo ?>",
								icon: "error",
								showCancelButton: false,
								confirmButtonColor: "#3085d6",
								confirmButtonText: "OK",
							}).then((result) => {
								// Check if the "OK" button is clicked
								if (result.isConfirmed) {
									redirectToPreviousPage();
								}
							});

							// Function to redirect to the previous page
							function redirectToPreviousPage() {
								//window.history.back();
								window.location='index.php'
							}
						</script>

<?php    }
} else {?>
    <script>
    // Show the custom alert using SweetAlert2
    Swal.fire({
        title: "Error",
        text: "Please fill out all required fields.",
        icon: "warning",
        showCancelButton: false,
        confirmButtonColor: "#3085d6",
        confirmButtonText: "OK",
    }).then((result) => {
        // Check if the "OK" button is clicked
        if (result.isConfirmed) {
            redirectToPreviousPage();
        }
    });

    // Function to redirect to the previous page
    function redirectToPreviousPage() {
        //window.history.back();
        window.location='index.php'
    }
</script>



<?php }
?>



</body>
</html>
