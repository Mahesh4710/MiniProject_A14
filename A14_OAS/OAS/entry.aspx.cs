using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class entry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string q="";
        try
        {
            SqlConnection sc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NickOlas\T.Y.B.Tech\miniproject 3\OAS\App_Data\student.mdf;Integrated Security=True;Connect Timeout=30");
            sc.Open();
            string c, s, d, t, m, r;
            c = DropDownList1.SelectedValue;
            s = DropDownList2.SelectedValue;
            d = Calendar1.SelectedDate.ToShortDateString();
            t = DropDownList3.SelectedValue;
            m = RadioButtonList1.SelectedValue;
            r = TextBox1.Text;
            SqlCommand cmd;
            string[] rn;
            rn = r.Split(',');
            for (int j = 0; j < rn.Length; j++)
            {
                Response.Write("RN:" + rn[j] + "<br/>");
            }
            if (m.Equals("Present"))
            {
                for (int i = 1; i <=75; i++)
                {
                    q = "insert into attendance_data values(" + i + ",'" + c + "','" + s + "','" + d + "','" + t + "',0)";
                    cmd = new SqlCommand(q, sc);
                    cmd.ExecuteNonQuery();
                }
                for (int j = 0; j < rn.Length; j++)
                {
                    q = "update attendance_data set presenty=1 where rn=" + Int32.Parse(rn[j]) + " and class_name='" + c + "' and date1='" + d + "' and subject_name='" + s + "' and time_slot='" + t + "'";
                    cmd = new SqlCommand(q, sc);
                    cmd.ExecuteNonQuery();
                }
            }
            if (m.Equals("Absent"))
            {
                for (int i = 1; i <=75; i++)
                {
                    q = "insert into attendance_data values(" + i + ",'" + c + "','" + s + "','" + d + "','" + t + "',1)";
                    cmd = new SqlCommand(q, sc);
                    cmd.ExecuteNonQuery();
                }
                for (int j = 0; j < rn.Length; j++)
                {
                    q = "update attendance_data set presenty=0 where rn=" + Int32.Parse(rn[j]) + " and class_name='" + c + "' and date1='" + d + "' and subject_name='" + s + "' and time_slot='" + t + "'";
                    cmd = new SqlCommand(q, sc);
                    cmd.ExecuteNonQuery();
                }
            }
            sc.Close();
            Label5.Text = "Data Entered Successfully";
            Response.Redirect("Default.aspx");
        }
        catch (Exception rtyrty)
        {
            Response.Write("Query:" + q +"<br/>");
            Response.Write("Exception:"+rtyrty);
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("entry.aspx");
    }
}