require_relative '../commands/rpn_calculator'

describe 'RpnCalculator' do
  describe "With valid params" do
    it 'is true' do
      cmd_a = RpnCalculator.new("1 1 + 3 * 2 3 *").call
      cmd_b = RpnCalculator.new("2 1 2 + *").call
      cmd_c = RpnCalculator.new("10 2 8 * + 3 -").call
      cmd_d = RpnCalculator.new("5 3 + 6 2 / * 3 5 * +").call
      cmd_e = RpnCalculator.new("2 3 4 * +").call

      expect(cmd_a).to eq(12)
      expect(cmd_b).to eq(6)
      expect(cmd_c).to eq(23)
      expect(cmd_d).to eq(39)
      expect(cmd_e).to eq(14)
    end
  end
end