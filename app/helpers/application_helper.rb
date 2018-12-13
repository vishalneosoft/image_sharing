module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      next unless message.is_a? String
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type.to_sym)} alert-dismissable", style: "margin: 10px;") do
        concat content_tag(:button, 'x', class: "close", style: "font-size: 18px;", data: { dismiss: 'alert' })
        concat content_tag(:p, message)
      end)
    end
    nil
  end

  def album_options_for_select(selected_album = nil)
    albums = current_user.albums.joins("LEFT JOIN photos ON photos.album_id = albums.id")
    user_albums = albums.select('albums.id, albums.name, count(photos.id) as photos_count')
                        .group('albums.id')
                        .order('albums.name')
    options_for_albums(user_albums, selected_album)
  end

  def options_for_albums(user_albums, selected = nil)
    albums = []
    user_albums.each do |album|
      if album.photos_count < 25
        albums << [album.name, album.id]
      end
    end
    options_for_select(albums, selected: (selected if selected))
  end
end
