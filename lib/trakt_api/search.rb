class TraktApi::Search < TraktApi::Base
  def run(options)
    search_path_with_params(options).get
  end

  private

  def search_path_with_params(options)
    path(search_path).params(options)
  end

  def search_path
    'search'
  end
end
