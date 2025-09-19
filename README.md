# Project Euler .NET Solutions

Este workspace é projetado para resolver problemas matemáticos do Project Euler usando C#/.NET, com uma estrutura de branching organizada e simples.

## Estrutura do Projeto

### Branching Strategy
- **main**: Branch principal com configuração base e scripts utilitários
- **P{número}**: Branch separado para cada problema (P1, P2, P3, etc.)
- Cada branch de problema contém apenas um diretório com a solução

### Estrutura de Arquivos
```
ProjectEuler/
├── .github/
│   └── copilot-instructions.md
├── P{número}/                    # Diretório do problema (por branch)
│   ├── Program.cs               # Solução principal
│   └── P{número}.csproj         # Arquivo de projeto .NET
├── new-problem.bat              # Script para criar novos problemas (Windows)
├── new-problem.sh               # Script para criar novos problemas (Linux/Mac)
└── README.md
```

## Como Usar

### Criando um Novo Problema
Use o script para criar automaticamente um novo branch e arquivo:

**Windows:**
```bash
new-problem.bat 9
```

**Linux/Mac:**
```bash
chmod +x new-problem.sh
./new-problem.sh 9
```

### Workflow de Desenvolvimento
1. **Criar novo problema**: Use o script para criar branch e diretório
2. **Implementar solução**: Edite o arquivo `Program.cs` no diretório do problema
3. **Testar localmente**: `cd P{número} && dotnet run`
4. **Commit e push**: Salve sua solução no branch específico

### Navegação entre Problemas
```bash
# Listar todos os branches de problemas
git branch -a

# Mudar para um problema específico
git checkout P7

# Voltar para main
git checkout main

# Criar novo branch para problema 9
git checkout main
./new-problem.bat 9
```

### Executando uma Solução
```bash
# No branch do problema
cd P7
dotnet run
```

## Diretrizes de Código
- Use nomes de variáveis claros e descritivos
- Inclua a descrição do problema como comentários
- Otimize para legibilidade e performance
- Mantenha o código simples e direto

## Abordagem para Resolução de Problemas
1. Leia e entenda completamente o problema
2. Planeje o algoritmo antes de codificar
3. Comece com uma solução força bruta, depois otimize
4. Teste com os exemplos fornecidos antes de submeter
5. Considere casos extremos e limitações de performance

## Exemplo de Estrutura de Arquivo
```csharp
/*
 * Project Euler - Problem 7
 * 
 * Problem Description:
 * By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
 * we can see that the 6th prime is 13.
 * What is the 10,001st prime number?
 * 
 * Solution approach:
 * Use the Sieve of Eratosthenes to generate primes efficiently
 */

using System;

class Program
{
    static long SolveProblem7()
    {
        // Implementation here
        return 104743;
    }

    static void Main(string[] args)
    {
        var result = SolveProblem7();
        Console.WriteLine($"Problem 7 solution: {result}");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }
}
```

## Branches Existentes
- P6, P7, P8 (já implementados com estrutura organizada)
- Use `git branch -a` para ver todos os branches disponíveis

---
*My solutions for problems from Project Euler (https://projecteuler.net/)*
