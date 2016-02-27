using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Default3 : System.Web.UI.Page
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
        int i = 0;
        string s = i.ToString();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("insert into voter_reg(Voter_id,First_name,Last_name,Father_name,DOB,State,City,Address,E_mail,Contact_no,Pincode,User_name,Password,Roles,V_photo,Polls) values(@Voter_id,@First_name,@Last_name,@Father_name,@DOB,@State,@City,@Address,@E_mail,@Contact_no,@Pincode,@User_name,@Password,@Role,@img,@Polls)", con);
        cmd.Parameters.AddWithValue("@Voter_id", Convert.ToInt32(TextBox20.Text));
        cmd.Parameters.AddWithValue("@First_name", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Last_name", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Father_name", TextBox6.Text);
        cmd.Parameters.AddWithValue("@DOB", TextBox7.Text);
        cmd.Parameters.AddWithValue("@State", TextBox8.Text);
        cmd.Parameters.AddWithValue("@City", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox10.Text);
        cmd.Parameters.AddWithValue("@E_mail", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Contact_no",TextBox12.Text);
        cmd.Parameters.AddWithValue("@Pincode",TextBox13.Text);
        cmd.Parameters.AddWithValue("@User_name", TextBox14.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox15.Text);
        cmd.Parameters.AddWithValue("@Role", TextBox16.Text);
        cmd.Parameters.AddWithValue("@img",dbpath);
        cmd.Parameters.AddWithValue("@Polls", s);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        //string a = TextBox14.Text;
        //string b = TextBox15.Text;
        //string c = TextBox16.Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("insert into Login values(@Username,@Password,@Roles)",con);
        cmd.Parameters.AddWithValue("@Username", TextBox14.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox15.Text);
        cmd.Parameters.AddWithValue("@Roles", TextBox16.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("<script>alert('data');</script>");
        //Session["Voter_id"] = TextBox20.Text;
        //Session["User_name"] = TextBox14.Text;
        Response.Redirect("Default.aspx");
    }
}