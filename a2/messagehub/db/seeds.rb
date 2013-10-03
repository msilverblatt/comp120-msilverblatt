# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Message.create(content: "Hello world!", app_id: "1", username: "BartSimpson", active: "true")
#Message.create(content: "Vendetta, Vendetta!", app_id: "1", username: "SideshowBob", active: "true")

apps = App.create([{ app_title = "ios", app_description = "From iOS app" }, { app_title = "android", app_description = "From Android app"}, { app_title = "web". app_description = "From default web app"}, { app_title= "unknown", app_description = "From an unknown source"}])

