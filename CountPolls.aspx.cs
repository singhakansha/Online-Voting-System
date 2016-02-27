using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class CountPolls : System.Web.UI.Page
{
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    DateTime dt = new DateTime(2015, 06, 12);
    static string u_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (System.DateTime.Now.ToShortDateString() == dt.ToShortDateString())
            {

                display();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            
        }
    }

    protected void display()
    {
        u_name = Session["Username"].ToString();
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("Select max(Count),C_id from Candidate_reg group by C_id",con);
        ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        adp = new SqlDataAdapter("select max(count),C_id,First_name,Last_name,Party from Candidate_reg", con);
        ds = new DataSet();
        adp.Fill(ds);
        string Count = ds.Tables[0].Rows[0][0].ToString();
        string s1 = ds.Tables[0].Rows[0][1].ToString();
        string s2 = ds.Tables[0].Rows[0][2].ToString();
        string s3 = ds.Tables[0].Rows[0][3].ToString();
        string s4 = ds.Tables[0].Rows[0][4].ToString();
        Response.Write("The Winner is '"+s2+s3+"' candidate id '"+s1+"' party '"+s4+"' with '"+Count+"'");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("default2.aspx");
    }
}