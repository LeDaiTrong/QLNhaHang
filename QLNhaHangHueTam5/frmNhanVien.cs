﻿using System;
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
        public NhanVien()
        {
            InitializeComponent();
        }

        private void NhanVien_Load(object sender, EventArgs e)
        {
            cnStr = "Server = .; Database = QuanLyATC_HueTam; Integrated security = true;";
            cn = new SqlConnection();
            cn.ConnectionString = cnStr;
            List<Employees> lst = GetEmployee();
            dgvNhanVien.DataSource = lst;
            txtMaNV.Enabled = false;
            btLuuNV.Enabled = false;
            
            try
            {
                string sql = "SELECT ID_ChucVu FROM CHUCVU";
                SqlCommand cmdPosition = new SqlCommand();
                cmdPosition.CommandText = sql;
                cmdPosition.Connection = cn;
                cn.Open();
                SqlDataReader dr = cmdPosition.ExecuteReader();
                while (dr.Read())
                {
                    cbMaChucVu.Items.Add(dr[0]);
                }
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

        public List<Employees> GetEmployee()
        {
            cn.Open();
            List <Employees> list = new List<Employees>();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "uspXemNV";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();

                int id, socalam;
                string hoNV, tenNV, chucvu, machucvu,diachi, fone;
                Boolean gioitinh;
                DateTime ngayvaolam;
                while (dr.Read())
                {
                    id = dr.GetInt32(0);
                    hoNV = dr.GetString(1);
                    tenNV = dr.GetString(2);
                    chucvu = dr.GetString(3);
                    machucvu = dr.GetString(4);
                    gioitinh = dr.GetBoolean(5);
                    ngayvaolam = dr.GetDateTime(7);
                    socalam = dr.GetInt32(8);
                    diachi = dr.GetString(6);
                    fone = dr.GetString(9);
                    Employees nv = new Employees(id, hoNV, tenNV ,chucvu, machucvu, gioitinh, socalam, diachi, ngayvaolam,fone);
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
            txtMaNV.Enabled = false;
            btLuuNV.Enabled = true;
            SetNull();
        }
        public Boolean KieuGioiTinh()
        {
            if (cbGioiTinhNV.Text == "Nam")
                return true;
            else
                return false;
        }

        private void btTinhLuong_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmBangLuong bangLuong = new frmBangLuong();
            bangLuong.ShowDialog();
        }

        private void dgvNhanVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //cbChucVu.Enabled = false;
            if(e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dgvNhanVien.Rows[e.RowIndex];
                txtMaNV.Text = row.Cells[0].Value.ToString();
                txtHoNV.Text = row.Cells[1].Value.ToString();
                txtTenNV.Text = row.Cells[2].Value.ToString();
                cbMaChucVu.Text = row.Cells[4].Value.ToString();
                cbGioiTinhNV.Text = row.Cells[5].Value.ToString();
                dtpNgayVaoLam.Text = row.Cells[6].Value.ToString();
                txtDiaChi.Text = row.Cells[8].Value.ToString();
                txtSoCaLam.Text = row.Cells[7].Value.ToString();
                txtSDTNV.Text = row.Cells[9].Value.ToString();
            }
        }

        private void btXoaNV_Click(object sender, EventArgs e)
        {
            cn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "uspXoaNV";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Ma", txtMaNV.Text));
                if (MessageBox.Show("Bạn muốn xóa?", "Lưu ý", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Xóa thành công.");
                }
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

        private void btSuaNV_Click(object sender, EventArgs e)
        {
            txtMaNV.Enabled = false;
            cn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "uspSuaNV";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Ma", txtMaNV.Text));
                cmd.Parameters.Add(new SqlParameter("@HoNV", txtHoNV.Text));
                cmd.Parameters.Add(new SqlParameter("@TenNV", txtTenNV.Text));
                cmd.Parameters.Add(new SqlParameter("@Chucvu", cbMaChucVu.Text));
                cmd.Parameters.Add(new SqlParameter("@Gioitinh", KieuGioiTinh()));
                cmd.Parameters.Add(new SqlParameter("@Ngayvaolam", dtpNgayVaoLam.Text));
                cmd.Parameters.Add(new SqlParameter("@Socalam", txtSoCaLam.Text));
                cmd.Parameters.Add(new SqlParameter("@Diachi", txtDiaChi.Text));
                cmd.Parameters.Add(new SqlParameter("@SDT", txtSDTNV.Text));
                if (MessageBox.Show("Bạn muốn sửa?", "Cảnh báo!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Sửa thành công.");
                }
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
        public void SetNull()
        {
            txtMaNV.Text = "";
            txtHoNV.Text = "";
            txtTenNV.Text = "";
            cbGioiTinhNV.Text = "";
            cbMaChucVu.Text = "";
            txtDiaChi.Text = "";
            dtpNgayVaoLam.Text = "";
            txtSoCaLam.Text = "";
            txtSDTNV.Text = "";
        }

        private void btLuuNV_Click(object sender, EventArgs e)
        {
            cn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "uspThamNV";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Ho", txtHoNV.Text));
                cmd.Parameters.Add(new SqlParameter("@Ten", txtTenNV.Text));
                cmd.Parameters.Add(new SqlParameter("@Chucvu", cbMaChucVu.Text));
                cmd.Parameters.Add(new SqlParameter("@Gioitinh", KieuGioiTinh()));
                cmd.Parameters.Add(new SqlParameter("@Ngayvaolam", dtpNgayVaoLam.Text));
                cmd.Parameters.Add(new SqlParameter("@Socalam", txtSoCaLam.Text));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", txtDiaChi.Text));
                cmd.Parameters.Add(new SqlParameter("@SDT", txtSDTNV.Text));

                if (MessageBox.Show("Bạn muốn lưu?", "Xác nhận!", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Thêm nhân viên thành công.");
                }
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

        //private void NhanVien_FormClosing(object sender, FormClosingEventArgs e)
        //{
        //    MainFrm f = new MainFrm();
        //    this.Hide();
        //    f.ShowDialog();
        //}

        private void NhanVien_FormClosed(object sender, FormClosedEventArgs e)
        {
            MainFrm f = new MainFrm();
            //this.Hide();
            f.Show();
        }
    }
}