module GoldMiner
  module Helpers
    module Time
      def self.as_yyyy_mm_dd(date)
        date.strftime("%Y-%m-%d")
      end

      def self.last_friday
        date = Date.today
        one_day_ago = (date - 1)
        one_week_ago = date - 7
        friday = one_day_ago.downto(one_week_ago).find { |date| date.friday? }

        as_yyyy_mm_dd(friday)
      end
    end

    module Sentence
      def self.from(words)
        case words.size
        when 0
          ""
        when 1
          words[0].to_s
        when 2
          "#{words[0]} and #{words[1]}"
        else
          "#{words[0...-1].join(", ")}, and #{words[-1]}"
        end
      end
    end
  end
end
