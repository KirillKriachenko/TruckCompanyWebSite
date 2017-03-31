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
    ///  Main page of Company Truck's website
    ///  by Fabio Alexandre Ciconi
    /// </summary>
    public partial class Default : System.Web.UI.Page
    {
        /// <summary>
        /// LOAD PAGE 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            /*WARNING MESSAGE TO INVISIBLE*/
            LabelWarnig.Visible = false;

            /*CHECK IF NOT PAGE POSTBACK POPULATE THE DROPDOWNLISTS*/
            if (!Page.IsPostBack)
                PopularDropDownList();

        }

        /// <summary>
        /// This method has the function to populate the mini-form with information provides by databases
        /// database name:TRUCKCOMPANYDB
        /// </summary>
        private void PopularDropDownList()
        {
            using (var db = new TruckCompanyDBContainer())
            {
                var query = from b in db.CarSet//CAR TABLE
                            join f in db.BrancheSet // JOIN WITH BRACHES TABLE
                            on b.BrancheBrancheId equals f.BrancheId 
                            into prodGroup/**********/
                            select new { b.Branche, b.Brand, b.Year, b.Plate};//CONTENT SELECTED
                
                /*LOOP TO POPULATE THE DROPDOWNLIST*/                        
                foreach (var item in query)
                {
                    
                    /*PLATE*/
                    DropDownList.Items.Add(new ListItem(item.Plate));
                    /*YEAR*/
                    DropDownList1.Items.Add(new ListItem(item.Year.ToString()));
                    /*BRAND*/
                    DropDownList2.Items.Add(new ListItem(item.Brand.ToString()));
                    /*LOCATION*/
                    DropDownList3.Items.Add(new ListItem(item.Branche.Location));

                    
           
                }
            }            
        }

        /// <summary>
        /// THIS METHOD TAKES ALL INFORMATIONS THAT WAS SELECTED BY THE USER AND VALIDATES THEM.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonSeach_Click(object sender, EventArgs e)
        {
            //Pegar o valor do item do DropDownList
            
            /*LOCAL VARIABLES*/
            string plate    = DropDownList.SelectedItem.ToString();
            string TEST     = DropDownList.SelectedItem.Enabled.ToString();
            string Year     = DropDownList.SelectedValue.ToString();
            string Brand    = DropDownList.SelectedValue.ToString();
            string Branche  = DropDownList.DataTextField.ToString();

            /*WE HAVE ONLY ONE TYPE OF TRUCK THAT IS BE ACCEPT*/
            if (plate == "X2LL2EF" && Year == "2014" &&
                Brand == "VOLKSWAGEN" && Branche == "TORONTO" && RadioButtonUsed.Checked)
            {
                LabelWarnig.Visible = false;
                Response.Redirect("CarDetails.aspx");
            }
            else
            {
                /*WARNING MESSAGE*/
                LabelWarnig.Visible = true;
            }
        }
    }
}