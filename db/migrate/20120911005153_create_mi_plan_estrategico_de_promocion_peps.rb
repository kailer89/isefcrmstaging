class CreateMiPlanEstrategicoDePromocionPeps < ActiveRecord::Migration
  def change
    create_table :mi_plan_estrategico_de_promocion_peps do |t|
      t.string :periodo_anual
      t.integer :pep_para
      t.string :nombre_de_la_institucion
      t.string :segmento
      t.string :tipo_especifico
      t.string :nse
      t.string :forma_parte_de_mi_mdo_meta
      t.string :tamano_de_mdo_que_aspira_abarcar
      t.text :mercado_meta_observaciones
      t.integer :asesor_a_cargo
      t.string :persona_de_contacto
      t.string :cargo
      t.string :telefono_de_oficina
      t.string :ext
      t.string :otro_telefono
      t.string :movil
      t.string :email
      t.string :pag_web
      t.string :calle
      t.string :no_exterior
      t.string :no_interior
      t.string :colonia
      t.string :codigo_postal
      t.string :delegacion_municipio
      t.string :estado
      t.string :pais
      t.string :google_maps
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
