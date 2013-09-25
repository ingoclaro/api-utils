class Api::Utils::Middleware::Via
  def initialize(app, options={})
    @app = app
    @options = default.merge(options)
  end

  def call(env)
    env['HTTP_VIA'] = add_via_header(env['HTTP_VIA'])
    status, headers, response = @app.call(env)
    headers['Via'] = add_via_header(headers['Via'])
    [status, headers, response]
  end

  def default
    {
      :name => "default name",
      :version => 1.0
    }
  end

  def protocol
    1.1
  end

  def app_name
    "#{protocol} #{name}/#{version}"
  end

  def add_via_header(header_content)
    header_content += " #{app_name}" unless header_content.contains? app_name
    header_content
  end
end
