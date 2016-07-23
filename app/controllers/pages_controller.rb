class PagesController < ApplicationController
  def letsencrypt
    letsencrypt_key = case params[:id]
                        when 'Z0Z6mUV3fYpI2-tEai_8Z9LTgyBtSVrXmVmYj3U7Ez8'
                          'Z0Z6mUV3fYpI2-tEai_8Z9LTgyBtSVrXmVmYj3U7Ez8.n3edaJv_QDgwWUG5qkM5KJw1daHqdt2fLx4u-Jn1jcA'
                        when 'QZnNLwRQOybXi4XS0tfKxXHyfls3usjN_l690b7BpgA'
                          'QZnNLwRQOybXi4XS0tfKxXHyfls3usjN_l690b7BpgA.n3edaJv_QDgwWUG5qkM5KJw1daHqdt2fLx4u-Jn1jcA'
                        when 'B3BxoztzfoZqgX85MqUEKV2cmduzQs6BQfc9jUEiSxY'
                          'B3BxoztzfoZqgX85MqUEKV2cmduzQs6BQfc9jUEiSxY.n3edaJv_QDgwWUG5qkM5KJw1daHqdt2fLx4u-Jn1jcA'
                        when 'test'
                          'test 123'
                      end
    puts letsencrypt_key

    render plain: letsencrypt_key
  end
end