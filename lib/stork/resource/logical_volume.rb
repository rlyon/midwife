module Stork
  module Resource
    class LogicalVolume < Base
      attr_accessor :path
      attr_accessor :size
      attr_accessor :type
      attr_accessor :primary
      attr_accessor :grow
      attr_accessor :recommended

      def setup
        @size = 1
        @type = 'ext4'
        @grow = false
        @recommended = true
        @path = '/'
      end

      class LogicalVolumeDelegator < Stork::Resource::Delegator
        flag :grow
        flag :recommended

        def path(path)
          delegated.path = path
        end

        def size(size)
          delegated.size = size
        end

        def type(type)
          delegated.type = type
        end
      end
    end
  end
end
