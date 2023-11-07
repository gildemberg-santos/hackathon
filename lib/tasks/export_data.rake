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

      heads = sales_columns + lead_columns + company_columns + vehicle_columns
      csv << heads

      data.each do |item|
        sales_values = item.attributes.values
        leads_values = item.lead.attributes.values
        companies_values = item.lead.company.attributes.values
        vehicles_values = item.vehicle.attributes.values

        body = sales_values + leads_values + companies_values + vehicles_values
        csv << body
      end
    end

    puts "Dados exportados para #{output_file}"
  end
end
