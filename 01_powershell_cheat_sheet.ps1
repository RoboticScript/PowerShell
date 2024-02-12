###################################################################################################
# POWERSHELL CHEAT SHEET
# CREATED BY RAVINDRA SHARMA
# LAST UPDATED ON FEB 10, 2024
###################################################################################################

<#
01 - About PowerShell
02 - PowerShell Variables
03 - PowerShell Operators
04 - Conditional Statements
05 - PowerShell Loops
06 - PowerShell String
07 - PowerShell Functions
08 - Try Catch Finally
09 - PowerShell cmdlet
10 - PowerShell Remoting
11 - PowerShell Modules
#>

###################################################################################################
### 01 - About PowerShell
###################################################################################################


#Three Core Cmdlets
#------------------
Get-Command
Get-Help
Get-Member

#Examples:

Get-Command -Noun Process
Get-Command -Noun *

Get-Command -Name service
Get-Command -Name *service*

# ---------------------------------------------------------------------------------------------------

# A cmdlet is denoted as a verb-noun pair and has a .ps1 extension.
# Every cmdlet has a help file and can be obtained by typing Get-Help <cmdlet-Name> -Detailed.

# // Some of the popular cmdlets are: //

# Get — To get something
# Set — To define something
# Start — To run something
# Stop — To stop something that is running
# Out — To output something
# New — To create something


###################################################################################################
### 02 - PowerShell Variables
###################################################################################################

# A variable is a unit of memory in which the data is stored.
# A variable starts with the dollar ($) sign, such as $a, $ab.
# The name of the variables are not case-sensitive, and they include spaces and special characters.
# By default, the value of all the variables in a PowerShell is $null.

# +---------------------------+
# | 01 - PowerShell Variables | "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.2"
# | 02 - Automatic Variables  | "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.2"
# | 03 - Preference Variables | "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_preference_variables?view=powershell-7.2"
# | 04 - PowerShell Array     | "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays?view=powershell-7.2"
# | 05 - Hast Table           | "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_hash_tables?view=powershell-7.2"
# +---------------------------+

# Examples
$variable_1 = 12
$variable_2 = "PowerShell"
$variable_3 = 12,"PowerShell"


[int]$variable_int = 8
[string]$variable_str = "PowerShell"


# To find the type of a variable, you can use the GetType() method.

$variable_1.GetType()
$variable_2.GetType()

#------------------------------------------------
# EXAMPLE

$a = "Hello World!"
$a.GetType()  # IsPublic (True), IsSerial (True), Name (String), BaseType (System.Object)
$a.count      # 1
$a[0]         # H
$a[1]         # e
$a[-1]        # !

#------------------------------------------------
# EXAMPLE

$a = @("Hello World!")
$a.GetType()  # IsPublic (True), IsSerial (True), Name (Object[]), BaseType (System.Array)
$a.count      # 1
$a[0]         # Hello World!

#------------------------------------------------
# EXAMPLE
$a = @("Hello World!", "Friend")
$a.count  # 2
$a[1]     # Friend

#------------------------------------------------
# EXAMPLE

$a = @{"Hello World!"}

$a.GetType()  # IsPublic (True), IsSerial (True), Name (Object[]), BaseType (System.Array)
$a.count      # 1
$a[0]         # Hello World!

$a = @("Hello World!", "Friend")
$a.count  # 2
$a[1]     # Friend


###################################################################################################
### 03 - PowerShell Operators
###################################################################################################

 # 01 - Arithmetic Operators
 # 02 - Assignment Operators
 # 03 - Comparison Operators
 # 04 - Logical Operators
 # 05 - Redirectional Operators
 # 06 - Spilt and Join Operators
 # 07 - Type Operators
 # 08 - Unary Operators




###################################################################################################
### 04 - Conditional Statements
###################################################################################################

# 01 - If Statement
# 02 - If-else Statement
# 03 - Else-if Statement
# 04 - Switch Statement

#------------------------------------------------
# EXAMPLE
$x = 5
if($x -eq 5){
   write-host("$x is equal to 5")
}
#------------------------------------------------
# EXAMPLE
$x = 10
if($x -eq 10){
   write-host("$x is equal to 10")
}else {
   write-host("$x is not equal to 10")
}
#------------------------------------------------
# EXAMPLE
$x = 11
if($x -eq 10){
   write-host("$x is equal to 10")
}else {
   write-host("$x is not equal to 10")
}
#------------------------------------------------
# EXAMPLE: SWITCH

[int]$a = 3
switch($a) {
   1 {Write-Host "You have enter 1"}
   2 {Write-Host "You have enter 2"}
   3 {Write-Host "You have enter 3"}
   4 {Write-Host "You have enter 4"}
}

###################################################################################################
### 05 - PowerShell Loops
###################################################################################################

# 01 - For Loop
# 02 - Foreach Loop
# 03 - While Loop
# 04 - Do-while Loop
# 05 - Continue and Break Statement


#------------------------------------------------
# EXAMPLE

$numbers = 1,2,3,4,5,6,7,8,9,10
foreach ($number in $numbers) {
Write-Host $number
Start-Sleep -Seconds 1
}

#------------------------------------------------
# EXAMPLE
$names = "server1","server2","server3","server4","server5"
foreach ($name in $names) {
Write-Host $name
Start-Sleep -Milliseconds 500
}


###################################################################################################
### 06 - PowerShell String
###################################################################################################


A String can be defined in PowerShell by using the single or double-quotes.
It is a datatype that denotes the sequence of characters.
The PowerShell string is simply an object with a System.String type.

#------------------------------------------------
# Examples 1: Single quotes in a string

 $string_1='Hello World!'
 $string_1
#------------------------------------------------
# OUTOUT
 Hello World!

 #------------------------------------------------
Examples 2: Double quotes in a string

 $string_2="Hello World!"
 $String_2
Hello World!

#------------------------------------------------
Examples 3: Concatenation the two string variables:

 $string_1="Hello"
 $string_2="World!"
 $string_1+$string_2
HelloWorld!
 $string_1 + $string_2
HelloWorld!
 $string_1+" "+$string_2
Hello World!

#------------------------------------------------
Examples 3: Method concat() to concatenate the strings

 $string_1="Hello"
 $string_2="World!"
 [System.String]::Concat($string_1,$string_2)
HelloWorld!

#------------------------------------------------
 $string_1="Hello"
 $string_2=" World!"
 [System.String]::Concat($string_1,$string_2)
Hello World!

#------------------------------------------------
Examples 3: SubString()

The following example skips the first one character and returns the next three-character from the given string.
 $string_1="Hello World!"
 $string_1.SubString(1,3)
ell

 $string_1.SubString(0,3)
Hel
 $string_1.SubString(1,3)
ell
 $string_1.SubString(2,3)
llo

#------------------------------------------------
Examples 4:String formatting is a process to insert some characters or string inside a string. We can format the string by using the -f operator.

 $string_1="Hello Friend, I love"
 $string_2="Windows PowerShell"
 $string_3="Scripting"
 $string_4 = "Hi, {0} {1}....{2}......" -f $string_1,$string_2,$string_3
 $string_4

 #------------------------------------------------
Examples 5: The replace() method accepts the two arguments and is used to replace the characters in a string.

 $string_1="Hello World!"
 $string_1.replace("o","AA")
HellAA WAArld!

#------------------------------------------------
Return the last 5 characters from a string (RIGHT):
$var = "Hello World"
$length = $var.length
$result = $var.substring($length -5)
$result

#------------------------------------------------
Split the characters from a string:
$var = "HelloWorld.doc"
$var.Split(".")
$var1 = $var.Split(".")
$var1[0]

#------------------------------------------------
# Powershell To Remove Everything Before or After A Character

# Example
$s = 'ravindra.sharma@domain.co.in'
$s.Substring(0, $s.IndexOf('.'))
#---------------------------------------
# OUTPUT
ravindra

#---------------------------------------
# Example
'ravindra.sharma@domain.co.in'.split('.')[0]
#---------------------------------------
# OUTPUT
ravindra


###################################################################################################
### 07 - PowerShell Functions
###################################################################################################





###################################################################################################
### 08- Try Catch Finally
###################################################################################################


https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_try_catch_finally?view=powershell-7.3

# Save below code script.ps1 

#------------------------------------------------
# EXAMPLE
Write-Host "Example 1" -ForegroundColor Magenta
try { NonsenseString }
catch { "An error occurred - 1." }

#------------------------------------------------
# EXAMPLE
Write-Host "Example 2" -ForegroundColor Magenta
try { $NonsenseString }
catch { "An error occurred - 2." }
Write-Host "No error found"

#------------------------------------------------
# EXAMPLE
Write-Host "Example 3" -ForegroundColor Magenta
try { NonsenseString }
catch {
  Write-Host "An error occurred - 3."
  Write-Host $_
}

#------------------------------------------------
## OUTPUT ##

# PS C:\roboticscript\examples> .\try_catch_finally.ps1
# Example 1
# An error occurred - 1.
# Example 2
# No error found
# Example 3
# An error occurred - 3.
# The term 'NonsenseString' is not recognized as a name of a cmdlet, function, script file, or executable program.
# Check the spelling of the name, or if a path was included, verify that the path is correct and try again.



###################################################################################################
### 09 - PowerShell cmdlet
###################################################################################################

Get-Date
Get-Date -Format dd-MM-yyyy_HH-mm-ssf
Get-Date -Format dd-MM-yyyy_HH-mm-ssffff

#------------------------------------------------
## OUTPUT ##
# 26 October 2022 10:13:52 PM
# 26-10-2022_22-13-566
# 26-10-2022_22-14-464717



###################################################################################################
### 10 - PowerShell remoting
###################################################################################################

PowerShell remoting must be enabled on the remote computer. Use the Enable-PSRemoting cmdlet to enable PowerShell remoting.


 Enable-PSRemoting

Example 1: One-To-One Remoting


 $Cred = Get-Credential
 Enter-PSSession -ComputerName dc01 -Credential $Cred
# [dc01]: PS C:\Users\Administrator\Documents>
# [dc01]: PS C:\Users\Administrator\Documents>cd \
# [dc01]: PS C:\> 
# [dc01]: PS C:\> Get-Process | Get-Member
# [dc01]: PS C:\> Exit-PSSession

---------------------------------------------------------------------------------------------------

# Example 1: One-To-Many Remoting

Invoke-Command -ComputerName dc01, sql02, web01 {Get-Service -Name W32time} -Credential $Cred


###################################################################################################
### 11 - PowerShell Modules
###################################################################################################


# 01 - ImportExcel

# PowerShell module to import/export Excel spreadsheets, without Excel.
# https://github.com/dfinke/ImportExcel
# https://www.powershellgallery.com/packages/ImportExcel/7.8.4

# 02 - PSWriteHTML

# PSWriteHTML is PowerShell Module to generate beautiful HTML reports, pages, emails without any knowledge of HTML, CSS or JavaScript.
# To get started basics PowerShell knowledge is required.
# https://github.com/EvotecIT/PSWriteHTML

# 03 - PSWritePDF

# PowerShell Module to create, edit, split, merge PDF files on Windows / Linux and MacOS.
# https://github.com/EvotecIT/PSWritePDF

# 04 - WebServer

# Powershell WebServer is a Powershell module that starts a webserver (without the need for IIS).
# https://github.com/MScholtes/WebServer


### COMMANDS ###
Get-InstalledModule
Get-Module -ListAvailable

### INSTALLATION ###
# Install-Module : Administrator rights are required to install modules in 'C:\Program Files\WindowsPowerShell\Modules'.

Install-Module -Name ImportExcel
Install-Module -Name ImportExcel -Scope CurrentUser


###################################################################################################
### E N D
###################################################################################################
