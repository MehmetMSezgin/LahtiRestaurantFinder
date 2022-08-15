import smtplib
from email.message import EmailMessage
#
msg = EmailMessage()
msg['Subject'] = 'Training Invitation'
msg['From'] = 'From Training Team'
msg['To'] = 'EtteplanReceiver@europe.com'
msg.set_content("Test email")

# mail server
server = smtplib.SMTP_SSL('smtp.mail.com', 993)
server.login("EtteplanSender@europe.com", "Password#1234")
server.send_message(msg)
server.quit()
