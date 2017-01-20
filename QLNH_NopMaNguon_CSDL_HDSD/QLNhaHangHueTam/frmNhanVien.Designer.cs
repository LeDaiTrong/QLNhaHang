namespace NhanVien
{
    partial class NhanVien
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(NhanVien));
            this.dgvNhanVien = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.txtHoNV = new System.Windows.Forms.TextBox();
            this.txtDiaChi = new System.Windows.Forms.TextBox();
            this.btLuuNV = new System.Windows.Forms.Button();
            this.btThemNV = new System.Windows.Forms.Button();
            this.btSuaNV = new System.Windows.Forms.Button();
            this.btXoaNV = new System.Windows.Forms.Button();
            this.btTinhLuong = new System.Windows.Forms.Button();
            this.cbGioiTinhNV = new System.Windows.Forms.ComboBox();
            this.lb = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtSDTNV = new System.Windows.Forms.TextBox();
            this.dtpNgayVaoLam = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTenNV = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtSoCaLam = new System.Windows.Forms.TextBox();
            this.cbMaChucVu = new System.Windows.Forms.ComboBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvNhanVien
            // 
            this.dgvNhanVien.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvNhanVien.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvNhanVien.BackgroundColor = System.Drawing.Color.YellowGreen;
            this.dgvNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNhanVien.Location = new System.Drawing.Point(0, 141);
            this.dgvNhanVien.Name = "dgvNhanVien";
            this.dgvNhanVien.Size = new System.Drawing.Size(971, 466);
            this.dgvNhanVien.TabIndex = 0;
            this.dgvNhanVien.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvNhanVien_CellClick);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 23);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã Nhân Viên";
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(12, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Họ NV";
            // 
            // label4
            // 
            this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label4.Location = new System.Drawing.Point(339, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(51, 23);
            this.label4.TabIndex = 1;
            this.label4.Text = "Giới tính";
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.Location = new System.Drawing.Point(339, 79);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Địa chỉ";
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(114, 12);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(160, 20);
            this.txtMaNV.TabIndex = 2;
            // 
            // txtHoNV
            // 
            this.txtHoNV.Location = new System.Drawing.Point(114, 44);
            this.txtHoNV.Name = "txtHoNV";
            this.txtHoNV.Size = new System.Drawing.Size(160, 20);
            this.txtHoNV.TabIndex = 2;
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDiaChi.Location = new System.Drawing.Point(410, 78);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(234, 20);
            this.txtDiaChi.TabIndex = 2;
            // 
            // btLuuNV
            // 
            this.btLuuNV.Location = new System.Drawing.Point(266, 108);
            this.btLuuNV.Name = "btLuuNV";
            this.btLuuNV.Size = new System.Drawing.Size(95, 27);
            this.btLuuNV.TabIndex = 3;
            this.btLuuNV.Text = "Lưu thêm NV";
            this.btLuuNV.UseVisualStyleBackColor = true;
            this.btLuuNV.Click += new System.EventHandler(this.btLuuNV_Click);
            // 
            // btThemNV
            // 
            this.btThemNV.Location = new System.Drawing.Point(91, 108);
            this.btThemNV.Name = "btThemNV";
            this.btThemNV.Size = new System.Drawing.Size(95, 27);
            this.btThemNV.TabIndex = 3;
            this.btThemNV.Text = "Thêm";
            this.btThemNV.UseVisualStyleBackColor = true;
            this.btThemNV.Click += new System.EventHandler(this.btThemNV_Click);
            // 
            // btSuaNV
            // 
            this.btSuaNV.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.btSuaNV.Location = new System.Drawing.Point(441, 108);
            this.btSuaNV.Name = "btSuaNV";
            this.btSuaNV.Size = new System.Drawing.Size(95, 27);
            this.btSuaNV.TabIndex = 3;
            this.btSuaNV.Text = "Sửa";
            this.btSuaNV.UseVisualStyleBackColor = true;
            this.btSuaNV.Click += new System.EventHandler(this.btSuaNV_Click);
            // 
            // btXoaNV
            // 
            this.btXoaNV.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btXoaNV.Location = new System.Drawing.Point(616, 108);
            this.btXoaNV.Name = "btXoaNV";
            this.btXoaNV.Size = new System.Drawing.Size(95, 27);
            this.btXoaNV.TabIndex = 3;
            this.btXoaNV.Text = "Xóa";
            this.btXoaNV.UseVisualStyleBackColor = true;
            this.btXoaNV.Click += new System.EventHandler(this.btXoaNV_Click);
            // 
            // btTinhLuong
            // 
            this.btTinhLuong.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btTinhLuong.Location = new System.Drawing.Point(791, 108);
            this.btTinhLuong.Name = "btTinhLuong";
            this.btTinhLuong.Size = new System.Drawing.Size(95, 27);
            this.btTinhLuong.TabIndex = 3;
            this.btTinhLuong.Text = "Xem bảng lương";
            this.btTinhLuong.UseVisualStyleBackColor = true;
            this.btTinhLuong.Click += new System.EventHandler(this.btTinhLuong_Click);
            // 
            // cbGioiTinhNV
            // 
            this.cbGioiTinhNV.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cbGioiTinhNV.FormattingEnabled = true;
            this.cbGioiTinhNV.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
            this.cbGioiTinhNV.Location = new System.Drawing.Point(410, 11);
            this.cbGioiTinhNV.Name = "cbGioiTinhNV";
            this.cbGioiTinhNV.Size = new System.Drawing.Size(121, 21);
            this.cbGioiTinhNV.TabIndex = 4;
            // 
            // lb
            // 
            this.lb.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.lb.Location = new System.Drawing.Point(339, 47);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(73, 23);
            this.lb.TabIndex = 1;
            this.lb.Text = "Mã chức vụ";
            // 
            // label7
            // 
            this.label7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label7.Location = new System.Drawing.Point(692, 13);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(75, 23);
            this.label7.TabIndex = 1;
            this.label7.Text = "Ngày vào làm";
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label6.Location = new System.Drawing.Point(692, 82);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(75, 23);
            this.label6.TabIndex = 1;
            this.label6.Text = "Số điện thoại";
            // 
            // txtSDTNV
            // 
            this.txtSDTNV.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSDTNV.Location = new System.Drawing.Point(773, 79);
            this.txtSDTNV.Name = "txtSDTNV";
            this.txtSDTNV.Size = new System.Drawing.Size(186, 20);
            this.txtSDTNV.TabIndex = 2;
            // 
            // dtpNgayVaoLam
            // 
            this.dtpNgayVaoLam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.dtpNgayVaoLam.CustomFormat = "yyyy/mm/dd";
            this.dtpNgayVaoLam.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayVaoLam.Location = new System.Drawing.Point(773, 12);
            this.dtpNgayVaoLam.Name = "dtpNgayVaoLam";
            this.dtpNgayVaoLam.Size = new System.Drawing.Size(186, 20);
            this.dtpNgayVaoLam.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(13, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 23);
            this.label3.TabIndex = 1;
            this.label3.Text = "Tên NV";
            // 
            // txtTenNV
            // 
            this.txtTenNV.Location = new System.Drawing.Point(115, 78);
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(160, 20);
            this.txtTenNV.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label8.Location = new System.Drawing.Point(692, 47);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(75, 23);
            this.label8.TabIndex = 1;
            this.label8.Text = "Số ca làm";
            // 
            // txtSoCaLam
            // 
            this.txtSoCaLam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSoCaLam.Location = new System.Drawing.Point(773, 44);
            this.txtSoCaLam.Name = "txtSoCaLam";
            this.txtSoCaLam.Size = new System.Drawing.Size(186, 20);
            this.txtSoCaLam.TabIndex = 2;
            // 
            // cbMaChucVu
            // 
            this.cbMaChucVu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cbMaChucVu.FormattingEnabled = true;
            this.cbMaChucVu.Location = new System.Drawing.Point(410, 43);
            this.cbMaChucVu.Name = "cbMaChucVu";
            this.cbMaChucVu.Size = new System.Drawing.Size(121, 21);
            this.cbMaChucVu.TabIndex = 4;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureBox1.Image = global::NhanVien.Properties.Resources.next;
            this.pictureBox1.Location = new System.Drawing.Point(885, 108);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(27, 27);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 6;
            this.pictureBox1.TabStop = false;
            // 
            // NhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.OliveDrab;
            this.ClientSize = new System.Drawing.Size(971, 607);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.dtpNgayVaoLam);
            this.Controls.Add(this.cbMaChucVu);
            this.Controls.Add(this.cbGioiTinhNV);
            this.Controls.Add(this.btTinhLuong);
            this.Controls.Add(this.btXoaNV);
            this.Controls.Add(this.btSuaNV);
            this.Controls.Add(this.btThemNV);
            this.Controls.Add(this.btLuuNV);
            this.Controls.Add(this.txtSoCaLam);
            this.Controls.Add(this.txtSDTNV);
            this.Controls.Add(this.txtTenNV);
            this.Controls.Add(this.txtHoNV);
            this.Controls.Add(this.txtDiaChi);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtMaNV);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.lb);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvNhanVien);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "NhanVien";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản lý nhân viên";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.NhanVien_FormClosed);
            this.Load += new System.EventHandler(this.NhanVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvNhanVien;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.TextBox txtHoNV;
        private System.Windows.Forms.TextBox txtDiaChi;
        private System.Windows.Forms.Button btLuuNV;
        private System.Windows.Forms.Button btThemNV;
        private System.Windows.Forms.Button btSuaNV;
        private System.Windows.Forms.Button btXoaNV;
        private System.Windows.Forms.Button btTinhLuong;
        private System.Windows.Forms.ComboBox cbGioiTinhNV;
        private System.Windows.Forms.Label lb;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtSDTNV;
        private System.Windows.Forms.DateTimePicker dtpNgayVaoLam;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtTenNV;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtSoCaLam;
        private System.Windows.Forms.ComboBox cbMaChucVu;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

