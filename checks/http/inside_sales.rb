module Intrigue
module Ident
module Check
class InsideSales < Intrigue::Ident::Check::Base

  def generate_checks(url)
    [
      {
        :type => "fingerprint",
        :category => "service",
        :tags => ["SaaS", "Marketing"],
        :vendor => "InsideSales.com",
        :product => "InsideSales.com",
        :match_details => "server header",
        :match_type => :content_headers,
        :version => nil,
        :match_content =>  /^server: Insidesales.com$/i,
        :paths => ["#{url}"],
        :inference => false
      }
    ]
  end

end
end
end
end