# Rails.application.load_tasks
# Rake::Task['can'].execute
task({ :can => :environment }) do
    csv_who = CSV.parse(File.read('who.csv'), headers: false, col_sep: "!")
    who = {}
    csv_who.each do |row|
      who[row.first]=row.first
    end
    #pp who
    csv = CSV.parse(File.read('can.csv'), headers: true)
    #pp csv.size
  
    pp "#{r.fetch("Student")} #{r.fetch ("Sinatra Current Points")} #{r.fetch ("Project Current Points")} "
    csv.each do |row|
      r = row.to_hash
      #pp "#{r.fetch("Student")} #{r.fetch ("Sinatra Current Points")} #{r.fetch ("Project Current Points")} "

      if who.has_key?(r.fetch("Student"))
        pp "#{r.fetch("Student")} #{r.fetch ("Sinatra Current Points")} #{r.fetch ("Project Current Points")} "
        #pp row
      end 
    end

end