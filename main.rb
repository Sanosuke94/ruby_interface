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
		position
		
		set_title 'Interface personnel'
		set_default_size 640, 480
		set_window_position :center
		show_all
	end
	
	def position
		pos = Gtk::Fixed.new
		pos.put login, 230, 200
		pos.put password, 230, 250
		pos.put button, 275, 300
		add pos
	end
	
	def login
		login_entry = Gtk::Entry.new
	end
	
	def password
		password_entry = Gtk::Entry.new
	end
	
	def button
		submit_button = Gtk::Button.new(:label => "Submit")
		submit_button.set_size_request 100, 50
	end
	
	
	
end

window = WindowApp.new
Gtk.main