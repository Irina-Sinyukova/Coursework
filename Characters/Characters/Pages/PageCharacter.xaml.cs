﻿using System;
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
using Characters.Classes;

namespace Characters.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageCharacter.xaml
    /// </summary>
    public partial class PageCharacter : Page
    {
        public PageCharacter()
        {
            InitializeComponent();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                GameCharactersEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridCharacter.ItemsSource = GameCharactersEntities.GetContext().Characters.ToList();
            }
        }
    }
}
