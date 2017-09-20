%NUGET% restore Reinterpret.Net.sln -NoCache -NonInteractive
msbuild Reinterpret.Net.sln /p:Configuration=Release
dotnet build .\src\Reinterpret.Net.csproj -c Release

ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net20\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net20\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net20\PointerHelper.Netframework.dll .\src\Reinterpret.Net\bin\Release\net20\UnsafeAs.Backport.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net30\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net30\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net30\PointerHelper.Netframework.dll .\src\Reinterpret.Net\bin\Release\net30\UnsafeAs.Backport.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net35\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net35\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net35\PointerHelper.Netframework.dll .\src\Reinterpret.Net\bin\Release\net35\UnsafeAs.Backport.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net40\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net40\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net40\PointerHelper.Netframework.dll .\src\Reinterpret.Net\bin\Release\net40\UnsafeAs.Backport.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net451\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net451\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net451\PointerHelper.Netframework.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\net46\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net46\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\net46\PointerHelper.Netframework.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\netstandard1.1\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\netstandard1.1\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\netstandard1.1\PointerHelper.Core.dll
ILRepack.exe /out:.\src\Reinterpret.Net\bin\Release\netstandard2.0\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\netstandard2.0\Reinterpret.Net.dll .\src\Reinterpret.Net\bin\Release\netstandard12.0\PointerHelper.Core.dll