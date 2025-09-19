@echo off
REM Script para criar um novo branch para um problema do Project Euler
REM Uso: new-problem.bat <numero_do_problema>

if "%1"=="" (
    echo Uso: new-problem.bat ^<numero_do_problema^>
    echo Exemplo: new-problem.bat 9
    exit /b 1
)

set PROBLEM_NUM=%1
set BRANCH_NAME=P%PROBLEM_NUM%

echo Criando branch para Problem %PROBLEM_NUM%...

REM Voltar para main
git checkout main

REM Criar e mudar para o novo branch
git checkout -b %BRANCH_NAME%

REM Criar diretório do problema
mkdir P%PROBLEM_NUM% 2>nul
cd P%PROBLEM_NUM%

REM Criar arquivo de projeto simples
echo ^<Project Sdk="Microsoft.NET.Sdk"^>> P%PROBLEM_NUM%.csproj
echo.>> P%PROBLEM_NUM%.csproj
echo   ^<PropertyGroup^>>> P%PROBLEM_NUM%.csproj
echo     ^<OutputType^>Exe^</OutputType^>>> P%PROBLEM_NUM%.csproj
echo     ^<TargetFramework^>net8.0^</TargetFramework^>>> P%PROBLEM_NUM%.csproj
echo   ^</PropertyGroup^>>> P%PROBLEM_NUM%.csproj
echo.>> P%PROBLEM_NUM%.csproj
echo ^</Project^>>> P%PROBLEM_NUM%.csproj

REM Criar Program.cs
echo /*> Program.cs
echo  * Project Euler - Problem %PROBLEM_NUM%>> Program.cs
echo  * >> Program.cs
echo  * Problem Description:>> Program.cs
echo  * [Adicione a descrição do problema aqui]>> Program.cs
echo  * >> Program.cs
echo  * Solution approach:>> Program.cs
echo  * [Descreva sua abordagem aqui]>> Program.cs
echo  */>> Program.cs
echo.>> Program.cs
echo using System;>> Program.cs
echo.>> Program.cs
echo class Program>> Program.cs
echo {>> Program.cs
echo     static long SolveProblem%PROBLEM_NUM%()>> Program.cs
echo     {>> Program.cs
echo         // TODO: Implementar solução>> Program.cs
echo         return 0;>> Program.cs
echo     }>> Program.cs
echo.>> Program.cs
echo     static void Main(string[] args)>> Program.cs
echo     {>> Program.cs
echo         var result = SolveProblem%PROBLEM_NUM%();>> Program.cs
echo         Console.WriteLine($"Problem %PROBLEM_NUM% solution: {result}");>> Program.cs
echo         Console.WriteLine("Press any key to exit...");>> Program.cs
echo         Console.ReadKey();>> Program.cs
echo     }>> Program.cs
echo }>> Program.cs

cd ..

echo.
echo Branch P%PROBLEM_NUM% criado com estrutura simples!
echo Arquivos criados:
echo   - P%PROBLEM_NUM%/Program.cs
echo   - P%PROBLEM_NUM%/P%PROBLEM_NUM%.csproj
echo.
echo Para rodar o código:
echo   cd P%PROBLEM_NUM%
echo   dotnet run
echo.
echo Para salvar:
echo   git add .
echo   git commit -m "Initial setup for Problem %PROBLEM_NUM%"
echo   git push -u origin P%PROBLEM_NUM%