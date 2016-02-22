json.array!(@motorista) do |motoristum|
  json.extract! motoristum, :id, :name, :cpf, :tipo_de_caminhao, :ano, :marca
  json.url motoristum_url(motoristum, format: :json)
end
