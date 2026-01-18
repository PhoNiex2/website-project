using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ZIMP_Fitness
{
    public partial class Join : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string plan = ddlPlan.SelectedValue;
            DateTime startDate;
            if (!DateTime.TryParse(txtStart.Text, out startDate))
            {
                startDate = DateTime.Now.Date;
            }

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "Please enter name and email.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["ZimpConn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO dbo.Members (FullName, Email, MembershipType, StartDate) VALUES (@FullName, @Email, @MembershipType, @StartDate)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@MembershipType", plan);
                    cmd.Parameters.AddWithValue("@StartDate", startDate);

                    conn.Open();
                    int rows = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rows > 0)
                    {
                        lblMessage.Text = "Thanks! Your membership request has been recorded.";
                        // optional: clear fields
                        txtName.Text = ""; txtEmail.Text = "";
                        ddlPlan.SelectedIndex = 0; txtStart.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "An error occurred. Please try again.";
                    }
                }
            }
        }
    }
}
