# This migration comes from refinery_games (originally 1)
class CreateGamesGames < ActiveRecord::Migration

  def up
    create_table :refinery_games do |t|
      t.string :name
      t.string :plataform
      t.date :released_on
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-games"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/games/games"})
    end

    drop_table :refinery_games

  end

end
