using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Voter_pro : System.Web.UI.MasterPage
{
    string u_name;
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    SqlDataReader dr;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        u_name = Session["Username"].ToString();
        con = new SqlConnection(constr);
       // cmd=new SqlCommand("select Polls from voter_reg where User_name='" + u_name + "'", con);
        adp = new SqlDataAdapter("select Polls from voter_reg where User_name='" + u_name + "'", con);
        ds = new DataSet();
        adp.Fill(ds);
        string id=ds.Tables[0].Rows[0][0].ToString();
        bool i=false;
        string s=i.ToString();
        //con.Open();
        //dr=cmd.ExecuteReader();
        //dr.Read()==0

        if (id.Equals(s) && Session["Username"]!=null)
        {
            Response.Redirect("Vote.aspx");
        }
        else
        {
            Response.Write("<script>alert('You Have Already Voted.Cannot Vote Twice!!!Redirecting')</script>");
            Response.Redirect("Default.aspx");
        }
    }
}
