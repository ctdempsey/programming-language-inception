program fortran
  implicit none

  print '(a)', 'Hello from Fortran!'
  call execute_command_line ("pwsh powershell.ps1")
  print '(a)', 'Goodbye from Fortran!'

end program fortran
