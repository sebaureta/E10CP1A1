#config.ru
require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200, {'content-type' => 'text/html'}, ['<p>Lorem ipsum.</p>']]
 end
end

run MiPrimeraWebApp.new