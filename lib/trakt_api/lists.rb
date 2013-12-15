class TraktApi::Lists < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/lists-add
  def add(options = {})
    auth.post('lists/add').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/lists-delete
  def delete(options = {})
    auth.post('lists/delete').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/lists-items-add
  def items_add(options = {})
    auth.post('lists/items/add').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/lists-items-delete
  def items_delete(options = {})
    auth.post('lists/items/delete').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/lists-update
  def update(options = {})
    auth.post('lists/update').params(options).response
  end
end
