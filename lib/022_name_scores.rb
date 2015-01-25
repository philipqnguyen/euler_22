class NameScores
  def initialize
    f = File.open('./data/names.txt')
    @names = f.read.gsub!(/\"/, '').split(',').sort!
    f.close
  end

  def total_score
    sum = 0
    @names.each_with_index do |name, index|
      sum += name_value(name) * (index + 1)
    end
    sum
  end

  private

  def name_value(name)
    name.split('').inject(0) do |sum, letter|
      sum += letter.ord - 64
    end
  end
end
