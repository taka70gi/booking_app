module ApplicationHelper
    def load_user
        return current_user
    end

    def page_title
        title = "宿泊予約サービスアプリ" #これがサイトのブランド名
        title = @page_title + " | " + title if @page_title
        title
    end
end
