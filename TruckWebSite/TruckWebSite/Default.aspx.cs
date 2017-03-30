using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TruckWebSite.DB;

namespace TruckWebSite
{
    /// <summary>
    /// 
    /// </summary>
    public partial class Default : System.Web.UI.Page
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelWarnig.Visible = false;

            if (!Page.IsPostBack)
                PopularDropDownList();
        }
        /// <summary>
        /// 
        /// </summary>
        private void PopularDropDownList()
        {
            using (var db = new TruckCompanyDBContainer())
            {
                var query = from b in db.CarSet
                            join f in db.BrancheSet on b.BrancheBrancheId equals f.BrancheId into prodGroup
                            select new { b.Branche, b.Brand, b.Year, b.Plate};
                foreach (var item in query)
                {
                    DropDownList.Items.Add(new ListItem(item.Plate));
                    DropDownList1.Items.Add(new ListItem(item.Year.ToString()));
                    DropDownList2.Items.Add(new ListItem(item.Brand.ToString()));
                    DropDownList3.Items.Add(new ListItem(item.Branche.Location));                   
                }
            }            
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonSeach_Click(object sender, EventArgs e)
        {
            //Pegar o valor do item do DropDownList
            //string plate = DropDownList.SelectedValue.ToString();
            string plate = DropDownList.SelectedItem.ToString();
            string Year = DropDownList.SelectedValue.ToString();
            string Brand = DropDownList.SelectedValue.ToString();
            string Branche = DropDownList.DataTextField.ToString();

            if (plate == "X2LL2EF" && Year == "2014" &&
                Brand == "VOLKSWAGEN" && Branche == "TORONTO" && RadioButtonUsed.Checked)
            {
                LabelWarnig.Visible = false;
                Response.Redirect("CarDetails.aspx");
            }
            else
            {
                LabelWarnig.Visible = true;
            }
        }
    }
}