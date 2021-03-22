<?php

date_default_timezone_set('America/Sao_Paulo');

include 'db/config.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

$UPLOAD_FOLDER = 'uploads/';

$NOME = $_POST['nome'];
$EMAIL = $_POST['email'];
$TELEFONE = $_POST['telefone'];
$CARGO = $_POST['cargo'];
$ESCOLARIDADE = $_POST['escolaridade'];
$OBSERVACOES = isset($_POST['observacoes'])
    ? $_POST['observacoes']
    : 'Não informado';
$DATA = date('d/m/Y H:i:s');
$IP = $_SERVER['REMOTE_ADDR'];


$NAME_OF_UPLOADED_FILE = basename($_FILES['arquivo']['name']);

$TYPE_OF_UPLOADED_FILE = substr(
    $NAME_OF_UPLOADED_FILE,
    strrpos($NAME_OF_UPLOADED_FILE, '.') + 1
);

$SIZE_OF_UPLOADED_FILE = $_FILES['arquivo']['size'] / 1024;

$MAX_ALLOWED_FILE_SIZE = 1024;
$ALLOWED_EXTENSIOS = ['doc', 'docx', 'pdf'];

if ($SIZE_OF_UPLOADED_FILE > $MAX_ALLOWED_FILE_SIZE)
{
    echo $ERRORS .= "\n Tamanho do arquivo é superior a 1 MB <br>";
}

$ALLOWED_EXT = false;
for ($i = 0; $i < sizeof($ALLOWED_EXTENSIOS); $i++){
    if (strcasecmp($ALLOWED_EXTENSIOS[$i], $TYPE_OF_UPLOADED_FILE) == 0){
        $ALLOWED_EXT = true;
    }
}

if (!$ALLOWED_EXT){
    'Tipo de arquivo não suportado';
}

$PATH_OF_UPLOADED_FILE = $UPLOAD_FOLDER . $NAME_OF_UPLOADED_FILE;
$TMP_PATH = $_FILES['arquivo']['tmp_name'];

if (is_uploaded_file($TMP_PATH)){
    if (!copy($TMP_PATH, $PATH_OF_UPLOADED_FILE)){
        $ERRORS .= '\n Erro ao salvar arquivo';
    }
}

$SQL = "INSERT INTO candidato (nome, email, telefone, cargo, escolaridade, observacoes, arquivo, data_hora, ip)
VALUES ('$NOME', '$EMAIL', '$TELEFONE', '$CARGO', '$ESCOLARIDADE', '$OBSERVACOES', '$NAME_OF_UPLOADED_FILE', '$DATA', '$IP')";
$RES = mysqli_query($conn, $SQL);

$MAIL = new PHPMailer();

//Server settings
$MAIL->isSMTP(); //Send using SMTP
$MAIL->Host = 'smtp.gmail.com'; //Set the SMTP server to send through
$MAIL->SMTPAuth = true; //Enable SMTP authentication
$MAIL->Username = 'teste@gmail.com'; //SMTP username
$MAIL->Password = 'teste'; //SMTP password
$MAIL->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
$MAIL->Port = 587; //TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

//Recipients
$MAIL->setFrom('teste@gmail.com', 'Mailer');
$MAIL->addAddress('teste@gmail.com', 'Joe User'); //Add a recipient

//Attachments
$MAIL->addAttachment('/var/tmp/file.tar.gz'); //Add attachments
$MAIL->addAttachment('/tmp/image.jpg', 'new.jpg'); //Optional name

//Content
$MAIL->isHTML(true); //Set email format to HTML
$MAIL->FromName = $NOME;
$MAIL->Subject = $CARGO;
$MAIL->addAttachment($PATH_OF_UPLOADED_FILE);
$MAIL->Body = " <b>Nome</b>: {$NOME} <br>
                <b>E-mail</b>: {$EMAIL} <br>
                <b>Telefone</b>: {$TELEFONE} <br>
                <b>Cargo</b>: {$CARGO} <br>
                <b>Escolaridade</b>: {$ESCOLARIDADE} <br>
                <b>Observações</b>: {$OBSERVACOES} <br>
                <b>Data/hora</b>: {$DATA} <br>
                <b>IP</b>: {$IP}";

if ($MAIL->send()){
    echo 'E-mail enviado com suceesso';
} else {
    echo "Erro ao enviar e-mail. <br> Mailer Error: {$MAIL->ErrorInfo}";
}
?>
