class BonusDrink
  def self.total_count_for(purchase)
    purchase + calculate_bonus(purchase)
  end

  private

  def self.calculate_bonus(purchase)
    bonus = 0

    if purchase >= 3
      purchase -= 3
      bonus += 1
      bonus = bonus + (purchase / 2) if purchase > 0
    end

    bonus
  end
end
