class BlogLogger
  def extend_logging_strategy(klass, strategy)
    klass.class_eval do
      define_method strategy do |args|
        @log = args
      end

      attr_reader :log
    end
  end
end
