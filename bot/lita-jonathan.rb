module Lita
  module Handlers
    class Jonathan < Handler
      route(/^jonathan$/, :jonathan, command: true, help: { "jonathan" => "Make a new cat." })
      def jonathan(response)
        response.reply("So Let's make a Cat.new, name it Sennacy.")
      end
    end
    Lita.register_handler(Jonathan)
  end
end
