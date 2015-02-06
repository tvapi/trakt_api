class TraktApi::Shows < TraktApi::Base
  def find(options)
    find_path_with_params(options).get
  end

  def find_url(options)
    find_path_with_params(options).url
  end

  def seasons
    @seasons ||= TraktApi::Shows::Seasons.new(@config)
  end

  private

  def find_path_with_params(options)
    path(find_path).params(options)
  end

  def find_path
    'shows/:id'
  end
end
