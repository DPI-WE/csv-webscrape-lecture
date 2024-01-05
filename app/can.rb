require "csv"
csv_who = CSV.parse(File.read('who.csv'), headers: false, col_sep: "!")
who = {}
csv_who.each do |row|
  who[row.first]=row.first
end
#pp who
csv = CSV.parse(File.read('can.csv'), headers: true)
#pp csv.size

format_string = "%25s %16s %16s %35s"
puts sprintf(format_string,"Student", "Sinatra 43", "Project 22","email")
ct = 0
csv.each do |row|
  r = row.to_hash
  #pp "#{r.fetch("Student")} #{r.fetch ("Sinatra Current Points")} #{r.fetch ("Project Current Points")} "

  if who.has_key?(r.fetch("Student"))
    puts sprintf(format_string, r.fetch("Student"), 
       r.fetch("Sinatra Current Points"), 
       r.fetch("Project Current Points"),
       r.fetch("SIS Login ID"))
    #pp row
    ct += 1
  end
end
pp ct