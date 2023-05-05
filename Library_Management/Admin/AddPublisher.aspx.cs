using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management.Admin
{
    public partial class AddPublisher : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Autogenerate();
                BindRepeater();
            }
        }

        protected void btnupdatepublisher_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("sp_UpdatePublisher", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@publisher_id", txtID.Text);
            cmd.Parameters.AddWithValue("@publisher_name", txtPublisherName.Text);
            dbcon.OpenCon();
            if (cmd.ExecuteNonQuery() == 1)
            {
                dbcon.CloseCon();
                Response.Write("<script>alert('Updated Succesfully..'); </Script>");
                clrcontrol();
                BindRepeater();
                Autogenerate();
                btnAddPublisher.Visible = true;
                btnupdatepublisher.Visible = false;
                btndeletepublisher.Visible = false;
            }
            else
            {
                dbcon.CloseCon();
                Response.Write("<script>alert('Error Record not Updated....  Try Again!'); </Script>");
            }

        }

        protected void btnAddPublisher_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("sp_InsertPublisher", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@publisher_id", txtID.Text);
            cmd.Parameters.AddWithValue("@publisher_name", txtPublisherName.Text);
            dbcon.OpenCon();
            if (cmd.ExecuteNonQuery() == 1)
            {
                dbcon.CloseCon();
                Response.Write("<script>alert('Saved Succesfully..'); </Script>");
                clrcontrol();
                BindRepeater();
                Autogenerate();
            }
            else
            {
                dbcon.CloseCon();
                Response.Write("<script>alert('Error Try Again!'); </Script>");
            }

        }

        protected void btndeletepublisher_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }

       

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { '&' });
                string id = commandArgs[0];
                SearchDataforUpdate(Convert.ToInt32(id));
            }
            else if (e.CommandName == "delete")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { '&' });
                string id = commandArgs[0];
                cmd = new SqlCommand("sp_DeletePublisher", dbcon.GetCon());
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@publisher_id", id);
                dbcon.OpenCon();
                if (cmd.ExecuteNonQuery() == 1)
                {
                    dbcon.CloseCon();
                    Response.Write("<script>alert('Deleted Succesfully..'); </Script>");
                    clrcontrol();
                    BindRepeater();
                    Autogenerate();
                    btnAddPublisher.Visible = true;
                    btnupdatepublisher.Visible = false;
                    btndeletepublisher.Visible = false;
                }
                else
                {
                    dbcon.CloseCon();
                    Response.Write("<script>alert('Error Record not Deleted....  Try Again!'); </Script>");
                }

            }
        }

        protected void clrcontrol()
        {
            txtPublisherName.Text = txtID.Text = string.Empty;
            txtID.Focus();
        }
        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                cmd = new SqlCommand("select max(publisher_id)as ID from publisher_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string d = dr[0].ToString();
                    if (d == "")
                    {
                        txtID.Text = "101";

                    }
                    else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtID.Text = r.ToString();
                    }
                    txtID.ReadOnly = true;
                    //txtID.BackColor = System.Drawing.Color.Red;
                }
                dbcon.CloseCon();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ");</Script>");
            }
        }
        protected void BindRepeater()
        {
            cmd = new SqlCommand("spGetPublisher", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
        private void SearchDataforUpdate(int idd)
        {
            cmd = new SqlCommand("spGetPublisherById", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@publisher_id", idd);
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(ds, "dt");
            dbcon.CloseCon();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["PublisherID"] = ds.Tables[0].Rows[0]["publisher_id"].ToString();
                txtID.Text = ds.Tables[0].Rows[0]["publisher_id"].ToString();
                txtPublisherName.Text = ds.Tables[0].Rows[0]["publisher_name"].ToString();
                btnAddPublisher.Visible = false;
                btnupdatepublisher.Visible = true;
                btndeletepublisher.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Error! No Record Found Try Again.'); </Script>");
            }
        }

    }
}