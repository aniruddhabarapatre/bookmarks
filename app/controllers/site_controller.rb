class SiteController < ApplicationController
  def index
    # retrieve all bookmarks ordered by descending creation timestamp
    @bookmarks = Bookmark.order('created_at desc')
  end
end
