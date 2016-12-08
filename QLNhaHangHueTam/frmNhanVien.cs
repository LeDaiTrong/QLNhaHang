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
    public partial class NhanVien : Form
    {
        string cnStr;
        SqlConnection cn;
        DataTable dt = new DataTable();
        DataSet ds;
        public NhanVien()
        {
            InitializeComponent();
        }

        private void NhanVien_Load(object sender, EventArgs e)
        {
            cnStr = "Server = .; Database = QuanLyATC_HueTam; Integrated security = true;";
            cn = new SqlConnection();
            cn.ConnectionString = cnStr;
            List<Employees> lst = GetEmployee("SELECT * FROM NHANVIEN");
            dgvNhanVien.DataSource = lst;

            string sql = "SELECT ID_ChucVu FROM CHUCVU";
            dt = GetChucVu(sql).Tables[0];
            cbChucVuNV.DataSource = dt;
            cbChucVuNV.DisplayMember = "ID_NV";
            cbChucVuNV.ValueMember = "ID_NV";
        }

        public List<Employees> GetEmployee(string sql)
        {
            cn.Open();
            List <Employees> list = new List<Employees>();
            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader dr = cmd.ExecuteReader();

                int id, socalam;
                string ho, ten, chucvu, diachi, fone;
                Boolean gioitinh;
                DateTime ngayvaolam;
                while (dr.Read())
                {
                    id = dr.GetInt32(0);
                    ho = dr.GetString(1);
                    ten = dr.GetString(2);
                    chucvu = dr.GetString(3);
                    gioitinh = dr.GetBoolean(4);
                    ngayvaolam = dr.GetDateTime(5);
                    socalam = dr.GetInt32(6);
                    diachi = dr.GetString(7);
                    fone = dr.GetString(8);
                    Employees nv = new Employees(id, ho, ten, chucvu, gioitinh, ngayvaolam, socalam, diachi, fone);
                    list.Add(nv);
                }
                dr.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
            return list;
        }

        private void btThemNV_Click(object sender, EventArgs e)
        {
            cn.Open();
            txtMaNV.Enabled = false;
            
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "uspThamNV";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Ho", txtHoNV.Text));
                cmd.Parameters.Add(new SqlParameter("@Ten", txtTenNV.Text));
                
                cmd.Parameters.Add(new SqlParameter("@Chucvu", cbGioiTinhNV.Text));
                cmd.Parameters.Add(new SqlParameter("@Gioitinh", KieuGioiTinh()));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", txtDiaChi.Text));
                cmd.Parameters.Add(new SqlParameter("@Ngayvaolam", dtpNgayVaoLam.Text));
                cmd.Parameters.Add(new SqlParameter("@Socalam", txtSoCaLam.Text));
                cmd.Parameters.Add(new SqlParameter("@SDT", txtSDTNV.Text));
                cmd.ExecuteNonQuery();
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
        public Boolean KieuGioiTinh()
        {
            if (cbGioiTinhNV.Text == "Nam")
                return true;
            else
                return false;
        }
        public DataSet GetChucVu(string sql)
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
    }
}