<?php
$apiKey = "SENDGRID_API_KEY";   // from SendGrid
$toEmail = "receiver@example.com";

$data = [
    "personalizations" => [[
        "to" => [["email" => $toEmail]]
    ]],
    "from" => ["email" => "sender@yourdomain.com"],
    "subject" => "Test Mail",
    "content" => [[
        "type" => "text/plain",
        "value" => "Hello! This is a test email."
    ]]
];

$ch = curl_init("https://api.sendgrid.com/v3/mail/send");
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Authorization: Bearer $apiKey",
    "Content-Type: application/json"
]);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($ch);
$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

if ($httpCode == 202) {
    echo "✅ Mail sent successfully";
} else {
    echo "❌ Mail failed<br>";
    echo "Reason: HTTP $httpCode<br>";
    echo "Response: $response";
}

curl_close($ch);
?>
