json.array!(@signprofs) do |signprof|
  json.extract! signprof, :id, :name, :address, :email, :phone, :qualification
  json.url signprof_url(signprof, format: :json)
end
