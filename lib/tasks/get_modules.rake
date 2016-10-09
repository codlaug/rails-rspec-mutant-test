desc "I"
task get_modules: [:environment] do
  RailsRspecMutantTest::Application.eager_load!
  models = ActiveRecord::Base.descendants
  controllers = ActionController::Base.descendants

  puts (controllers + models).join(' ')
end