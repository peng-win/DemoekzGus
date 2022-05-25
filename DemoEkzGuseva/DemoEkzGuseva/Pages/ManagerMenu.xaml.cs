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
using DemoEkzGuseva.AppDataFile;

namespace DemoEkzGuseva.Pages
{
    /// <summary>
    /// Логика взаимодействия для ManagerMenu.xaml
    /// </summary>
    public partial class ManagerMenu : Page
    {
        public ManagerMenu()
        {
            InitializeComponent();
        }

        private void BtnNewClient_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.frmMain.Navigate(new ClientsPage());
        }

        private void BtnProdazha_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
