# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/:campus' do
  query = <<-SQL
    SELECT * FROM students WHERE LOWER(campus)=LOWER("#{params[:campus]}")
  SQL
  @students = db.execute(query)
  @campus = params[:campus]
  erb :students
end 

get '/campus/update' do
  erb :new_campus
end

post "/update/campus" do
  query = <<-SQL
    UPDATE students SET campus="#{params['campus']}" WHERE LOWER(name)=LOWER("#{params['name']}")
  SQL
  db.execute(query)
  campus = params['campus']
  redirect "/students/#{campus}"
end
# add static resources