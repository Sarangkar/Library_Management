using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Library_Management
{
    public partial class signup : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Autogenerate();
            }


        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            // signup button code

            if (CheckDuplicationMemberExist())
            {
                Response.Write("<script>alert('Member already exist with this ID and Email'); </Script>");

            }
            else
            {
                createAccount();
            }


        }

        private void createAccount()
        {
            cmd = new SqlCommand("sp_InsertSignup", dbcon.GetCon());
            cmd.Parameters.AddWithValue("@full_name",txtFullName.Text );
            cmd.Parameters.AddWithValue("@dob",txtdob.Text );
            cmd.Parameters.AddWithValue("@contact_no",txtContactNo.Text );
            cmd.Parameters.AddWithValue("@email",txtEmailid.Text );
            cmd.Parameters.AddWithValue("@state",ddlState.SelectedItem.Text );
            cmd.Parameters.AddWithValue("@city",txtCity.Text );
            cmd.Parameters.AddWithValue("@pincode", txtPn.Text );
            cmd.Parameters.AddWithValue("@full_address", txtFullAddress.Text );
            cmd.Parameters.AddWithValue("@member_id",txtmember.Text );
            cmd.Parameters.AddWithValue("@password",txtpassword.Text );
            cmd.Parameters.AddWithValue("@account_status","pending" );

            dbcon.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;
           
            if (cmd.ExecuteNonQuery()==1)
            {
                Response.Write("<script>alert('Account Created Succesfully..'); </Script>");
                clrcontrol();
                Autogenerate();
            }
            else
            {
                Response.Write("<script>alert('Error Try Again!'); </Script>");
            }
            dbcon.CloseCon();
        }

        protected bool CheckDuplicationMemberExist()
        {
             cmd = new  SqlCommand("sp_CheckDuplicateMember", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_id",txtmember.Text.Trim());
            cmd.Parameters.AddWithValue("@email",txtEmailid.Text.Trim());
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                    return false;
            }
        }
        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                 cmd = new SqlCommand("select max(member_id)as ID from member_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read()) 
                {
                    string d = dr[0].ToString();
                   if(d == "")
                    {
                        txtmember.Text = "1001";

                    }
                   else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtmember.Text = r.ToString();
                    }
                   txtmember.ReadOnly = true;
                   }
                dbcon.CloseCon();
            
            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert(" + ex.Message + ");</Script>");
            }
        }

        private void clrcontrol()
        {
            txtFullName.Text=txtFullAddress.Text=txtCity.Text=txtContactNo.Text=txtdob.Text=txtEmailid.Text=txtpassword.Text=txtPn.Text=string.Empty;
            ddlState.SelectedIndex = 0;
            txtFullName.Focus();
        }
    }
}