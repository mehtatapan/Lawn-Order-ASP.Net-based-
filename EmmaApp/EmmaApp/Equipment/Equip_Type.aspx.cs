﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmaApp
{
    public partial class Equip_Type : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dvEquip_Type.Rows[0].Visible = false;
        }

        protected void btn_AddNew_Click(object sender, EventArgs e)
        {
            dvEquip_Type.Rows[0].Visible = true;
        }
    }
}
