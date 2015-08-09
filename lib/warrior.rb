class Warrior
  BASE_AC = 17
  BASE_HEALTH = 10

  def initialize(strength=15,
                 dexterity=13,
                 intelligence=10,
                 wisdom=12,
                 constitution=14)
    @strength = strength
    @dexterity = dexterity
    @intelligence = intelligence
    @wisdom = wisdom
    @constitution = constitution
    @health = max_health
    @armor_class = BASE_AC
  end

  def strength_modifier
    (@strength * 0.25).round
  end

  def constitution_modifier
    (@constitution * 0.25).round
  end

  def max_health
    BASE_HEALTH + constitution_modifier
  end

  def attack_roll
    DieRoller.roll(1, 20)
  end

  def damage_roll
    DieRoller.roll(1, 10) + strength_modifier
  end

  def is_hit?(attack)
    attack > @armor_class
  end
end

