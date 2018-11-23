module JD
  module Rails
    class Engine < ::Rails::Engine
      initializer "jd.union" do |app|
        if defined?(::OmniAuth::Strategies::JD)
          ::OmniAuth::Strategies::JD.option :client_options, ::JD::Union.gateways
        end
      end

    end
  end
end
