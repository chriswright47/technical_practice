Node = Struct.new(:value, :successor) do
  def self.build(args)
    self.new(args[:value], args[:successor])
  end
end

List = Struct.new(:head) do


end