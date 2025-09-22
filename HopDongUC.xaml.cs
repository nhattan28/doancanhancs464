using QuanLyLuong.EF;
using QuanLyLuong.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyLuong.UserControls
{
    /// <summary>
    /// Interaction logic for HopDongUC.xaml
    /// </summary>
    public partial class NhanVienSpread : UserControl
    {
        public HopDongViewModel viewModel { get; set; }
        public NhanVienSpread()
        {
            InitializeComponent();
            this.DataContext = viewModel = new HopDongViewModel();
        }
        public NhanVienSpread(NhanVien nhanVien)
        {
            InitializeComponent();
            this.DataContext = viewModel = new HopDongViewModel(nhanVien);
        }
    }
}
