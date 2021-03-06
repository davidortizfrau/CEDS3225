class Contact < ActionMailer::Base
  # default from: "bahrnsbr@msudenver.edu"

  def send_message(name, email, content)
    @name = name
    @email = email
    @content = content

    mail to: "bahrnsbr@msudenver.edu, geeder@gmail.com", 
         subject: "#{@name} sent a you message from CDES3225 App",
         from: "#{@email}"
  end
end
