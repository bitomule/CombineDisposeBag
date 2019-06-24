Pod::Spec.new do |s|
  s.name             = 'CombineDisposeBag'
  s.version          = '0.1.0'
  s.summary          = 'Support RxSwift like DisposeBag in Combine.'

  s.description      = <<-DESC
Combine misses a way to manage subscriptions. This pod adds CombineDisposeBag type that works exactly like RxSwift.
                       DESC

  s.homepage         = 'https://github.com/bitomule/CombineDisposeBag'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bitomule' => 'bitomule@gmail.com' }
  s.source           = { :git => 'https://github.com/bitomule/CombineDisposeBag.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/bitomule'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Sources/Classes/**/*'
  s.frameworks = 'Combine'
end
