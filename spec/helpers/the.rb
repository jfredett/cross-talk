module RSpec
  module Cross
    module Talk
      module DSL
        module Macros
          def the(sym, &block)
            context sym do
              subject { if sym.is_a? Class then sym else send sym end }
              it &block
            end
          end
          alias the_class the
        end
      end
    end
  end
end
