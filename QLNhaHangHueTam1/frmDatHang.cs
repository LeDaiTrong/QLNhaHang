using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace NhanVien
{
    public partial class frmDatHang : Form
    {
        string cnStr;
        SqlConnection cn;
        //DataSet ds;
        //DataTable dt = new DataTable();
        public frmDatHang()
        {
            InitializeComponent();
        }

        private void frmDatHang_Load(object sender, EventArgs e)
        {
            cnStr = "Server = .; Database = QuanLyATC_HueTam; Integrated security = true;";
            cn = new SqlConnection();
            cn.ConnectionString = cnStr;
            List<DatHang> lst = DonDatHang();
            dgvDatHang.DataSource = lst;
        }

        public List<DatHang> DonDatHang()
        {
            cn.Open();
            List<DatHang> list = new List<DatHang>();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "uspDatHang";
            cmd.Connection = cn;
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            string MaNVL, TenNVL, LoaiNVL, Quycach, dvt;
            //float slcon;
            while (dr.Read())
            {
                MaNVL = dr.GetString(0);
                TenNVL = dr.GetString(1);
                LoaiNVL = dr.GetString(2);
                Quycach = dr.GetString(3);
                dvt = dr.GetString(4);
                //slcon = dr.GetFloat(5);
                DatHang DH1 = new DatHang(MaNVL, TenNVL, LoaiNVL, Quycach, dvt);
                list.Add(DH1);
            }
            dr.Close();
            return list;
        }
    }
}
