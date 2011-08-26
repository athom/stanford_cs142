class StateController < ApplicationController
  def filter
    params.keys.each do |k|
      if k != 'action' and k != 'controller'
        @states = State.filter(k)
      end
    end
  end

end
