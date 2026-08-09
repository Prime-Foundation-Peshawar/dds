<?php
/**
 * Proxy for PDC Faculty Data
 * Fetches from the HRMS API used by the old faculty page.
 */
header('Content-Type: application/json');

// --- Fetch from PDC API (same endpoint as old code) ---
$apiUrl = 'https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfoPDC.php';

// Use cURL if available, otherwise fallback to file_get_contents
if (function_exists('curl_version')) {
    $ch = curl_init();
    curl_setopt_array($ch, [
        CURLOPT_URL            => $apiUrl,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_TIMEOUT        => 15,
        CURLOPT_SSL_VERIFYPEER => true,
    ]);
    $response = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);

    if ($httpCode !== 200 || $response === false) {
        http_response_code(502);
        echo json_encode(['error' => 'Failed to fetch data from API']);
        exit;
    }
} else {
    // Fallback (may not work if allow_url_fopen is disabled)
    $response = @file_get_contents($apiUrl);
    if ($response === false) {
        http_response_code(502);
        echo json_encode(['error' => 'Failed to fetch data from API']);
        exit;
    }
}

// Output the JSON exactly as received
echo $response;