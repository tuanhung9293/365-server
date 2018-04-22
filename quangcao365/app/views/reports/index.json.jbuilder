json.reports @reports.each do |report| 
  json.extract! report, :id, :name, :phone, :email, :description
end