class BonusDrink
  BONUS_PER = 3
  BONUS_GET = 1

  class << self

    def total_count_for(purchase)
      purchase + calculate_bonus(purchase)
    end

    private

    def calculate_bonus(empty_bottle)
      # 空き瓶3本目まではおまけなし
      return 0 if empty_bottle < BONUS_PER

      # 最初のおまけ + (最初のおまけを引いた残り本数) / (2本目のおまけ以降はおまけ一本を含めて3本)
      BONUS_GET + (empty_bottle.to_i - BONUS_PER) / (BONUS_PER - BONUS_GET)
    end
  end
end
