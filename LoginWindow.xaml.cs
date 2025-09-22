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
using System.Windows.Shapes;

namespace QuanLyLuong
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginViewModel viewModel { get; set; }
        public LoginWindow()
        {
            InitializeComponent();
            this.DataContext = viewModel = new LoginViewModel();
        }

        private void loginWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if(AppState.Exitable)
            {
                System.Windows.Application.Current.Shutdown();
            }
        }
    }
}
