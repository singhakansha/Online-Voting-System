using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class c_reg_def : System.Web.UI.Page
{
    string u_name;
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        u_name = Session["Username"].ToString();
        if (!Page.IsPostBack)
        {
            display();
        }

    }

    protected void display()
    {
        u_name = Session["Username"].ToString();
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("select * from Candidate_reg where Username='" + u_name + "'", con);
        ds = new DataSet();
        adp.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();
    }


    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        display();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                string path = Server.MapPath("Photo");
                string fullpath = path + "\\" + ((FileUpload)e.Item.FindControl("FileUpload1")).FileName;
                ((FileUpload)e.Item.FindControl("FileUpload1")).SaveAs(fullpath);
                //string storepath = "~/image/" + FileUpload1.filename;
                //string C_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
                string Firstname = ((TextBox)e.Item.FindControl("TextBox2")).Text;
                string Lastname = ((TextBox)e.Item.FindControl("TextBox3")).Text;
                string Fathername = ((TextBox)e.Item.FindControl("TextBox4")).Text;
                string DOB = ((TextBox)e.Item.FindControl("TextBox5")).Text;
                string State = ((TextBox)e.Item.FindControl("TextBox6")).Text;
                string City = ((TextBox)e.Item.FindControl("TextBox7")).Text;
                string Party = ((TextBox)e.Item.FindControl("TextBox8")).Text;
                //string Type = ((TextBox)e.Item.FindControl("TextBox9")).Text;
                string Email = ((TextBox)e.Item.FindControl("TextBox9")).Text;
                string Address = ((TextBox)e.Item.FindControl("TextBox10")).Text;
                string Contactno = ((TextBox)e.Item.FindControl("TextBox11")).Text;
                string Username = ((TextBox)e.Item.FindControl("TextBox12")).Text;
                string Password = ((TextBox)e.Item.FindControl("TextBox13")).Text;
                string Election_reason = ((TextBox)e.Item.FindControl("TextBox14")).Text;
                string Roles = ((TextBox)e.Item.FindControl("TextBox15")).Text;
                cmd = new SqlCommand("insert into Candidate_reg(Firstname,Lastname,Fathername,DOB,State,City,Party,Email,Address,Contactno,Username,Password,Election_reason,Roles)values(@C_id,@Firstname,@Lastname,@Fathername,@DOB,@State,@City,@Party,@E_mail,@Address,@Contatctno,@Username,@Password,@Election_reason,@roles");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                display();

            }
        }
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        u_name = Session["Username"].ToString();
        string C_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
        string Firstname = ((TextBox)e.Item.FindControl("TextBox2")).Text;
        string Lastname = ((TextBox)e.Item.FindControl("TextBox3")).Text;
        string Fathername = ((TextBox)e.Item.FindControl("TextBox4")).Text;
        string DOB = ((TextBox)e.Item.FindControl("TextBox5")).Text;
        string State = ((TextBox)e.Item.FindControl("TextBox6")).Text;
        string City = ((TextBox)e.Item.FindControl("TextBox7")).Text;
        string Party = ((TextBox)e.Item.FindControl("TextBox8")).Text;
        string Email = ((TextBox)e.Item.FindControl("TextBox9")).Text;
        string Address = ((TextBox)e.Item.FindControl("TextBox10")).Text;
        string Contactno = ((TextBox)e.Item.FindControl("TextBox11")).Text;
        string Username = ((TextBox)e.Item.FindControl("TextBox12")).Text;
        string Password = ((TextBox)e.Item.FindControl("TextBox13")).Text;
        string Election_reason = ((TextBox)e.Item.FindControl("TextBox14")).Text;
        string Roles = ((TextBox)e.Item.FindControl("TextBox15")).Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("update Candidate_reg set Firstname=@Firstname,Lastname=@Lastname,Fathername=@Fathername,DOB=@DOB,State=@State,City=@City,Party=@Party,Email=@Email,Address=@Address,Contactno=@Contactno,Username=@Username,Password=@Password,Election_reason=@Election_reason,Roles=@roles where Username='" + u_name + "'", con);
        cmd.Parameters.AddWithValue("@C_id", C_id);
        cmd.Parameters.AddWithValue("@Firstname", Firstname);
        cmd.Parameters.AddWithValue("@Lastname", Lastname);
        cmd.Parameters.AddWithValue("@Fathername", Fathername);
        cmd.Parameters.AddWithValue("@DOB", DOB);
        cmd.Parameters.AddWithValue("@State", State);
        cmd.Parameters.AddWithValue("@City", City);
        cmd.Parameters.AddWithValue("@Party", Party);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Address", @Address);
        cmd.Parameters.AddWithValue("@Contactno", Contactno);
        cmd.Parameters.AddWithValue("@Username", Username);
        cmd.Parameters.AddWithValue("@Password", Password);
        cmd.Parameters.AddWithValue("@Election_reason", Election_reason);
        cmd.Parameters.AddWithValue("@roles",Roles);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        DataList1.EditItemIndex = -1;
        display();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        u_name = Session["Username"].ToString();
        //string Voter_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("delete from Candidate_reg where Username='" + u_name + "'", con);
        //cmd.Parameters.AddWithValue("@Voter_id", Voter_id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con = new SqlConnection(constr);
        cmd = new SqlCommand("delete from Login where Username='" + u_name + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        DataList1.EditItemIndex = -1;
        Response.Write("<script>alert('Your data has been deleted')</script>");
        Response.Redirect("Default.aspx");
        
    
    }
}