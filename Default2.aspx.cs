using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
   string u_name ;
    static string constr = ConfigurationManager.ConnectionStrings["cnnstr"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
     protected void Page_Load(object sender, EventArgs e)
    {
        u_name=Session["Username"].ToString();
        if (!Page.IsPostBack)
        {
            display();
        }

    }

    protected void display()
    {
        u_name = Session["Username"].ToString();
        con = new SqlConnection(constr);
        adp = new SqlDataAdapter("select * from voter_reg where User_name='" + u_name + "'", con);
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
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        u_name = Session["Username"].ToString();
        //string Voter_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("delete from voter_reg where User_name='" + u_name + "'", con);
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
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        u_name = Session["Username"].ToString();
        string Voter_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
        string First_name = ((TextBox)e.Item.FindControl("TextBox2")).Text;
        string Last_name = ((TextBox)e.Item.FindControl("TextBox3")).Text;
        string Father_name = ((TextBox)e.Item.FindControl("TextBox4")).Text;
        string DOB = ((TextBox)e.Item.FindControl("TextBox5")).Text;
        string State = ((TextBox)e.Item.FindControl("TextBox6")).Text;
        string City = ((TextBox)e.Item.FindControl("TextBox7")).Text;
        string Address = ((TextBox)e.Item.FindControl("TextBox8")).Text;
        string E_mail = ((TextBox)e.Item.FindControl("TextBox9")).Text;
        string Contact_no = ((TextBox)e.Item.FindControl("TextBox10")).Text;
        string Pincode = ((TextBox)e.Item.FindControl("TextBox11")).Text;
        string User_name = ((TextBox)e.Item.FindControl("TextBox12")).Text;
        string Password = ((TextBox)e.Item.FindControl("TextBox13")).Text;
        string Roles = ((TextBox)e.Item.FindControl("TextBox14")).Text;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("update voter_reg set First_name=@First_name,Last_name=@Last_name,Father_name=@Father_name,DOB=@DOB,State=@State,City=@City,Address=@Address,E_mail=@E_mail,Contact_no=@Contact_no,Pincode=@Pincode,User_name=@User_name,Password=@Password,Roles=@Roles where User_name='"+u_name+"'", con);
        cmd.Parameters.AddWithValue("@Voter_id",Voter_id);
        cmd.Parameters.AddWithValue("@First_name",First_name);
        cmd.Parameters.AddWithValue("@Last_name",Last_name);
        cmd.Parameters.AddWithValue("@Father_name",Father_name);
        cmd.Parameters.AddWithValue("@DOB",DOB);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@Address",@Address);
        cmd.Parameters.AddWithValue("@E_mail",E_mail);
        cmd.Parameters.AddWithValue("@Contact_no",Contact_no);
        cmd.Parameters.AddWithValue("@Pincode",Pincode);
        cmd.Parameters.AddWithValue("@User_name",User_name);
        cmd.Parameters.AddWithValue("@Password",Password);
        cmd.Parameters.AddWithValue("@Roles",Roles);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        DataList1.EditItemIndex = -1;
        display();

     }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                string path = Server.MapPath("V_photo");
                string fullpath = path + "\\" + ((FileUpload)e.Item.FindControl("FileUpload1")).FileName;
                ((FileUpload)e.Item.FindControl("FileUpload1")).SaveAs(fullpath);
                //string storepath = "~/image/" + FileUpload1.filename;
               // string Voter_id = ((TextBox)e.Item.FindControl("TextBox1")).Text;
                string First_name = ((TextBox)e.Item.FindControl("TextBox2")).Text;
                string Last_name = ((TextBox)e.Item.FindControl("TextBox3")).Text;
                string Father_name = ((TextBox)e.Item.FindControl("TextBox4")).Text;
                string DOB = ((TextBox)e.Item.FindControl("TextBox5")).Text;
                string State = ((TextBox)e.Item.FindControl("TextBox6")).Text;
                string City = ((TextBox)e.Item.FindControl("TextBox7")).Text;
                string Address = ((TextBox)e.Item.FindControl("TextBox8")).Text;
                string E_mail = ((TextBox)e.Item.FindControl("TextBox9")).Text;
                string Contact_no = ((TextBox)e.Item.FindControl("TextBox10")).Text;
                string Pincode = ((TextBox)e.Item.FindControl("TextBox11")).Text;
                string Username = ((TextBox)e.Item.FindControl("TextBox12")).Text;
                string Password = ((TextBox)e.Item.FindControl("TextBox13")).Text;
                string Roles = ((TextBox)e.Item.FindControl("TextBox14")).Text;
                con = new SqlConnection(constr);
                cmd = new SqlCommand("insert into voter_reg(First_name,Last_name,Father_name,DOB,State,City,Address,E_mail,Conatct_no,Pincode,User_name,Password,Roles,V_photo)values(@Firstname,@Last_name,@Father_name,@DOB,@State,@City,@Address,@E_mail,@Contatct_no,@Pincode,@User_name,@Password,@Roles,@V_photo");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                display();
                //Voter_id,@Voter_id,
            }
        }
    }
}