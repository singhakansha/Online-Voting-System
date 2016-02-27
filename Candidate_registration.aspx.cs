using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Candidate_registration : System.Web.UI.Page
{
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("image");
        string fullpath = path + "\\" + FileUpload1.FileName;
        FileUpload1.SaveAs(fullpath);
        string dbpath = "~/image/" + FileUpload1.FileName;
        //int i = 0;
        //string s = i.ToString();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("insert into Candidate_reg(C_id,Firstname,Lastname,Fathername,DOB,State,City,Party,Email,Address,Username,Password,Election_reason,Photo,Roles) values(@C_id,@Firstname,@Lastname,@Fathername,@DOB,@State,@City,@Party,@Email,@Address,@Username,@Password,@Election_reason,@V_id,@img,@roles)", con);
        cmd.Parameters.AddWithValue("@C_id", Convert.ToInt32(TextBox33.Text));
        cmd.Parameters.AddWithValue("@Firstname", TextBox34.Text);
        cmd.Parameters.AddWithValue("@Lastname", TextBox35.Text);
        cmd.Parameters.AddWithValue("@Fathername", TextBox36.Text);
        cmd.Parameters.AddWithValue("@DOB", TextBox37.Text);
        cmd.Parameters.AddWithValue("@State", TextBox38.Text);
        cmd.Parameters.AddWithValue("@City", TextBox39.Text);
        cmd.Parameters.AddWithValue("@Party", TextBox40.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox42.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox43.Text);
        cmd.Parameters.AddWithValue("@Contactno", TextBox44.Text);
        cmd.Parameters.AddWithValue("@Username", TextBox45.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox46.Text);
        cmd.Parameters.AddWithValue("@Election_reason", TextBox47.Text);
        cmd.Parameters.AddWithValue("@img", dbpath);
        cmd.Parameters.AddWithValue("@roles", TextBox48.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("insert into Login values(@Username,@Password,@Roles)", con);
        cmd.Parameters.AddWithValue("@Username", TextBox45.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox46.Text);
        cmd.Parameters.AddWithValue("@Roles", TextBox48.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("<script>alert('Data Inserted!!!');</script>");
        Response.Redirect("Default.aspx");
        ////Response.Redirect("gridview.aspx");
    }


}