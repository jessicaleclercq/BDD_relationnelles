class CreateJoinTableDoctorSpecialties < ActiveRecord::Migration[6.0]
  def change
    remove_column :doctors, :specialty
    create_table :join_table_doctor_specialties do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
