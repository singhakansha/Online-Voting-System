using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class candidate_reg : System.Web.UI.MasterPage
{
    string Username;
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CountPolls.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ans_ques.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Username = Session["Username"].ToString();
        if (Username == "modi")
        {
            Response.Redirect("modi.aspx");
        }
        else if (Username == "rahul")
        {
            Response.Redirect("rahul.aspx");
        }
        else if (Username == "kejriwal")
        {
            Response.Redirect("kejriwal.aspx");
        }
    }
}
