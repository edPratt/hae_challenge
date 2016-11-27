# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.delete_all

for i in 1...50 do
  @rand_word = RandomWord.nouns.next
  @rand_hour_rate = rand(10..50)
  @rand_tax_rate = rand(1..7)
  Job.create(title: @rand_word, hour_rate: @rand_hour_rate, tax_rate: @rand_tax_rate)
end

require 'date'
for i in 1...50 do
  @rand_time_spent = rand(1..60)
  @rand_date = Date.new(rand(2000..2016), rand(1..12), rand(1..30))
  @rand_job_id = rand(2..49)
  @rand_summary = RandomWord.nouns.next + ' ' + RandomWord.adjs.next + ' ' + RandomWord.nouns.next + ' ' + RandomWord.adjs.next
  unless TimeEntry.create(time_spent: @rand_time_spent, date: @rand_date, summary: @rand_summary, job_id: @rand_job_id)
    puts @rand_summary
  end
end
