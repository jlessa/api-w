
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Player do
  before(:each) do
    @player = Player.new
    @game = Game.new
  end

  it "should raffle color" do
    @player.game = @game
    @game.stubs(:raffle_color).returns(1)
    expect{@player.fill_color}.to change{@player.color}.from(nil).to(1)
  end
end

