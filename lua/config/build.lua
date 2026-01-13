-- Set makeprg based on filetype
-- C
vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'c',
  callback = function()
    vim.opt.makeprg = 'gcc -Wall -o %< % && ./%<'
  end,
})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'cpp',
  callback = function()
    vim.opt.makeprg = 'g++ -Wall -o %< % && ./%<'
  end,
})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'asm',
  callback = function()
    vim.opt.makeprg = 'arm-none-eabi-as -o %<.o % && arm-none-eabi-ld -o %< %<.o && qemu-arm %<'
  end,
})
