class PagesController < ApplicationController
  def letsencrypt
    letsencrypt_key = case params[:id]
                        when 'OPBQAVZrXmO4wLOvqQ1501724HHZetXxfVpzJk1VPZw'
                          'e4SADLNXLJCdgwlDNNEfDBQOw5eqFIayCqWxzZLwG8I.n3edaJv_QDgwWUG5qkM5KJw1daHqdt2fLx4u-Jn1jcA'
                        when 'H8-gnqcEHLM-PMSWjSpbkkB0L9NN7m03EtBNrmIqhJg'
                          'H8-gnqcEHLM-PMSWjSpbkkB0L9NN7m03EtBNrmIqhJg.n3edaJv_QDgwWUG5qkM5KJw1daHqdt2fLx4u-Jn1jcA'
                        when 'test'
                          'test 123'
                      end
    puts letsencrypt_key

    render plain: letsencrypt_key
  end
end