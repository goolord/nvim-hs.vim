function! nvimhs#cabal#pluginstarter()
	return
				\ { 'buildCommand': function('nvimhs#cabal#buildCommand')
				\ , 'exePath': function('nvimhs#cabal#exePath')
				\ }
endfunction


function! nvimhs#cabal#buildCommand(name)
	return [ 'cabal', 'build', a:name ]
endfunction


function! nvimhs#cabal#exePath(workingDirectory, name)
	let l:cabalPath = nvimhs#execute(a:workingDirectory,
				\ ['which', 'cabal'])
	return join(l:cabalPath, '') . '/bin/' . a:name
endfunction
