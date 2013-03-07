module Refinery
  module Games
    class Game < Refinery::Core::BaseModel
      self.table_name = 'refinery_games'

      attr_accessible :name, :plataform, :released_on, :photo_id, :description, :position

      acts_as_indexed :fields => [:name, :plataform, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
