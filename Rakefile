desc "deploy vimrc"
task :deploy do
	
  # Bundle and scripts
  system 'git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
  system 'cp .vimrc .gvimrc ~/'
  system 'vim +BundleInstall +qa'
  system 'cd ~/.vim/bundle/Command-T/ruby/command-t/; rvm system do ruby extconf.rb; make; cd -'

end
