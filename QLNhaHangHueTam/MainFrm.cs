using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace NhanVien
{
    public partial class MainFrm : Form
    {
        public MainFrm()
        {
            frmDelay f = new frmDelay();
            f.ShowDialog();
            InitializeComponent();
        }
    }
}
