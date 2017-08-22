class AddSolicitudDeBecaToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :solicitud_de_beca, :boolean
    add_column :admitidos, :certificado_de_estudios, :boolean
    add_column :admitidos, :titulo_profesional, :boolean
    add_column :admitidos, :cedula_profesional, :boolean
    add_column :admitidos, :curp, :boolean
    add_column :admitidos, :identificacion_oficial, :boolean
    add_column :admitidos, :curriculum_vitae, :boolean
    add_column :admitidos, :cartas_de_recomendacion, :boolean
    add_column :admitidos, :comprobante_de_domicilio, :boolean
    add_column :admitidos, :comprobante_pago_inscripcion, :boolean
  end
end
