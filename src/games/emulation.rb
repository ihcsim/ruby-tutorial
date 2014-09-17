module Emulation
  def emulate(operation)
    if not @emulator
      @emulator = Emulator.new(self)
    end

    operation.call(@emulator)
    @game_started = @emulator.game_started
  end
end
