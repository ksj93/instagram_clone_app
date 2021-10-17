class FeedMailer < ApplicationMailer
  def feed_mail(feed)
    @feed = feed
    mail to: "ksjee17@gmail.com", subject: "アップロードの確認メール"
  end
end
