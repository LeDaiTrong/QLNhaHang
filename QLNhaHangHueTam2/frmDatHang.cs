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
            string MaNVL, TenNVL, LoaiNVL, TenNCC, Quycach, dvt;
            double slcon;
            while (dr.Read())
            {
                MaNVL = dr.GetString(0);
                TenNVL = dr.GetString(1);
                LoaiNVL = dr.GetString(2);
                TenNCC = dr.GetString(3);
                Quycach = dr.GetString(4);
                slcon = dr.GetDouble(5);
                dvt = dr.GetString(6);
                DatHang DH1 = new DatHang(MaNVL, TenNVL, LoaiNVL, TenNCC, Quycach, slcon, dvt);
                list.Add(DH1);
                dgvDatHang.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvDatHang.ReadOnly = true;
            }
            dr.Close();
            return list;
        }
    }
}
