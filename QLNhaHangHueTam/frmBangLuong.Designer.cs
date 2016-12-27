namespace NhanVien
{
    partial class frmBangLuong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvBangLuong = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtHoTenNV = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtGioiTinhNV = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtChucVu = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtSoCaLam = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtHeSoLuong = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtLuongThang = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBangLuong)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvBangLuong
            // 
            this.dgvBangLuong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBangLuong.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvBangLuong.Location = new System.Drawing.Point(0, 191);
            this.dgvBangLuong.Name = "dgvBangLuong";
            this.dgvBangLuong.Size = new System.Drawing.Size(770, 337);
            this.dgvBangLuong.TabIndex = 0;
            this.dgvBangLuong.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvBangLuong_CellClick);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(13, 4);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 26);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã nhân viên";
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(87, 4);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.ReadOnly = true;
            this.txtMaNV.Size = new System.Drawing.Size(63, 20);
            this.txtMaNV.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(13, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 26);
            this.label2.TabIndex = 1;
            this.label2.Text = "Họ Tên";
            // 
            // txtHoTenNV
            // 
            this.txtHoTenNV.Location = new System.Drawing.Point(87, 45);
            this.txtHoTenNV.Name = "txtHoTenNV";
            this.txtHoTenNV.ReadOnly = true;
            this.txtHoTenNV.Size = new System.Drawing.Size(185, 20);
            this.txtHoTenNV.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(12, 94);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(87, 26);
            this.label3.TabIndex = 1;
            this.label3.Text = "Giới tính";
            // 
            // txtGioiTinhNV
            // 
            this.txtGioiTinhNV.Location = new System.Drawing.Point(86, 94);
            this.txtGioiTinhNV.Name = "txtGioiTinhNV";
            this.txtGioiTinhNV.ReadOnly = true;
            this.txtGioiTinhNV.Size = new System.Drawing.Size(63, 20);
            this.txtGioiTinhNV.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(323, 4);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(87, 26);
            this.label4.TabIndex = 1;
            this.label4.Text = "Chức vụ";
            // 
            // txtChucVu
            // 
            this.txtChucVu.Location = new System.Drawing.Point(375, 4);
            this.txtChucVu.Name = "txtChucVu";
            this.txtChucVu.ReadOnly = true;
            this.txtChucVu.Size = new System.Drawing.Size(100, 20);
            this.txtChucVu.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(323, 45);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(87, 26);
            this.label5.TabIndex = 1;
            this.label5.Text = "SDT";
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(375, 45);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.ReadOnly = true;
            this.txtSDT.Size = new System.Drawing.Size(100, 20);
            this.txtSDT.TabIndex = 2;
            // 
            // label6
            // 
            this.label6.Location = new System.Drawing.Point(549, 4);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(94, 26);
            this.label6.TabIndex = 1;
            this.label6.Text = "Số ca làm (tháng)";
            // 
            // txtSoCaLam
            // 
            this.txtSoCaLam.Location = new System.Drawing.Point(649, 4);
            this.txtSoCaLam.Name = "txtSoCaLam";
            this.txtSoCaLam.ReadOnly = true;
            this.txtSoCaLam.Size = new System.Drawing.Size(109, 20);
            this.txtSoCaLam.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.Location = new System.Drawing.Point(544, 45);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(105, 26);
            this.label7.TabIndex = 1;
            this.label7.Text = "Hệ số theo chức vụ";
            // 
            // txtHeSoLuong
            // 
            this.txtHeSoLuong.Location = new System.Drawing.Point(649, 45);
            this.txtHeSoLuong.Name = "txtHeSoLuong";
            this.txtHeSoLuong.ReadOnly = true;
            this.txtHeSoLuong.Size = new System.Drawing.Size(109, 20);
            this.txtHeSoLuong.TabIndex = 2;
            this.txtHeSoLuong.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(556, 94);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(87, 26);
            this.label8.TabIndex = 1;
            this.label8.Text = "Lương tháng";
            // 
            // txtLuongThang
            // 
            this.txtLuongThang.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.txtLuongThang.ForeColor = System.Drawing.Color.Purple;
            this.txtLuongThang.Location = new System.Drawing.Point(649, 94);
            this.txtLuongThang.Name = "txtLuongThang";
            this.txtLuongThang.ReadOnly = true;
            this.txtLuongThang.Size = new System.Drawing.Size(109, 20);
            this.txtLuongThang.TabIndex = 2;
            this.txtLuongThang.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(551, 24);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(12, 13);
            this.label9.TabIndex = 3;
            this.label9.Text = "x";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(550, 71);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(13, 13);
            this.label10.TabIndex = 3;
            this.label10.Text = "=";
            // 
            // frmBangLuong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(770, 528);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtGioiTinhNV);
            this.Controls.Add(this.txtHoTenNV);
            this.Controls.Add(this.txtSDT);
            this.Controls.Add(this.txtLuongThang);
            this.Controls.Add(this.txtHeSoLuong);
            this.Controls.Add(this.txtSoCaLam);
            this.Controls.Add(this.txtChucVu);
            this.Controls.Add(this.txtMaNV);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvBangLuong);
            this.Name = "frmBangLuong";
            this.Text = "Bảng lương nhân viên";
            this.Load += new System.EventHandler(this.frmBangLuong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBangLuong)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvBangLuong;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtHoTenNV;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtGioiTinhNV;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtChucVu;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtSoCaLam;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtHeSoLuong;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtLuongThang;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
    }
}