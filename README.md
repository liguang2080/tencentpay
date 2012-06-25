# Tencentpay

财付通SDK

## Installation

Add this line to your application's Gemfile:

    gem 'tencentpay', :git => 'git://github.com/lg2046/tencentpay.git

And then execute:

    $ bundle or bundle update

Or install it yourself as:

    $ gem install tencentpay

## Usage

	充值:
	@request = Tencentpay::Request.new(Time.zone.now.to_i,
                                 100, //分为单位
                                 '测试充值',
                                 'http://www.example.com/transactions/notify', //回调url
                                 request.remote_ip,
                                 current_user.id.to_s, //附加数据
                                 bank_type //充值方法类型 default为0 即财付通
                                 )
	redirect_to @request.url
	
	充值成功后回调:
	tencent_response = Tencentpay::Response.new(params)  tencent_response为一hash值 inspect即可

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
