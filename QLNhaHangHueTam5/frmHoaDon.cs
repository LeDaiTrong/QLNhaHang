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
    public partial class frmHoaDon : Form
    {
        string cnStr = "";
        SqlConnection cn;
        DataSet ds;
        DataTable orders = new DataTable();

        public frmHoaDon()
        {
            InitializeComponent();
        }

        private void frmHoaDon_Load(object sender, EventArgs e)
        {
            cnStr = "Server = .; Database = QuanLyATC_HueTam; Integrated security = true;";
            cn = new SqlConnection(cnStr);

            string sql = "SELECT * FROM ORDERS";
            orders = GetOrders(sql).Tables[0];
            cbMaHD.DataSource = orders;
            cbMaHD.DisplayMember = "ID_Orders";
            cbMaHD.ValueMember = "ID_Orders";

            txtMaKH.DataBindings.Add("Text", orders, "ID_KH");
            txtMaNV.DataBindings.Add("Text", orders, "ID_NV");
            dtpNgayLapHD.DataBindings.Add("Text", orders, "NgayGioDat");
            txtBanSo.DataBindings.Add("Text", orders, "BanSo");

            
        }

        public DataSet GetOrders(string sql)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
            finally
            {
                cn.Close();
            }
        }

        private void cbMaHD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT Ten_Mon, mord.SoLuong, mord.DonGia, (mon.DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS mord JOIN ORDERS ord ON ord.ID_Orders = mord.ID_Orders JOIN MON mon ON mon.ID_Mon = mord.ID_Mon WHERE ord.ID_Orders = '" + cbMaHD.Text + "'";
            dgvHoaDon.DataSource = GetOrders(sql).Tables[0];

            try
            {
                cn.Open();
                string sqlTotal = "SELECT (SUM(DonGia*SoLuong)) AS TongTien FROM MON_ORDERS WHERE ID_Orders = '" + cbMaHD.Text + "'";
                SqlCommand cmd = new SqlCommand(sqlTotal, cn);
                int TongTien = (int)cmd.ExecuteScalar();
                lbTongCong.Text = Convert.ToString(TongTien);
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void frmHoaDon_FormClosed(object sender, FormClosedEventArgs e)
        {
            MainFrm f = new MainFrm();
            f.Show();
        }
    }
}
