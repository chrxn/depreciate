require "depreciate/version"
module Depreciate
  class Depreciate
    attr_accessor :unit, :cost, :acquisition_date, :lifetime, :residual_value
    def initialize(acquisition_date, cost, residual_value, lifetime, unit)
      @acquisition_date = acquisition_date
      @cost = cost.to_f
      @residual_value = residual_value
      @lifetime = lifetime
      @unit = unit
    end

    def value_lost_per_second
       return (@cost - @residual_value) / @lifetime
    end

    def straight_line_depreciation(evaluation_date = Time.now)
      value = cost - (evaluation_date - acquisition_date) * value_lost_per_second
      if value < @residual_value
        @residual_value
      end
      value
    end

  end
end
