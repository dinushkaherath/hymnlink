require 'net/http'

module RenditionsHelper
    def soundcloud_link(rendition)
        link_to rendition.link, "https://soundcloud.com#{rendition.link}"
    end

    def soundcloud_iframe(rendition)
        track_id = get_track_id_from_url("https://soundcloud.com" + rendition.link)
        content_tag(:iframe, '', width:"100%", height:"300", scrolling:"no", frameborder:"no", allow:"autoplay",
            src:"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{track_id}&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            )
        end

    def get_track_id_from_url(url)
        uri = URI(url)
        res = Net::HTTP.get_response(uri)
        track_id = res.body[/https:\/\/api.soundcloud.com\/tracks\/(\d*)/,1]
        track_id
    end
end
