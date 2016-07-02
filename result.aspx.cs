using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            Image imgControlninty = (Image)FindControl("image" + 0);
        imgControlninty.ImageUrl = Session["imgUrl"].ToString();
    
        //Session["imgUrl"]
    }

    protected void imgclick_Click(object sender, ImageClickEventArgs e)
    {
        Image imgControlninty = (Image)FindControl("image" + 0);
        imgControlninty.Visible = true;
        btnNext.Visible = true;
        imgclick.Visible = false;
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}