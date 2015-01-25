require 'spec_helper'
require './lib/022_name_scores.rb'

describe 'NameScores' do
  before do
    @name_scores = NameScores.new
  end

  it 'should return the correct total score' do
    @name_scores.total_score.must_equal 871198282
  end
end
