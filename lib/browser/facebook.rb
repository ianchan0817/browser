# frozen_string_literal: true

module Browser
  class Facebook < Base
    def id
      :facebook
    end

    def name
      "Facebook"
    end

    def full_version
      ua[%r[(?:FBAV|FBAN)/([\d.]+)], 1] || "0.0"
    end

    def match?
      ua =~ /FBAN|FBAV/
    end
  end
end
