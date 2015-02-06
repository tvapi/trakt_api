class TraktApi::Search < TraktApi::Base
  def call(options)
    search_path_with_params(options).get
  end

  def call_url(options)
    search_path_with_params(options).url
  end

  private

  def search_path_with_params(options)
    path(search_path).params(options)
  end

  def search_path
    'search'
  end
end
