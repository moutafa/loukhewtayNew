class User < ActiveRecord::Base
  before_destroy :dont_destroy_admin

  has_many :evenements
  has_many :abonnes
  attr_accessor :password_confirmation

  validates_confirmation_of  :password

  validate                   :password_non_blank
  validates  :login, :presence => true , :uniqueness =>true

  # retourne la liste des utlisateurs pagines en fonction de l'utilisateur'


  # Permet de verifier de l'authenticite des informations de connexion
  # Incrémenter le nombre de tentative de connexion pour verrouiller le compte en cas de 3 echecs

  def self.authenticate(login_utilisateur, mot_de_passe)
    utilisateur = self.find_by_login(login_utilisateur)

    #"if utilisateur
    #  expected_password = encrypted_password(mot_de_passe, utilisateur.salt)
    # if utilisateur.password != expected_password
    #    utilisateur = nil
    #  end
    #end
    utilisateur
  end


  # 'password' est un attribut virtuel
  def passworde
    @passworde
  end


  def passworde=(pwd)
    @passworde = pwd
    return if pwd.blank?
    create_new_salt
    self.password = User.encrypted_password(self.passworde, self.salt)
  end



  def role_symbols
    roles.map do |role|
      role.titre.underscore.to_sym
    end
  end

  def name
    prenom + " " + nom
  end

  private

  def password_non_blank
    errors.add_to_base("Missing password" ) if password.blank?
  end

  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end

  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA2.hexdigest(string_to_hash)
  end

  # Ne pas détruire l'utilisateur 'admin' de la base de données
  def dont_destroy_admin
    raise "L'utilisateur 'Admin' ne peut etre supprime" if self.code_utilisateur == 'admin'
  end

end
