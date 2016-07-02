using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Puzzles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random random = new Random();
            int counter = random.Next(01, 30);

            for (int i = 0; i <= 99; i++)
            {
                counter++;
                Image imgControl = (Image)FindControl("image" + i);
                if (counter > 30)
                {
                    counter = 1;

                }
                imgControl.ImageUrl = "Images/img" + (counter) + ".jpg";

            }
            Image imgControlNine = (Image)FindControl("image" + 9);
            string imgUrl = imgControlNine.ImageUrl;
            Image imgControleitheen = (Image)FindControl("image" + 18);
            Image imgControltentyseven = (Image)FindControl("image" + 27);
            Image imgControlthirtysix = (Image)FindControl("image" + 36);
            Image imgControlfourty = (Image)FindControl("image" + 45);
            Image imgControlfifty = (Image)FindControl("image" + 54);
            Image imgControlsixty = (Image)FindControl("image" + 63);
            Image imgControlseventy = (Image)FindControl("image" + 72);
            Image imgControleighty = (Image)FindControl("image" + 81);
            Image imgControlninty = (Image)FindControl("image" + 90);

            imgControleitheen.ImageUrl = imgControlNine.ImageUrl;
            imgControltentyseven.ImageUrl = imgControlNine.ImageUrl;
            imgControlthirtysix.ImageUrl = imgControlNine.ImageUrl;
            imgControlfourty.ImageUrl = imgControlNine.ImageUrl;
            imgControlfifty.ImageUrl = imgControlNine.ImageUrl;
            imgControlsixty.ImageUrl = imgControlNine.ImageUrl;
            imgControlseventy.ImageUrl = imgControlNine.ImageUrl;
            imgControleighty.ImageUrl = imgControlNine.ImageUrl;
            imgControlninty.ImageUrl = imgControlNine.ImageUrl;

            Session["imgUrl"] = imgControlNine.ImageUrl;
        }

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("result.aspx");
    }
}