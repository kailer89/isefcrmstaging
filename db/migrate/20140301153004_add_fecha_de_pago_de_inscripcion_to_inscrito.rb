class AddFechaDePagoDeInscripcionToInscrito < ActiveRecord::Migration
  def change
    add_column :inscritos, :fecha_de_pago_de_inscripcion, :date
    add_column :inscritos, :id_de_alumno, :string
    add_column :inscritos, :comentarios, :string
  end
end
