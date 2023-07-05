using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("subject.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NickOlas\T.Y.B.Tech\miniproject 3\OAS\App_Data\student.mdf;Integrated Security=True;Connect Timeout=30");
        sc.Open();
        string u,c, q;
        c = DropDownList1.SelectedValue;
        u = DropDownList2.SelectedValue;
        q = "select rn,sum(presenty) as Total from attendance_data where subject_name='" + u + "' and class_name='"+c+"' group by rn";
        SqlCommand cmd = new SqlCommand(q, sc);
        SqlDataReader sdr = cmd.ExecuteReader();
        GridView1.DataSource = sdr;
        GridView1.DataBind();
        GridView1.Visible = true;
        sdr.Close();
        sc.Close();
    }
}