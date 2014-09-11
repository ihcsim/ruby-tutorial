module Emulation
  def emulate
    if not @emulator
      @emulator = Emulator.new(self)
    end

    yield @emulator
    @game_started = @emulator.game_started
  end
end
