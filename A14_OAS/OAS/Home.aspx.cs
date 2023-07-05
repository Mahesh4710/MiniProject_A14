using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NickOlas\T.Y.B.Tech\miniproject 3\OAS\App_Data\student.mdf;Integrated Security=True;Connect Timeout=30");
        sc.Open();
        string u,p,q;
        u=TextBox1.Text;
        p=TextBox2.Text;
        q= "select * from login where uname='"+u+"' and pass='"+p+"'";
        SqlCommand cmd=new SqlCommand(q,sc);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            Session["user"] = u;
            Response.Redirect("entry.aspx");
        }
        else
        {
            Label5.Text = "Login Failed click reset button";
        }
    }
}