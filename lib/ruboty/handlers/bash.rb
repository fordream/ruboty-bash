require 'ruboty'
require 'ruboty/bash/version'

module Ruboty
  module Handlers
    class Bash < Base
      on(
          /bash\s+(.*)/m,
          name:        'bash',
          description: 'run your bash-command on ruboty'
      )

      def bash(message)
        message.reply(`#{message.match_data[1]}`)
      end
    end
  end
end
