using QuanLyLuong.AppCode;
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
    /// Interaction logic for HeaderUC.xaml
    /// </summary>
    public partial class HeaderUC : UserControl
    {
        public HeaderViewModel viewModel { get; set; }
        public HeaderUC()
        {
            InitializeComponent();
            this.DataContext = viewModel = new HeaderViewModel();
        }

        private void ListBoxItem_MouseUp(object sender, MouseButtonEventArgs e)
        {
            AppState.MainWindow.Hide();
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.ShowDialog();
            AppState.MainWindow.Show();
        }
    }
}
