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
    /// Interaction logic for ChucVuUC.xaml
    /// </summary>
    public partial class ChucVuUC : UserControl
    {
        public ChucVuViewModel viewModel { get; set; }
        public ChucVuUC()
        {
            InitializeComponent();
            this.DataContext = viewModel = new ChucVuViewModel();
        }
    }
}
