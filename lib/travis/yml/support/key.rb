class Key < String
  attr_accessor :line, :src

  def initialize(str, line = nil, src = nil)
    src, line = str.src, str.line if str.respond_to?(:src)
    @line, @src = line, src
    super(str)
  end

  %i(downcase gsub sub tr to_s).each do |name|
    define_method(name) do |*args, &block|
      obj = Key.new(super(*args, &block))
      obj.line = line
      obj
    end
  end

  def copy(str)
    self.class.new(str, line, src)
  end
end
