using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Main : System.Web.UI.MasterPage
{
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        adp= new SqlDataAdapter("select Username,Roles from Login where Username='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'",con);
        ds=new DataSet();
        adp.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            string Roles = ds.Tables[0].Rows[0][1].ToString();
            Session["Username"] = ds.Tables[0].Rows[0][0].ToString();
            Session["Roles"] = ds.Tables[0].Rows[0][1].ToString();
            if (Roles == "admin")
            {
                Response.Redirect("Admin_def.aspx");
            }
            else if (Roles == "voter")
            {
                Response.Redirect("Default2.aspx");

            }
            else if (Roles == "Candidate")
            {
                Response.Redirect("c_reg_def.aspx");

            }
            
            
        }
        else
        {
        Response.Write("<script>alert('Invalid name and password')</script>");
        }
       
        
    }


}
