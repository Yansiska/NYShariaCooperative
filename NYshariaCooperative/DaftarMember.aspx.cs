using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace NYshariaCooperative
{
    public partial class Login_Member : System.Web.UI.Page
    {

        string connStr = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            member.Text = Auto();
            member.Enabled = false;
        }

        protected string Auto()
        {
            string sID = null;
            int ID = 0;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            DataTable dt = new DataTable();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select TOP 1 Member_ID from Member order by Member_ID DESC", con);
            myReader = myCommand.ExecuteReader();
            if (myReader.Read())
            {
                sID = (myReader["Member_ID"].ToString());
                ID = Convert.ToInt32(sID.Substring(1, 3));
                ID += 1;
                if (ID <= 9)
                {
                    sID = "K00" + ID;
                }
                else if (ID <= 90)
                {
                    sID = "K0" + ID;
                }
                else if (ID <= 900)
                {
                    sID = "K" + ID;
                }
            }
            else
            {
                sID = "K001";
            }
            con.Close();
            return sID;
        }

        protected void save(object sender, EventArgs e)
        {
            string membebrID = member.Text;
            string membername = memberName.Text;
            string date = Dateof.Text;
            string jeniskelamin = jk.Text;
            string email = Email.Text;
            string password = pass.Text;

                ServiceReference1.WCFShariaClient daftar = new ServiceReference1.WCFShariaClient();
                ServiceReference1.Daftarmember objMember = new ServiceReference1.Daftarmember();

            objMember.ID = membebrID;
            objMember.Nama = membername;
            objMember.DateOfBirth = date;
            objMember.Jk = jeniskelamin;
            objMember.Email = email;
            objMember.Password = password;

                int daf = daftar.insertMember(objMember);
                if (daf == 1)
                {
                    Response.Write("<script>alert('Berhasil');</script>");
                    Response.Write("<script>window.location='Home.aspx';</script>");
            }
            else
                {
                    Response.Write("<script>alert('Gagal');</script>");
                }
          
        }

        protected void member_TextChanged(object sender, EventArgs e)
        {
            Auto();
        }
    }
}