module Lita
  module Handlers
    class Facts < Handler
      route(/phil*facts/, :phillip)
      route(/arifacts/, :ari)
      route(/deanfacts/, :dean)
      route(/ryanfacts/, :ryan)
      route(/tomfacts/, :tom)
      route(/joshfacts/, :josh)
      def peter(response)
        peterfacts = ["Peter isnt usually this pretentious", "Picking a Pack of Pickled Peppers Particularly Pleases Peter"]
        response.reply(peterfacts.sample)
      end
      def ari(response)
        arifacts = ["Ari lived in a Frisbee house in college", "Ari sometimes wears a headband, but not always", "Ari will save the children, but not the British children"]
        response.reply(arifacts.sample)
      end
      def dean(response)
        deanfacts = ["Sorry, please be more specific, Dean who?", "Deans final game will be AustriaRoids, which has nothing to do with Arnold Schwarzenegger"]
        response.reply(deanfacts.sample)
      end
      def ryan(response)
        ryanfacts = ["Something something culture fit", "Friends call him Cooter"]
        response.reply(ryanfacts.sample)
      end
      def tom(response)
        tomfacts = ["Fact fact fact"]
        response.reply(tomfacts.sample)
      end
    end
    Lita.register_handler(Facts)
  end
end
