using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
   
    public partial class AboutUs : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void contactbtn_Click(object sender, EventArgs e)
        {
            if (CheckDuplicationMemberExist())
            {
                Response.Write("<script>alert('You already Sended Message with this Email and Mob. Number'); </Script>");

            }
            else
            {
                contactmsg();
            }
        }

        private void contactmsg()
        {
            cmd = new SqlCommand("sp_ContactMsg", dbcon.GetCon());
            cmd.Parameters.AddWithValue("@full_name", txtFullName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmailid.Text);
            cmd.Parameters.AddWithValue("@contact_no", txtContact.Text);
            cmd.Parameters.AddWithValue("@message", txtMessage.Text);

            dbcon.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;

            if (cmd.ExecuteNonQuery()==1)
            {
                Response.Write("<script>alert('Sended Succesfully..'); </Script>");
                clrcontrol();
                
            }
            else
            {
                Response.Write("<script>alert('Error Try Again!'); </Script>");
            }
            dbcon.CloseCon();
        }

        protected bool CheckDuplicationMemberExist()
        {
            cmd = new SqlCommand("sp_CheckDuplicateContact", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@contact_no", txtContact.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtEmailid.Text.Trim());
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private void clrcontrol()
        {
            txtFullName.Text = txtEmailid.Text = txtContact.Text = txtMessage.Text  = string.Empty;
            txtFullName.Focus();
        }
    }
}