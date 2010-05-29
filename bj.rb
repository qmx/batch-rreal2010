# app/controllers/email_controller.rb
def send_emails
  Bj.submit "./script/runner ./jobs/send_digest_emails.rb"
end
