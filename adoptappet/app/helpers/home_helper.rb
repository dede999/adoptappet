module HomeHelper
  def greeting time
    case time
      when 0..5, 19..23
        return "Boa Noite"
      when 6..12
        return "Bom Dia"
      when 13..18
        return "Boa Tarde"
      else
        return "André, você esqueceu algo"
    end
  end
end
