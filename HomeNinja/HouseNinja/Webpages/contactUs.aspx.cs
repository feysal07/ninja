using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HouseNinja.Webpages
{
    public partial class contactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            //"bharatverma2488@gmail.com" sender
            //"bharatverma0126@gmail.com" reciever
            String senderEmailId = txtEmail.Value;

            MailMessage mm = new MailMessage("bharatverma2488@gmail.com", "bharatverma0126@gmail.com");
            mm.Subject = txtSubject.Value;
            mm.Body = "Name: " + txtName.Value + "<br /><br />Email: " + txtEmail.Value + "<br />" + txtMessage.Value;
            //if (FileUpload1.HasFile)
            //{
            //    string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            //    mm.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
            //}
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "bharatverma2488@gmail.com";
            NetworkCred.Password = "pass2488";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.Text = "Email Sent SucessFully.";
        }
    }
}