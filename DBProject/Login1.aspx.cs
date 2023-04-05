using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBProject.DAL;

namespace DBProject
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idoriginal"] = "";
        }

        //-----------------------Function1--------------------------//
        protected void loginV(object sender, EventArgs e)
        {
            string email = loginEmail.Text;
            string password = loginPassword.Text;

            myDAL objmyDAl = new myDAL();

            int status = 0;
            int type = 0;
            int id = 0;

            status = objmyDAl.validateLogin(email, password, ref type, ref id);

            if (status == 0)
            {
                Session["idoriginal"] = id;

                if (type == 1)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("~/Patient/PatientHome.aspx");
                    return;
                }

                else if (type == 2)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("~/Doctor/DoctorHome.aspx");
                    return;
                }

                else if (type == 3)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("~/Admin/AdminHome.aspx");
                    return;
                }
            }
        }
    }
}
