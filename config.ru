require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use UserNotesController
use SportsController
use AthletesController
use TeamsController
use UsersController
use SessionsController
use Rack::MethodOverride
run ApplicationController
