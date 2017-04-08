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
                var query = (from b in db.CarSet
                             select b.Plate).Distinct();
                            
                foreach (var item in query)
                {

                    /*PLATE*/
                    DropDownList.Items.Add(new ListItem(item));
                    /*LOCATION*/
                    //for (int i = 0; i < DropDownList3.Items.Count; i++)
                    //{
                    //    if (!DropDownList3.Items[i].Value.Contains(item.Branche.Location))
                    //    {

                    //        DropDownList3.Items.Add(new ListItem(item.Branche.Location));
                    //    }
                    //}
                    //if (!DropDownList3.Items.Contains(item.Branche.Location)
                    //{
                    //}
                    //DropDownList3.Items.Add(new ListItem(item.Branche.Location));

                }


                //Years
                var query1 = (from h in db.CarSet
                              select h.Year).Distinct();

                foreach (var item in query1)
                {
                    DropDownList1.Items.Add(new ListItem(item.ToString()));
                }

                //brand
                var query2 = (from i in db.CarSet
                              select i.Brand).Distinct();

                foreach (var item in query2) 
                {

                    DropDownList2.Items.Add(new ListItem(item));
                }

                //Locations
                var query3 = (from a in db.BrancheSet
                              select a.Location).Distinct();


                foreach (var item in query3)
                {

                    DropDownList3.Items.Add(new ListItem(item));
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
          
            //string plate    = DropDownList.SelectedItem.Value;
            string plate    = DropDownList.SelectedItem.Value;
            string Year     = DropDownList1.SelectedItem.Value.ToString(); //DropDownList.SelectedValue.ToString();
            string Brand    = DropDownList2.SelectedValue;
            string Branche  = DropDownList3.SelectedItem.Value;

            /*WE HAVE ONLY ONE TYPE OF TRUCK THAT IS BE ACCEPT*/
            if ((plate == "X2L22EF") && (Year == "2014") &&
                (Brand == "VOLKSWAGEN") && (Branche == "TORONTO"))
            {
                LabelWarnig.Visible = false;
                Response.Redirect("Pages/CarDetails.aspx");
            }
            else
            {
                /*WARNING MESSAGE*/
                LabelWarnig.Visible = true;
            }
        }
    }
}