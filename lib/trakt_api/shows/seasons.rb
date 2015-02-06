class TraktApi::Shows::Seasons < TraktApi::Base
  def all(options)
    all_path_with_params(options).get
  end

  def all_url(options)
    all_path_with_params(options).url
  end

  def find(options)
    find_path_with_params(options).get
  end

  def find_url(options)
    find_path_with_params(options).url
  end

  def episodes
    @episodes ||= TraktApi::Shows::Seasons::Episodes.new(@config)
  end

  private

  def all_path_with_params(options)
    path(all_path).params(options)
  end

  def all_path
    'shows/:id/seasons'
  end

  def find_path_with_params(options)
    path(find_path).params(options)
  end

  def find_path
    'shows/:id/seasons/:season'
  end
end
