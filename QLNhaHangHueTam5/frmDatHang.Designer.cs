namespace NhanVien
{
    partial class frmDatHang
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDatHang));
            this.imlPrint = new System.Windows.Forms.ImageList(this.components);
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tpDonDatHang = new System.Windows.Forms.TabPage();
            this.btPrint = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvDatHang = new System.Windows.Forms.DataGridView();
            this.tpXuatNhapKho = new System.Windows.Forms.TabPage();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btHienThiTatCa = new System.Windows.Forms.Button();
            this.txtNhap = new System.Windows.Forms.TextBox();
            this.btTimKiem = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.rdTheoMa = new System.Windows.Forms.RadioButton();
            this.rdTheoTen = new System.Windows.Forms.RadioButton();
            this.cbTenLoaiNVL = new System.Windows.Forms.ComboBox();
            this.txtMaNVL = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.nudSoLuongNhap = new System.Windows.Forms.NumericUpDown();
            this.btNhap = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDVTNhap = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.nudSoLuongXuat = new System.Windows.Forms.NumericUpDown();
            this.btXuat = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDVTXuat = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dgvXuatNhapKho = new System.Windows.Forms.DataGridView();
            this.cbMaLoaiNVL = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lbMaLoaiNVL = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tpDonDatHang.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatHang)).BeginInit();
            this.tpXuatNhapKho.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuongNhap)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuongXuat)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvXuatNhapKho)).BeginInit();
            this.SuspendLayout();
            // 
            // imlPrint
            // 
            this.imlPrint.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imlPrint.ImageStream")));
            this.imlPrint.TransparentColor = System.Drawing.Color.Transparent;
            this.imlPrint.Images.SetKeyName(0, "printer.png");
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tpDonDatHang);
            this.tabControl1.Controls.Add(this.tpXuatNhapKho);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(776, 533);
            this.tabControl1.TabIndex = 3;
            // 
            // tpDonDatHang
            // 
            this.tpDonDatHang.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.tpDonDatHang.Controls.Add(this.btPrint);
            this.tpDonDatHang.Controls.Add(this.label1);
            this.tpDonDatHang.Controls.Add(this.dgvDatHang);
            this.tpDonDatHang.Location = new System.Drawing.Point(4, 22);
            this.tpDonDatHang.Name = "tpDonDatHang";
            this.tpDonDatHang.Padding = new System.Windows.Forms.Padding(3);
            this.tpDonDatHang.Size = new System.Drawing.Size(768, 507);
            this.tpDonDatHang.TabIndex = 0;
            this.tpDonDatHang.Text = "Đơn đặt hàng";
            // 
            // btPrint
            // 
            this.btPrint.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btPrint.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btPrint.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.btPrint.ImageIndex = 0;
            this.btPrint.ImageList = this.imlPrint;
            this.btPrint.Location = new System.Drawing.Point(703, 3);
            this.btPrint.Name = "btPrint";
            this.btPrint.Size = new System.Drawing.Size(61, 53);
            this.btPrint.TabIndex = 5;
            this.btPrint.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(2, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(636, 23);
            this.label1.TabIndex = 4;
            this.label1.Text = "DANH SÁCH CÁC NGUYÊN VẬT LIỆU CẦN ĐẶT HÀNG ĐỂ NHẬP KHO:";
            // 
            // dgvDatHang
            // 
            this.dgvDatHang.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvDatHang.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.dgvDatHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDatHang.Location = new System.Drawing.Point(-4, 78);
            this.dgvDatHang.Name = "dgvDatHang";
            this.dgvDatHang.Size = new System.Drawing.Size(776, 440);
            this.dgvDatHang.TabIndex = 3;
            // 
            // tpXuatNhapKho
            // 
            this.tpXuatNhapKho.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.tpXuatNhapKho.Controls.Add(this.groupBox3);
            this.tpXuatNhapKho.Controls.Add(this.cbTenLoaiNVL);
            this.tpXuatNhapKho.Controls.Add(this.txtMaNVL);
            this.tpXuatNhapKho.Controls.Add(this.groupBox2);
            this.tpXuatNhapKho.Controls.Add(this.groupBox1);
            this.tpXuatNhapKho.Controls.Add(this.dgvXuatNhapKho);
            this.tpXuatNhapKho.Controls.Add(this.cbMaLoaiNVL);
            this.tpXuatNhapKho.Controls.Add(this.label7);
            this.tpXuatNhapKho.Controls.Add(this.label6);
            this.tpXuatNhapKho.Controls.Add(this.lbMaLoaiNVL);
            this.tpXuatNhapKho.Location = new System.Drawing.Point(4, 22);
            this.tpXuatNhapKho.Name = "tpXuatNhapKho";
            this.tpXuatNhapKho.Padding = new System.Windows.Forms.Padding(3);
            this.tpXuatNhapKho.Size = new System.Drawing.Size(768, 507);
            this.tpXuatNhapKho.TabIndex = 1;
            this.tpXuatNhapKho.Text = "Xuất nhập kho";
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox3.Controls.Add(this.btHienThiTatCa);
            this.groupBox3.Controls.Add(this.txtNhap);
            this.groupBox3.Controls.Add(this.btTimKiem);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Controls.Add(this.rdTheoMa);
            this.groupBox3.Controls.Add(this.rdTheoTen);
            this.groupBox3.Location = new System.Drawing.Point(3, 1);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(762, 57);
            this.groupBox3.TabIndex = 9;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Tìm kiếm";
            // 
            // btHienThiTatCa
            // 
            this.btHienThiTatCa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btHienThiTatCa.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btHienThiTatCa.Location = new System.Drawing.Point(662, 12);
            this.btHienThiTatCa.Name = "btHienThiTatCa";
            this.btHienThiTatCa.Size = new System.Drawing.Size(81, 40);
            this.btHienThiTatCa.TabIndex = 9;
            this.btHienThiTatCa.Text = "Hiển thị tất cả NVL";
            this.btHienThiTatCa.UseVisualStyleBackColor = true;
            this.btHienThiTatCa.Click += new System.EventHandler(this.btHienThiTatCa_Click);
            // 
            // txtNhap
            // 
            this.txtNhap.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtNhap.Location = new System.Drawing.Point(85, 19);
            this.txtNhap.Name = "txtNhap";
            this.txtNhap.Size = new System.Drawing.Size(155, 20);
            this.txtNhap.TabIndex = 8;
            // 
            // btTimKiem
            // 
            this.btTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btTimKiem.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btTimKiem.Location = new System.Drawing.Point(470, 18);
            this.btTimKiem.Name = "btTimKiem";
            this.btTimKiem.Size = new System.Drawing.Size(75, 27);
            this.btTimKiem.TabIndex = 7;
            this.btTimKiem.Text = "Tìm kiếm";
            this.btTimKiem.UseVisualStyleBackColor = true;
            this.btTimKiem.Click += new System.EventHandler(this.btTimKiem_Click);
            // 
            // label8
            // 
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(3, 20);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(82, 23);
            this.label8.TabIndex = 0;
            this.label8.Text = "Tìm NVL";
            // 
            // rdTheoMa
            // 
            this.rdTheoMa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.rdTheoMa.AutoSize = true;
            this.rdTheoMa.Cursor = System.Windows.Forms.Cursors.Hand;
            this.rdTheoMa.Location = new System.Drawing.Point(275, 22);
            this.rdTheoMa.Name = "rdTheoMa";
            this.rdTheoMa.Size = new System.Drawing.Size(67, 17);
            this.rdTheoMa.TabIndex = 6;
            this.rdTheoMa.Text = "Theo mã";
            this.rdTheoMa.UseVisualStyleBackColor = true;
            // 
            // rdTheoTen
            // 
            this.rdTheoTen.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.rdTheoTen.AutoSize = true;
            this.rdTheoTen.Checked = true;
            this.rdTheoTen.Cursor = System.Windows.Forms.Cursors.Hand;
            this.rdTheoTen.Location = new System.Drawing.Point(363, 22);
            this.rdTheoTen.Name = "rdTheoTen";
            this.rdTheoTen.Size = new System.Drawing.Size(68, 17);
            this.rdTheoTen.TabIndex = 6;
            this.rdTheoTen.TabStop = true;
            this.rdTheoTen.Text = "Theo tên";
            this.rdTheoTen.UseVisualStyleBackColor = true;
            // 
            // cbTenLoaiNVL
            // 
            this.cbTenLoaiNVL.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cbTenLoaiNVL.FormattingEnabled = true;
            this.cbTenLoaiNVL.Location = new System.Drawing.Point(351, 64);
            this.cbTenLoaiNVL.Name = "cbTenLoaiNVL";
            this.cbTenLoaiNVL.Size = new System.Drawing.Size(121, 21);
            this.cbTenLoaiNVL.TabIndex = 5;
            this.cbTenLoaiNVL.SelectedIndexChanged += new System.EventHandler(this.cbTenLoaiNVL_SelectedIndexChanged);
            // 
            // txtMaNVL
            // 
            this.txtMaNVL.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMaNVL.Location = new System.Drawing.Point(672, 66);
            this.txtMaNVL.Name = "txtMaNVL";
            this.txtMaNVL.Size = new System.Drawing.Size(90, 20);
            this.txtMaNVL.TabIndex = 4;
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox2.BackColor = System.Drawing.Color.LightSeaGreen;
            this.groupBox2.Controls.Add(this.nudSoLuongNhap);
            this.groupBox2.Controls.Add(this.btNhap);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.txtDVTNhap);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(391, 100);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(374, 100);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Nhập kho";
            // 
            // nudSoLuongNhap
            // 
            this.nudSoLuongNhap.DecimalPlaces = 1;
            this.nudSoLuongNhap.Increment = new decimal(new int[] {
            5,
            0,
            0,
            65536});
            this.nudSoLuongNhap.Location = new System.Drawing.Point(114, 27);
            this.nudSoLuongNhap.Maximum = new decimal(new int[] {
            50,
            0,
            0,
            0});
            this.nudSoLuongNhap.Name = "nudSoLuongNhap";
            this.nudSoLuongNhap.Size = new System.Drawing.Size(100, 20);
            this.nudSoLuongNhap.TabIndex = 3;
            // 
            // btNhap
            // 
            this.btNhap.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btNhap.Location = new System.Drawing.Point(252, 36);
            this.btNhap.Name = "btNhap";
            this.btNhap.Size = new System.Drawing.Size(75, 33);
            this.btNhap.TabIndex = 2;
            this.btNhap.Text = "Nhập";
            this.btNhap.UseVisualStyleBackColor = true;
            this.btNhap.Click += new System.EventHandler(this.btNhap_Click);
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(37, 64);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(74, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Đơn vị tính";
            // 
            // txtDVTNhap
            // 
            this.txtDVTNhap.Location = new System.Drawing.Point(114, 64);
            this.txtDVTNhap.Name = "txtDVTNhap";
            this.txtDVTNhap.Size = new System.Drawing.Size(100, 20);
            this.txtDVTNhap.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(38, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 23);
            this.label4.TabIndex = 1;
            this.label4.Text = "Số lượng";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.LightBlue;
            this.groupBox1.Controls.Add(this.nudSoLuongXuat);
            this.groupBox1.Controls.Add(this.btXuat);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtDVTXuat);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(3, 100);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(372, 100);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Xuất kho";
            // 
            // nudSoLuongXuat
            // 
            this.nudSoLuongXuat.DecimalPlaces = 1;
            this.nudSoLuongXuat.Increment = new decimal(new int[] {
            5,
            0,
            0,
            65536});
            this.nudSoLuongXuat.Location = new System.Drawing.Point(113, 27);
            this.nudSoLuongXuat.Maximum = new decimal(new int[] {
            20,
            0,
            0,
            0});
            this.nudSoLuongXuat.Name = "nudSoLuongXuat";
            this.nudSoLuongXuat.Size = new System.Drawing.Size(100, 20);
            this.nudSoLuongXuat.TabIndex = 0;
            // 
            // btXuat
            // 
            this.btXuat.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btXuat.Location = new System.Drawing.Point(251, 36);
            this.btXuat.Name = "btXuat";
            this.btXuat.Size = new System.Drawing.Size(75, 33);
            this.btXuat.TabIndex = 2;
            this.btXuat.Text = "Xuất";
            this.btXuat.UseVisualStyleBackColor = true;
            this.btXuat.Click += new System.EventHandler(this.btXuat_Click);
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(36, 64);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 23);
            this.label3.TabIndex = 1;
            this.label3.Text = "Đơn vị tính";
            // 
            // txtDVTXuat
            // 
            this.txtDVTXuat.Location = new System.Drawing.Point(113, 64);
            this.txtDVTXuat.Name = "txtDVTXuat";
            this.txtDVTXuat.Size = new System.Drawing.Size(100, 20);
            this.txtDVTXuat.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(37, 27);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Số lượng";
            // 
            // dgvXuatNhapKho
            // 
            this.dgvXuatNhapKho.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvXuatNhapKho.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.dgvXuatNhapKho.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvXuatNhapKho.Location = new System.Drawing.Point(3, 206);
            this.dgvXuatNhapKho.Name = "dgvXuatNhapKho";
            this.dgvXuatNhapKho.Size = new System.Drawing.Size(762, 298);
            this.dgvXuatNhapKho.TabIndex = 2;
            this.dgvXuatNhapKho.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvXuatNhapKho_CellClick);
            // 
            // cbMaLoaiNVL
            // 
            this.cbMaLoaiNVL.FormattingEnabled = true;
            this.cbMaLoaiNVL.Location = new System.Drawing.Point(94, 65);
            this.cbMaLoaiNVL.Name = "cbMaLoaiNVL";
            this.cbMaLoaiNVL.Size = new System.Drawing.Size(88, 21);
            this.cbMaLoaiNVL.TabIndex = 1;
            this.cbMaLoaiNVL.SelectedIndexChanged += new System.EventHandler(this.cbMaLoaiNVL_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(590, 68);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(60, 23);
            this.label7.TabIndex = 0;
            this.label7.Text = "Mã NVL";
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(249, 68);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(95, 23);
            this.label6.TabIndex = 0;
            this.label6.Text = "Tên loại NVL";
            // 
            // lbMaLoaiNVL
            // 
            this.lbMaLoaiNVL.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMaLoaiNVL.Location = new System.Drawing.Point(6, 68);
            this.lbMaLoaiNVL.Name = "lbMaLoaiNVL";
            this.lbMaLoaiNVL.Size = new System.Drawing.Size(82, 23);
            this.lbMaLoaiNVL.TabIndex = 0;
            this.lbMaLoaiNVL.Text = "Mã loại NVL";
            // 
            // frmDatHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(776, 533);
            this.Controls.Add(this.tabControl1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmDatHang";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản lý nguyên vật liệu";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmDatHang_FormClosed);
            this.Load += new System.EventHandler(this.frmDatHang_Load);
            this.tabControl1.ResumeLayout(false);
            this.tpDonDatHang.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatHang)).EndInit();
            this.tpXuatNhapKho.ResumeLayout(false);
            this.tpXuatNhapKho.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuongNhap)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuongXuat)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvXuatNhapKho)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ImageList imlPrint;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tpDonDatHang;
        private System.Windows.Forms.Button btPrint;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvDatHang;
        private System.Windows.Forms.TabPage tpXuatNhapKho;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btNhap;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtDVTNhap;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btXuat;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtDVTXuat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvXuatNhapKho;
        private System.Windows.Forms.ComboBox cbMaLoaiNVL;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbMaLoaiNVL;
        private System.Windows.Forms.NumericUpDown nudSoLuongNhap;
        private System.Windows.Forms.TextBox txtMaNVL;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.NumericUpDown nudSoLuongXuat;
        private System.Windows.Forms.ComboBox cbTenLoaiNVL;
        private System.Windows.Forms.Button btTimKiem;
        private System.Windows.Forms.RadioButton rdTheoTen;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtNhap;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.RadioButton rdTheoMa;
        private System.Windows.Forms.Button btHienThiTatCa;
    }
}