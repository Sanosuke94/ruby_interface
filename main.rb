# Author: Cedric Valcy
# Première interface graphique
# 20 mai 2018
require 'gtk3'
require_relative 'home'

class WindowApp < Gtk::Window
	
	def initialize
		super
		form
		
		set_title 'Interface personnel'
		set_default_size 640, 480
		set_window_position :center
		show_all
		signal_connect "destroy" do
			Gtk.main_quit
		end
		
	end
	
	def form
		@login_entry = Gtk::Entry.new
		@password_entry = Gtk::Entry.new
		@password_entry.visibility = false
		
		submit_button = Gtk::Button.new(:label => "Submit")
		submit_button.set_size_request 120, 30
		
		submit_button.signal_connect "clicked" do
			validate
		end
		
		login_title = Gtk::Label.new('Login :')
		password_title = Gtk::Label.new('Password :')
		
		pixbuf = GdkPixbuf::Pixbuf.new(:file => 'assets/logo.png', :width => 800, :height => 150)
		logo = Gtk::Image.new(:pixbuf => pixbuf)
		
		pos = Gtk::Fixed.new
		pos.put @login_entry, 240, 200
		pos.put @password_entry, 240, 250
		pos.put submit_button, 267, 300
		pos.put login_title, 180, 205
		pos.put password_title, 155, 255
		pos.put logo, 260, 20
		add pos

	end
	
	def validate
		puts @login_entry.text
		puts @password_entry.text
		@password_entry.text = ""
	end
end

window = WindowApp.new
Gtk.main