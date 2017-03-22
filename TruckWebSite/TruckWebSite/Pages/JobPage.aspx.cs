using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruckWebSite.DB;

namespace TruckWebSite.Pages
{
    public partial class JobPage : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new TruckCompanyDBContainer())
            {
                var query = from b in db.JobSet
                            orderby b.JobId
                          
                            select b;

                foreach (var item in query)
                {                 
                    LinkButton linkButton = new LinkButton();
                    linkButton.Text = item.JobTitle;
                    Panel2.Controls.Add(linkButton);
                    Panel2.Controls.Add(new LiteralControl("<br/>"));

                    Label salary_lb = new Label();
                    salary_lb.CssClass = 
                    salary_lb.Text = item.Salary.ToString();
                    Panel2.Controls.Add(salary_lb);
                    Panel2.Controls.Add(new LiteralControl("<br/>"));

                    Label description_lb = new Label();
                    description_lb.Text = item.Description;
                    Panel2.Controls.Add(description_lb);
                    Panel2.Controls.Add(new LiteralControl("<br/><br/>"));
                }
               
            }
        }
    }
}