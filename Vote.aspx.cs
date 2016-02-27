using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Vote : System.Web.UI.Page
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

            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        u_name = Session["Username"].ToString();
        int cid1 =1;
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("select Count from Candidate_reg where C_id="+cid1+"",con);
        ds = new DataSet();
        adp.Fill(ds);
        string s = ds.Tables[0].Rows[0][0].ToString();
       int count1;
       int.TryParse(s, out count1);
        count1++;
        //con.Open();
        //con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("Update Candidate_reg set Count=@Count where C_id=" + cid1 + "", con);
        cmd.Parameters.AddWithValue("@Count", count1);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        int i = 1;
        cmd = new SqlCommand("Update voter_reg set Polls=@Polls where User_name='"+u_name+"'", con);
        cmd.Parameters.AddWithValue("@Polls", i);
        //Response.Write("<script>alert('Your vote has been counted')</script>");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Your vote has been counted");
        Response.Redirect("Default.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        u_name = Session["Username"].ToString();
       int cid2 =2;
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("select Count from Candidate_reg where C_id="+ cid2 + "", con);
        ds = new DataSet();
        adp.Fill(ds);
        string s = ds.Tables[0].Rows[0][0].ToString();
        int count1;
        int.TryParse(s, out count1);
        count1++;
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("Update Candidate_reg set Count=@Count where C_id=" + cid2 + "", con);
        cmd.Parameters.AddWithValue("@Count", count1);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        int i = 1;
        cmd = new SqlCommand("Update voter_reg set Polls=@Polls where User_name='" + u_name + "'", con);
        cmd.Parameters.AddWithValue("@Polls", i);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Default.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        u_name = Session["Username"].ToString();
        int cid3 =3;
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("select Count from Candidate_reg where C_id=" + cid3 + "", con);
        ds = new DataSet();
        adp.Fill(ds);
        string s = ds.Tables[0].Rows[0][0].ToString();
        int count1;
        int.TryParse(s, out count1);
        count1++;
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("Update Candidate_reg set Count=@Count where C_id=" + cid3 + "", con);
        cmd.Parameters.AddWithValue("@Count", count1);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        int i = 1;
        cmd = new SqlCommand("Update voter_reg set Polls=@Polls where User_name='" + u_name + "'", con);
        cmd.Parameters.AddWithValue("@Polls", i);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Default.aspx");

    }
}