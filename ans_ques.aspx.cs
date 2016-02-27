using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ans_ques : System.Web.UI.Page
{
    string u_name;
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        display();
    }

    protected void display()
    {
    con = new SqlConnection(constr);
    adp = new SqlDataAdapter("Select q.Question,c.Answer from Questionask q,Candidate_ans q where q.C_id=c.C_id and q.Ques_id=c.Ques_id", con);
    ds = new DataSet();
    adp.Fill(ds);
   
    GridView1.DataSource = ds;
    GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string ans = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("update Candidate_ans set Answer=@ans where Questionask.Ques_id=Candidate_reg.Ques_id and Questionask.C_id=Candidate_reg.C_id", con);
        cmd.Parameters.AddWithValue("@ans", ans);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string a = "yes";
        con = new SqlConnection();
        cmd = new SqlCommand("update Questionask set Answered=@a where Questionask.Ques_id=Candidate_reg.Ques_id and Questionask.C_id=Candidate_reg.C_id", con);
        cmd.Parameters.AddWithValue("@a", a);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        display();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        display();
    }
}