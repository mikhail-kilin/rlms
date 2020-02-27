ActiveAdmin.register Course do
  permit_params :teacher_id, :title, :description

  index do
    selectable_column
    id_column
    column :teacher
    column :title
    column :description
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :teacher
  filter :title
  filter :description
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :teacher
      f.input :title
      f.input :description
    end
    f.actions
  end
end
