class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :confirmable,
         :database_authenticatable, 
         :recoverable, 
         :registerable,
         :rememberable,  
         :trackable,
         :validatable

         has_one_attached :image

  enum course: [ 
      :administration,
      :system_analysis_and_development,
      :architecture_and_urbanism,
      :digital_arts,
      :automation_and_digital_engineering,
      :biomedicine,
      :computer_science,
      :biological_science,
      :accounting_sciences,
      :economics,
      :foreign_trade,
      :advertising,
      :design,
      :interior_design,
      :design_fashion,
      :graphic_design,
      :law_school,
      :physical_education,
      :entrepreneurship,
      :nursing_school,
      :civil_engineering,
      :mechatronic_engineering,
     ]
     
end
