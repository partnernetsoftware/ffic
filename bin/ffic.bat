set R0=%~dp0
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (
	%R0%\ffic32.exe %*
) else (
	%R0%\ffic64.exe %*
)
