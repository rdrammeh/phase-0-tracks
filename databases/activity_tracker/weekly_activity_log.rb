# See attached schema for table branch breakdown

#require gem
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("weekly_activity_log.db")

# create tables within database 
create_tv_log_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tv_log(
    id INTEGER PRIMARY KEY,
    tv_station VARCHAR(255),
    hours INT,
    goal_of_5hrs_week BOOLEAN
  )
SQL

create_food_log_table = <<-SQL
  CREATE TABLE IF NOT EXISTS food_log(
    id INTEGER PRIMARY KEY,
    calories_intake INT,
    ate_yummy_food BOOLEAN
  )
SQL

create_reading_log_table = <<-SQL
  CREATE TABLE IF NOT EXISTS reading_log(
    id INTEGER PRIMARY KEY,
    hours INT,
    goal_of_7_hrs_week BOOLEAN
  )
SQL

create_workout_log_table = <<-SQL
  CREATE TABLE IF NOT EXISTS workout_log(
    id INTEGER PRIMARY KEY,
    cardio_hrs INT,
    strength_hrs INT,
    yoga_hrs INT,
    goal_of_3x_week BOOLEAN
  )
SQL

create_weekly_log_table = <<-SQL
  CREATE TABLE IF NOT EXISTS weekly_activity_log(
    id INTEGER PRIMARY KEY,
    week_range INT,
    workout_id INT,
    reading_id INT,
    food_id INT,
    tv_id INT,
    FOREIGN KEY (workout_id) REFERENCES workout_log(id),
    FOREIGN KEY (reading_id) REFERENCES reading_log(id),
    FOREIGN KEY (food_id) REFERENCES food_log(id),
    FOREIGN KEY (tv_id) REFERENCES tv_log(id)
  )
SQL


db.execute(create_tv_log_table)
db.execute(create_food_log_table)
db.execute(create_reading_log_table)
db.execute(create_workout_log_table)
db.execute(create_weekly_log_table)

# add test data 

db.execute("INSERT INTO tv_log (tv_station, hours, goal_of_5hrs_week) VALUES (?, ?, ?)", ['cnn', 5, true]) 
db.execute("INSERT INTO food_log (calories_intake, ate_yummy_food) VALUES (?, ?)", [17,500, true])
db.execute("INSERT INTO reading_log (hours, goal_of_7_hrs_week) VALUES (?, ?)", [10, true])
db.execute("INSERT INTO workout_log (cardio_hrs, strength_hrs, yoga_hrs, goal_of_3x_week) VALUES (?, ?)", [2, 0, 0, false])
db.execute("INSERT INTO weekly_activity_log (week_range, workout_id, reading_id, food_id, tv_id) VALUES (?, ?)", [4/23 - 4/29, 1, 1, 1, 1])


# rakeys_week = db.execute("SELECT * FROM weekly_activity_log")
