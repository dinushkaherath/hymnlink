module RenditionsHelper
    def soundcloud_link(rendition)
        link_to rendition.link, "https://soundcloud.com/#{rendition.link}"
    end
end
