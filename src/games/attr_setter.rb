module TestAttributeSetter
  def fixed_timestamp(timestamp)
    if @created_on
      @created_on = timestamp
    end
    self.name
  end
end
