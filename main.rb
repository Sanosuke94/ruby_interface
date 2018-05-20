# Author: Cedric Valcy
# Première interface graphique
# 20 mai 2018
require 'gtk3'

class WindowApp < Gtk::Window
	
	def initialize
		super
		signal_connect "destroy" do
			Gtk.main_quit
		end
		
		set_title 'Interface personnel'
		set_default_size 600, 400
		set_window_position :center
		show
	end
	
	
end

window = WindowApp.new
Gtk.main