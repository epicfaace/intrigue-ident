module Intrigue
module Ident
module Check
class AmiroCMS < Intrigue::Ident::Check::Base

  def generate_checks(url)
    [
      {
        :type => "fingerprint",
        :category => "application",
        :tags => ["CMS"],
        :vendor => "Amiro.CMS",
        :product => "Amiro.CMS",
        :references => ["https://www.amiro.ru/"],
        :version => nil,
        :match_type => :content_body,
        :match_content => /Amiro.CMS/i,
        :dynamic_version => nil,
        :match_details => "header match",
        :hide => false,
        :paths => ["#{url}"],
        :inference => true
      }
    ]
  end

end
end
end
end
