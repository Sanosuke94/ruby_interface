require 'gtk3'

class Home < Gtk::Window
	
	def initialize
		submenu
	end
	
	def submenu
		mb = Gtk::MenuBar.new
		
		fileMenu = Gtk::Menu.new
		filem = Gtk::MenuItem.new(:label => 'File')
		filem.set_submenu fileMenu
		
		mb.append filem
		
		exit = Gtk::MenuItem.new(:label => 'Exit')
		exit.signal_connect "activate" do
			Gtk.main_quit
		end
		
		fileMenu.append exit
		
		vbox = Gtk::Box.new(:vertical, 2)
		vbox.pack_start mb, :expand => false, :fill => false, :padding => 0
		
		add vbox
	end
end