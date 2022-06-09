# frozen_string_literal: true

module Rest
  def rick_morthy
    API::Rest::RickMorthy.new
  end

  def employess
    API::Rest::Employess.new
  end
end
