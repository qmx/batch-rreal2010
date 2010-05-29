# db/migrate/XXXXXXXXXXXXXX_add_avatar_proessing_to_user
class AddAvatarProessingToUser < ActiveRecord::Migration
  def self.up
	  add_column :users, :avatar_processing, :boolean
	end

  def self.down
	  remove_column :users, :avatar_processing
	end
end

# app/models/user.rb
class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  process_in_background :avatar
end

# Código lindo no controller
@user = User.new(:avatar =>	File.new(...))
@user.save

