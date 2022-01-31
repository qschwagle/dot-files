if [[ `uname` == "Darwin" ]]; then 
	eval "$(/opt/homebrew/bin/brew shellenv)"

	PATH="/opt/homebrew/opt/node@16/bin:$PATH"
	PATH="/opt/homebrew/opt/llvm/bin:$PATH"
	PATH="$PATH:/Users/qschwagle/.bin"
	export PATH

	path+=('/Library/Frameworks/Mono.framework/Versions/Current/bin')
	path+=('/Users/qschwagle/Library/Python/3.8/bin')
	export PATH
	
	manpath+=('/Library/Frameworks/Mono.framework/Versions/Current/man')
	export MANPATH


	export CLICOLOR=1
	export LSCOLORS=GxFxCxDxBxegedabagaced

	EDITOR=nvim
	export EDITOR
fi


