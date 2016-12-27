using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace NhanVien
{
    public class DatHang
    {
        public string MaNVL { get; set; }
        public string TenNVL { get; set; }
        public string LoaiNVL { get; set; }
        public string Quycach { get; set; }
        public string DVT { get; set; }
        //public float SoLuongTrongKho { get; set; }
        //public float SoLuongDatLai { get; set; }

        public DatHang(string Ma_NVL, string Ten_NVL, string Loai_NVL, string Quycach_NVL, string dvt)
        {
            this.MaNVL = Ma_NVL;
            this.TenNVL = Ten_NVL;
            this.LoaiNVL = Loai_NVL;
            this.Quycach = Quycach_NVL;
            this.DVT = dvt;
            //this.SoLuongTrongKho = SLTrongKho;
            //this.SoLuongDatLai = SLDatLai;
        }
    }
}
