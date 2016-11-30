RailsAdmin.config do |config|

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

    config.model User do
      #list do
        exclude_fields :id, :created_at, :sales ,:sign_in_count, :updated_at, :encrypted_password, :reset_password_sent_at, :current_sign_in_ip , :last_sign_in_ip , :remember_created_at, :reset_password_token, :last_sign_in_at, :current_sign_in_at
      #end
      #edit do
        exclude_fields :id, :created_at, :sales ,:sign_in_count, :updated_at, :encrypted_password, :reset_password_sent_at, :current_sign_in_ip , :last_sign_in_ip , :remember_created_at, :reset_password_token, :last_sign_in_at, :current_sign_in_at
      #end
    end


    config.model Sale do
      exclude_fields :id, :user
    end

# id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  agent_id               :string(255)
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null

  end
end
