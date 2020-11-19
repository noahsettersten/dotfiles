import os
import protonmail

client = protonmail.core.ProtonmailClient()
client.login(os.environ['PMAIL_USERNAME'], os.environ['PMAIL_PASSWORD'])

has_new_mail = client.has_new_mail()
print('Has new mail: ', has_new_mail)

mails = client.get_mails("inbox")
print("Existing mail: ", mails)

client.destroy()
