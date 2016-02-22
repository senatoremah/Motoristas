class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.string :name
      t.string :cpf
      t.string :tipo_de_caminhao
      t.string :ano
      t.string :marca

      t.timestamps null: false
    end
  end
end
