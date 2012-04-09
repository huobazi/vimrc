desc "deploy vimrc settings"
task :deploy do
	
  # Bundle and scripts

  system 'rm -rf ~/.vim'
  system 'git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
  system 'mkdir ~/.vim/colors'
  system 'curl -o ~/.vim/colors/molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim'
  system 'curl -o ~/.vim/colors/rails_envy.vim https://github.com/squil/vim_colors/raw/master/colors/RailsEnvy.vim'
  system 'curl -o ~/.vim/colors/rails_casts.vim https://raw.github.com/squil/vim_colors/master/colors/Railscasts.vim'
  
  system 'cp .vimrc ~/'
  system 'vim +BundleInstall +qa'
  system 'cd ~/.vim/bundle/Command-T/ruby/command-t/; rvm system do ruby extconf.rb; make; cd -'

end
