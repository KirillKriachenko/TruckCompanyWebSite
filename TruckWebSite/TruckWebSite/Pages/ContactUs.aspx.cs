using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckWebSite
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {

            try
            {

                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add("fabiociconi@yahoo.com.br");
                mailMessage.From = new MailAddress(emailTextBox.Text);
                mailMessage.Subject = nameTextBox.Text; 
                mailMessage.Body = descriptionTextBox.Text;
                SmtpClient smtpClient = new SmtpClient("smtp.mail.yahoo.com.br");
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("user", "pass");
                smtpClient.Send(mailMessage);
                labelError.Visible = true;
                labelError.Text = "Email Sent SucessFully.";
                Response.Write("E-mail sent!");
            }
            catch (Exception ex)
            {
                labelError.Visible = true;
                labelError.Text = ex.ToString();
                Response.Write("Could not send the e-mail - error: " + ex.Message);
            }


            //try
            //{
            //    MailMessage mail = new MailMessage();
            //    //mail.To.Add("fabiociconi@yahoo.com.br");
            //    mail.From = new MailAddress(emailTextBox.Text);


            //    mail.Subject = nameTextBox.Text;
            //    string Body = descriptionTextBox.Text;
            //    mail.Body = Body;
            //    mail.IsBodyHtml = true;

            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Host = "smtp.gmail.com";
            //    smtp.EnableSsl = true;

            //    System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

            //    NetworkCred.UserName = "fabiociconi@gmail.com";
            //    NetworkCred.Password = "cifa410829";
            //    smtp.UseDefaultCredentials = true;
            //    smtp.Credentials = NetworkCred;
            //    smtp.Port = 587;

            //    smtp.Send(mail);

            //    labelError.Visible = true;
            //    labelError.Text = "Email Sent SucessFully.";
            //}
            //catch (Exception ex)
            //{
            //    labelError.Visible = true;
            //    labelError.Text=ex.ToString();
            //}
        }
    }
}