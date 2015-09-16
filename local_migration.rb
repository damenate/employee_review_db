require 'active_record'
require './review_migration'

ReviewMigration.migrate(:down)
ReviewMigration.migrate(:up)
