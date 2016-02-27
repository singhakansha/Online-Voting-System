using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Ques_ans : System.Web.UI.Page
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
    //protected void Button2_Click(object sender, EventArgs e)
    //{
        
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        String ans = "no";
        con=new SqlConnection(constr);
        cmd = new SqlCommand("Insert into Questionask(Ques_id,Question,Voter_id,C_id,Answered) values(@q_id,@ques,@vid,@cid,@ans)",con);
        cmd.Parameters.AddWithValue("@q_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ques", TextBox2.Text);
        cmd.Parameters.AddWithValue("@vid", TextBox3.Text);
        cmd.Parameters.AddWithValue("@cid", TextBox4.Text);
        cmd.Parameters.AddWithValue("@ans", ans);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("Insert into Candidate_ans(Ques_id,C_id,Ans_id) values(@Ques_id,@C_id,@Ans_id)", con);
        cmd.Parameters.AddWithValue("@Ques_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@C_id", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Ans_id", TextBox1.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    
}