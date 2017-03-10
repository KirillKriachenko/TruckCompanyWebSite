using GMap.NET;
using GMap.NET.WindowsForms;
using GMap.NET.WindowsForms.Markers;
using Subgurim.Controles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckWebSite.Pages
{
    public partial class Map : System.Web.UI.Page
    {
        int x = 0; 
        int y = 0;
        public void findeMap()
        {
            GMap1.setCenter(new GLatLng(x, y));
            GMap1.enableHookMouseWheelToZoom = true;


            GDirection direction = new GDirection(true);
            //direction.clearMap = true;
            //direction.avoidHighways = true;
            direction.travelMode = GDirection.GTravelModeEnum.G_TRAVEL_MODE_WALKING;
            direction.locale = "en";
            GMap1.Add(direction);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            switch (e.PostBackValue)
            {
                case "Quebec":
                    GMap1.Visible = true;
                    ImageMap1.Visible = false;
                    x = 43;
                    y = -79;
                    findeMap();
                    break;
                case "Ontario":
                    GMap1.Visible = true;
                    ImageMap1.Visible = false;
                    break;
                case "Alberta":
                    GMap1.Visible = true;
                    ImageMap1.Visible = false;
                    break;
            }
        }
    }
}