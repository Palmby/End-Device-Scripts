#PowerCFG Change Options in CMD

#----------------------------------------------------------------------


#Set the Display Timer when Plugged in:

#powercfg.exe /x monitor-timeout-ac <#>


#-----------------------------------------------------------------------


#Set the Display Timer when on Battery:

#powercfg.exe /x monitor-timeout-dc <#>


#-----------------------------------------------------------------------


#Set the Sleep Time when Plugged in:

#powercfg.exe /x standby-timeout-ac <#>


#-----------------------------------------------------------------------


#Set the Sleep Timer when on battery:

#powercfg.exe /x standby-timeout-dc <#>


#-----------------------------------------------------------------------


#Set the Hibernation Timer when Plugged in:

#powercfg.exe /x hibernate-timeout-ac <#>


#-----------------------------------------------------------------------


#Set the Hibernate Timer when on battery:

#powercfg.exe /x hibernate-timeout-dc <#>


#-----------------------------------------------------------------------





#<#> - indicates integer

#NOTE: Setting any values to '0' will set it to 'Never'










