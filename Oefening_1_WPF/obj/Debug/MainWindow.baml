   M S B A M L   `   `   `  ����I  EOefening_1_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Oefening_1_WPF.modelOefening_1_WPF.model  5   	       Oefening_1_WPF.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   4model"clr-namespace:Oefening_1_WPF.model     5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$  ApplicationCommands.Delete��5      6e     5   
   -   5        $ ApplicationCommands.Save��5      6c    � 	Resources 5
         Oefening_1_WPF.model.Shop   shop��%!   &	          5   
   5      5      .��5      � -   5        $
��Root��5       � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      $��* �6   .+�5   
   o� .@�5      m� $��Verwijderen��6    m� Command$  ApplicationCommands.Delete��6,   m� 5      $��Controleer Wijzigingen��6   $ ApplicationCommands.Save��67   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��
dtgegevens��5         AutoGenerateColumns .  $��1��6�   ��6%   ��  �� Source# [   �� Path$ Shops�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$

 Naam��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   �� *Name+  5      $
 Adres��6%    64   �� *Adress+  5      $
 Postcode��6%    67   �� *	Zipcode+  5      $

 Stad��6%    63   �� *City+5      5       5!      