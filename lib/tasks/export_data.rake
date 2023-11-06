namespace :export do
  desc "Export data to CSV file"
  task to_csv: :environment do
    data = Sale.all
    output_file = "exported_data.csv"

    CSV.open(output_file, "w") do |csv|
      sales_columns = data.column_names.map { |c| "#{data.name.downcase}_#{c}" }
      lead_columns = Lead.column_names.map { |c| "lead_#{c}" }
      company_columns = Company.column_names.map { |c| "company_#{c}" }
      vehicle_columns = Vehicle.column_names.map { |c| "vehicle_#{c}" }
      csv << sales_columns
      csv << lead_columns
      csv << company_columns
      csv << vehicle_columns
      data.each do |item|
        sales_values = item.attributes.values
        leads_values = item.lead.attributes.values
        companies_values = item.lead.company.attributes.values
        vehicles_values = item.vehicle.attributes.values
        csv << sales_values
        csv << leads_values
        csv << companies_values
        csv << vehicles_values
      end
    end

    puts "Dados exportados para #{output_file}"
  end
end
