using System;
using System.Data;
using System.Data.SqlClient;

namespace ZIMP_Fitness
{
    public partial class Members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMembers();
            }
        }

        void LoadMembers()
        {
            string cs = System.Configuration.ConfigurationManager
                            .ConnectionStrings["ZimpConn"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    @"SELECT MemberID, FullName, Email, MembershipType, StartDate
                      FROM Members
                      ORDER BY MemberID ASC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvMembers.DataSource = dt;
                gvMembers.DataBind();
            }
        }
    }
}
