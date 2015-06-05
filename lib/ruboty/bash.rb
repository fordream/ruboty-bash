require 'ruboty'
require 'ruboty/bash/version'

module Ruboty
  module Handlers
    class Bash < Base
      on(
          /bash\s+(.*)/m,
          name:        'echo',
          description: 'repeat your commnad'
      )

      def bash(message)
        message.reply(message.match_data[1])
      end
    end
  end
end
