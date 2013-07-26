module MathConversions
  def yards_to_meters(yards)
    yards * 0.914
  end

  def meters_to_yards(meters)
    meters * 1.0936
  end

  def inches_to_meters(inches)
    inches / 39.370
  end

  def meters_to_inches(meters)
    meters * 39.370
  end

  def inches_to_cms(inches)
    inches * 2.54
  end

  def cms_to_inches(cms)
    cms * 0.39370
  end

  def inches_to_feet(inches)
    inches * 0.083333
  end

  def feet_to_inches(feet)
    feet * 12.00
  end

  def inches_to_yards(inches)
    inches * 0.027778
  end

  def yards_to_inches(yards)
    yards * 36.00
  end

  def kilos_to_lbs(kilos)
    kilos * 2.2046
  end

  def lbs_to_kilos(lbs)
    lbs / 2.2046
  end

  def lbs_to_oz(lbs)
    lbs * 16.00
  end

  def oz_to_lbs(oz)
    oz * 0.0625
  end

  def lbs_to_grams(lbs)
    lbs / 0.0022046
  end

  def grams_to_lbs(grams)
    grams * 0.0022046
  end
end