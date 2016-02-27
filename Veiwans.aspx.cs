using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Veiwans : System.Web.UI.Page
{
    string u_name;
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
    con = new SqlConnection(constr);
    adp = new SqlDataAdapter("Select  q.Question,c.Answer from Questionask q,Candidate_ans c where q.C_id=c.C_id and q.Ques_id=c.Ques_id", con);
    ds = new DataSet();
    adp.Fill(ds);
    if (ds.Tables[0].Rows.Count > 0)
    {
        GridView1.DataSource = ds;
        GridView1.DataBind();
       // string ans = "yes";
        //con = new SqlConnection(constr);
        //cmd = new SqlCommand("update Questionask set Answered=@ans where ans=@", con);
    }
    else
    {
        Response.Write("<script>alert('Question is not answered yet!!!');</script>");
    }
}
 protected void Button2_Click(object sender, EventArgs e)
 {
     Response.Redirect("Default.aspx");

 }
}