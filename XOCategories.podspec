Pod::Spec.new do |spec|
  spec.name = 'XOCategories'
  spec.version = '0.1.2'
  spec.authors = {'Scott Petit' => 'petit.scott@gmail.com'}
  spec.homepage = 'https://github.com/scottpetit/XOCategories'
  spec.summary = 'A Convenience for UICollectionView and UITableView data sources.'
  spec.source = {:git => 'https://github.com/ScottPetit/XOCategories.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios
  spec.requires_arc = true
  spec.frameworks = 'UIKit', 'Foundation'
  spec.source_files = 'XOCategories/*/*{h,m}'
end
