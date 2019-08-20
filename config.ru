# config.ru
require 'rack'

class MiPrimeraWebApp

  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index! </h1>']]

    elsif @url == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]

    else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end

  end

end

run MiPrimeraWebApp.new




# # config.ru
# require 'rack'
#
# class MiPrimeraWebApp
#
#   def call(env)
#     @url = env['REQUEST_PATH']
#     if @url == '/index'
#     [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index! </h1>']]
#
#     else
#       if @url == '/otro'
#         [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]
#       else
#         [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
#       end
#     end
#
#   end
#
# end
#
# run MiPrimeraWebApp.new







# # config.ru
# require 'rack'
#
# class MiPrimeraWebApp
#
#   def call(env)
#     if env['REQUEST_PATH'] == '/'
#     [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
#     end
#   end
#
# end
#
# run MiPrimeraWebApp.new
#
