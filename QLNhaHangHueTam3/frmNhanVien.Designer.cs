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
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvNhanVien
            // 
            this.dgvNhanVien.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNhanVien.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvNhanVien.Location = new System.Drawing.Point(0, 138);
            this.dgvNhanVien.Name = "dgvNhanVien";
            this.dgvNhanVien.Size = new System.Drawing.Size(971, 259);
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
            this.label4.Location = new System.Drawing.Point(349, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 23);
            this.label4.TabIndex = 1;
            this.label4.Text = "Giới tính";
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(349, 81);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(100, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Địa chỉ";
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(114, 12);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(195, 20);
            this.txtMaNV.TabIndex = 2;
            // 
            // txtHoNV
            // 
            this.txtHoNV.Location = new System.Drawing.Point(114, 44);
            this.txtHoNV.Name = "txtHoNV";
            this.txtHoNV.Size = new System.Drawing.Size(195, 20);
            this.txtHoNV.TabIndex = 2;
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(455, 78);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(195, 20);
            this.txtDiaChi.TabIndex = 2;
            // 
            // btLuuNV
            // 
            this.btLuuNV.Location = new System.Drawing.Point(194, 109);
            this.btLuuNV.Name = "btLuuNV";
            this.btLuuNV.Size = new System.Drawing.Size(113, 27);
            this.btLuuNV.TabIndex = 3;
            this.btLuuNV.Text = "Lưu thêm NV";
            this.btLuuNV.UseVisualStyleBackColor = true;
            this.btLuuNV.Click += new System.EventHandler(this.btLuuNV_Click);
            // 
            // btThemNV
            // 
            this.btThemNV.Location = new System.Drawing.Point(61, 109);
            this.btThemNV.Name = "btThemNV";
            this.btThemNV.Size = new System.Drawing.Size(113, 27);
            this.btThemNV.TabIndex = 3;
            this.btThemNV.Text = "Thêm";
            this.btThemNV.UseVisualStyleBackColor = true;
            this.btThemNV.Click += new System.EventHandler(this.btThemNV_Click);
            // 
            // btSuaNV
            // 
            this.btSuaNV.Location = new System.Drawing.Point(333, 109);
            this.btSuaNV.Name = "btSuaNV";
            this.btSuaNV.Size = new System.Drawing.Size(113, 27);
            this.btSuaNV.TabIndex = 3;
            this.btSuaNV.Text = "Sửa";
            this.btSuaNV.UseVisualStyleBackColor = true;
            this.btSuaNV.Click += new System.EventHandler(this.btSuaNV_Click);
            // 
            // btXoaNV
            // 
            this.btXoaNV.Location = new System.Drawing.Point(466, 109);
            this.btXoaNV.Name = "btXoaNV";
            this.btXoaNV.Size = new System.Drawing.Size(113, 27);
            this.btXoaNV.TabIndex = 3;
            this.btXoaNV.Text = "Xóa";
            this.btXoaNV.UseVisualStyleBackColor = true;
            this.btXoaNV.Click += new System.EventHandler(this.btXoaNV_Click);
            // 
            // btTinhLuong
            // 
            this.btTinhLuong.Location = new System.Drawing.Point(611, 109);
            this.btTinhLuong.Name = "btTinhLuong";
            this.btTinhLuong.Size = new System.Drawing.Size(113, 27);
            this.btTinhLuong.TabIndex = 3;
            this.btTinhLuong.Text = "Xem bảng lương";
            this.btTinhLuong.UseVisualStyleBackColor = true;
            this.btTinhLuong.Click += new System.EventHandler(this.btTinhLuong_Click);
            // 
            // cbGioiTinhNV
            // 
            this.cbGioiTinhNV.FormattingEnabled = true;
            this.cbGioiTinhNV.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
            this.cbGioiTinhNV.Location = new System.Drawing.Point(455, 12);
            this.cbGioiTinhNV.Name = "cbGioiTinhNV";
            this.cbGioiTinhNV.Size = new System.Drawing.Size(121, 21);
            this.cbGioiTinhNV.TabIndex = 4;
            // 
            // lb
            // 
            this.lb.Location = new System.Drawing.Point(353, 47);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(100, 23);
            this.lb.TabIndex = 1;
            this.lb.Text = "Mã chức vụ";
            // 
            // label7
            // 
            this.label7.Location = new System.Drawing.Point(672, 13);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(75, 23);
            this.label7.TabIndex = 1;
            this.label7.Text = "Ngày vào làm";
            // 
            // label6
            // 
            this.label6.Location = new System.Drawing.Point(672, 82);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(75, 23);
            this.label6.TabIndex = 1;
            this.label6.Text = "Số điện thoại";
            // 
            // txtSDTNV
            // 
            this.txtSDTNV.Location = new System.Drawing.Point(764, 79);
            this.txtSDTNV.Name = "txtSDTNV";
            this.txtSDTNV.Size = new System.Drawing.Size(195, 20);
            this.txtSDTNV.TabIndex = 2;
            // 
            // dtpNgayVaoLam
            // 
            this.dtpNgayVaoLam.CustomFormat = "yyyy/mm/dd";
            this.dtpNgayVaoLam.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayVaoLam.Location = new System.Drawing.Point(764, 12);
            this.dtpNgayVaoLam.Name = "dtpNgayVaoLam";
            this.dtpNgayVaoLam.Size = new System.Drawing.Size(195, 20);
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
            this.txtTenNV.Size = new System.Drawing.Size(195, 20);
            this.txtTenNV.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(672, 47);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(75, 23);
            this.label8.TabIndex = 1;
            this.label8.Text = "Số ca làm";
            // 
            // txtSoCaLam
            // 
            this.txtSoCaLam.Location = new System.Drawing.Point(764, 44);
            this.txtSoCaLam.Name = "txtSoCaLam";
            this.txtSoCaLam.Size = new System.Drawing.Size(195, 20);
            this.txtSoCaLam.TabIndex = 2;
            // 
            // cbMaChucVu
            // 
            this.cbMaChucVu.FormattingEnabled = true;
            this.cbMaChucVu.Location = new System.Drawing.Point(455, 44);
            this.cbMaChucVu.Name = "cbMaChucVu";
            this.cbMaChucVu.Size = new System.Drawing.Size(121, 21);
            this.cbMaChucVu.TabIndex = 4;
            // 
            // NhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(971, 397);
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
            this.Name = "NhanVien";
            this.Text = "Nhân Viên Huệ Tâm";
            this.Load += new System.EventHandler(this.NhanVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).EndInit();
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
    }
}

