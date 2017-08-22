class CreateOfertaEducativas < ActiveRecord::Migration
  def change
    create_table :oferta_educativas do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.integer :nivel_id
      t.integer :programa_id
      t.string :tipo_de_validez
      t.string :tipo_de_reconocimiento
      t.string :sedes_en_las_que_se_oferta_este_programa
      t.string :modalidades_en_que_se_imparte
      t.string :horarios_en_que_se_imparte
      t.text :requisitos
      t.text :objetivo_del_programa
      t.text :perfil_de_ingreso
      t.text :perfil_de_egreso
      t.text :ambito_de_desempeno
      t.text :principales_beneficios_que_ofrece_el_programa

      t.timestamps
    end
  end
end
