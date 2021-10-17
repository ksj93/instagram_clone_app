class FeedMailer < ApplicationMailer
  def feed_mail(feed)
    @feed = feed
    mail to: @feed.email, subject: "アップロードの確認メール"
  end
end
