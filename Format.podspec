Pod::Spec.new do |s|
  s.name             = "Format"
  s.version          = "0.5.0"
  s.summary          = "A Swift formatter kit."
  s.description      = <<-DESC
                        A Swift formatting framework. Simple formatting syntax for decimal numbers, currency, mass, addresses, ordinal numbers and hexadecimal colors.
                       DESC

  s.homepage         = "https://github.com/marmelroy/Format"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Roy Marmelstein" => "marmelroy@gmail.com" }
  s.source           = { :git => "https://github.com/marmelroy/Format.git", :tag => s.version.to_s }
  s.social_media_url   = "http://twitter.com/marmelroy"

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = "Format"
  s.frameworks = 'MapKit', 'AddressBook', 'CoreLocation', 'Contacts'


  ## Subspec for Each formatter type
  s.subspec 'Number' do |ss|
    ss.requires_arc = true
    ss.source_files = "Format/Number"
  end

  s.subspec 'Color' do |ss|
    ss.requires_arc = true
    ss.source_files = "Format/Color"
  end

  s.subspec 'Address' do |ss|
    ss.requires_arc = true
    ss.source_files = "Format/Address"
  end
end
