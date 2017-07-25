RailsAdmin.config do |config|

  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model 'Product' do

      exclude_fields :order_items, :reviews, :avg_rating

      create do
        field :category, :enum do
          help 'Please select category'
          enum do
            ['Accessories', 'Formula', 'Cookies','Tea','Mix','Gluten Free', 'Latch', 'Pacifiers', 'Cleaning', 'Warmer', 'Go', 'Cups', 'Utensils', 'Tableware', 'Snacking', 'Fresh', 'Bibs', 'Booster', 'Gates', 'Extensions', 'Child Proofing', 'Spare Parts', 'Pails & Refills', 'Changing', 'Training', 'Tubs & Rinsers', 'Toys', 'Organization', 'Safety', 'Mirror', 'Shades', 'Car', 'Stollers', 'Nursery Organizer', 'Sleep', 'Diapering', 'Health', 'Baskets', 'Bundles', 'Apparel' ]
          end
        end
      end

  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
