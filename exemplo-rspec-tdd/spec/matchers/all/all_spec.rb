# frozen_string_literal: true

describe [1, 7, 9] do
  it { is_expected.to all be_odd.and be_an(Integer) }
end
