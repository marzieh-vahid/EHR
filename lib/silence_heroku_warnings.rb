module Rails
  class Plugin < Engine

    alias :not_silenced_initialize :initialize

    def initialize(root)
      ActiveSupport::Deprecation.silence{ self.send :not_silenced_initialize, root }
    end

  end
end