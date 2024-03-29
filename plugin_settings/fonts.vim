if has('nvim')
    " set guifont=Anonymice\ Powerline:h16:cANSI:qDRAFT
    " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Droid\ Sans\ Mono\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Fira\ Mono\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Inconsolata-dz\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Inconsolata-g\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Source\ Code\ Pro\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Monofur\ for\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Noto\ Mono\ for\ Powerline:h14:cANSI:qDRAFT
    if $COMPUTERNAME == 'MINIEYESNB1' && $USERNAME == '怡哲'
        set guifont=FiraCode\ Nerd\ Font\ Mono:h14:cANSI:qDRAFT
    elseif $COMPUTERNAME == 'NVT02863_NB' && $USERNAME == 'NVT02863'
        set guifont=FiraCode\ Nerd\ Font\ Mono:h12:cANSI:qDRAFT
    elseif $COMPUTERNAME == 'MINIEYES-PC2' && $USERNAME == 'chenv'
        set guifont=FiraCode\ Nerd\ Font\ Mono:h12:cANSI:qDRAFT
    elseif $COMPUTERNAME == 'LAPTOP-0U8DPE2D' && $USERNAME == 'chenv'
        set guifont=FiraMono\ Nerd\ Font\ Mono:h8:cANSI:qDRAFT
    endif
    " set guifont=Ubuntu\ Mono\ derivative\ Powerline:h16:cANSI:qDRAFT
    " set guifont=Space\ Mono\ for\ Powerline:h16
else
    set guifont=Fira_Mono_for_Powerline:h14:cANSI:qDRAFT
endif
