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
    /// Interaction logic for KyLuatUC.xaml
    /// </summary>
    public partial class KyLuatUC : UserControl
    {
        public KyLuatViewModel viewModel { get; set; }
        public KyLuatUC()
        {
            InitializeComponent();
            this.DataContext = viewModel = new KyLuatViewModel();
        }
    }
}
