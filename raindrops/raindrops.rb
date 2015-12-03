require 'prime'

class Raindrops
  def self.convert(drops)
    factors = prime_factorization(drops)

    sounds(factors).empty? ? drops.to_s : raindrop_speak(sounds(factors))
  end

  def self.prime_factorization(num)
    Prime.prime_division(num).flat_map { |factor, power| [factor] * power }
  end

  def self.sounds(factors)
    factors & [3, 5, 7]
  end

  def self.raindrop_speak(sounds)
    raindrop_sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    raindrops_say = ''

    sounds.each do |number|
      raindrops_say << raindrop_sounds.fetch(number)
    end

    raindrops_say
  end
end
