#!/bin/bash
# Script para criar um novo branch para um problema do Project Euler
# Uso: ./new-problem.sh <numero_do_problema>

if [ -z "$1" ]; then
    echo "Uso: ./new-problem.sh <numero_do_problema>"
    echo "Exemplo: ./new-problem.sh 7"
    exit 1
fi

PROBLEM_NUM=$1
BRANCH_NAME="P$PROBLEM_NUM"

echo "Criando branch para Problem $PROBLEM_NUM..."

# Voltar para main
git checkout main

# Criar e mudar para o novo branch
git checkout -b $BRANCH_NAME

# Criar estrutura básica do problema
mkdir -p "P$PROBLEM_NUM"
cd "P$PROBLEM_NUM"

# Criar arquivo de solução
cat > "Problem$PROBLEM_NUM.cs" << EOF
/*
 * Project Euler - Problem $PROBLEM_NUM
 * 
 * Problem Description:
 * [Adicione a descrição do problema aqui]
 * 
 * Solution approach:
 * [Descreva sua abordagem aqui]
 */

using System;

namespace ProjectEuler.Problems
{
    public class Problem$PROBLEM_NUM
    {
        public static long Solve()
        {
            // TODO: Implementar solução
            return 0;
        }
        
        public static void Main(string[] args)
        {
            Console.WriteLine(\$"Problem $PROBLEM_NUM solution: {Solve()}\");
        }
    }
}
EOF

# Criar arquivo de testes
cat > "Problem${PROBLEM_NUM}Tests.cs" << EOF
using Xunit;

namespace ProjectEuler.Tests
{
    public class Problem${PROBLEM_NUM}Tests
    {
        [Fact]
        public void TestExample()
        {
            // TODO: Adicionar casos de teste baseados nos exemplos do problema
            Assert.True(true, "Implementar teste");
        }
    }
}
EOF

cd ..

echo "Branch P$PROBLEM_NUM criado com estrutura básica!"
echo "Arquivos criados:"
echo "  - P$PROBLEM_NUM/Problem$PROBLEM_NUM.cs"
echo "  - P$PROBLEM_NUM/Problem${PROBLEM_NUM}Tests.cs"
echo ""
echo "Para trabalhar no problema:"
echo "  git add ."
echo "  git commit -m 'Initial setup for Problem $PROBLEM_NUM'"
echo "  git push -u origin P$PROBLEM_NUM"