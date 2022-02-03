using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Windows.Media.Imaging;
namespace Task_1.Properties
{
    public partial class WebForm1 : System.Web.UI.Page

    {    protected void Page_Load(object sender, EventArgs e)
        {
            result.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String value1 = IMSI.Text;
            string value2 = MSISDN.Text;
            int x = Convert.ToInt32(value1);
            int y = Convert.ToInt32(value2);
            
                try
                {
                    string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                    SqlConnection conn = new SqlConnection(connStr);
                    conn.Open();
                    string sql = "insert into [dbo].[ActivationRequests] (IMSI, MSISDN, ProvisioningStepID, creationdate, nobilcreationdate, retrycount)values( " + x + " ," + y + " , 1, getdate(), getdate(), 0)";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        result.Text = "the number is added ";
                        //HP1.NavigateUrl = reader[0].ToString();
                    }
                }
                catch { result.Text = "faild prosses"; }
            
           
    }
       /* List<System.Drawing.Image> allTiffImages = null;
        int currentImageIndex = 0;
        private List<System.Drawing.Image> images;*/
    }
    
}