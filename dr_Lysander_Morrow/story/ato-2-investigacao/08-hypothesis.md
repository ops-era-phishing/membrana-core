### `08-hypothesis.md`

```md
# HYPOTHESIS 001

Projeto: `JOB-042`  
Responsável: `Lysander Morrow`  
Data: `16/08/2026`  
Status: `🟠 Hipótese em teste`

---

## 1. Hipótese

> **O sistema associado ao `/membrane` registra operações antes que elas sejam executadas.**

Não estou afirmando que o sistema prevê eventos.

Essa palavra implica uma interpretação que ainda não posso justificar.

A afirmação é mais simples:

**existe informação sobre uma operação antes da execução correspondente.**

---

## 2. Condições necessárias

Para confirmar a hipótese, preciso eliminar:

- cache;
- logs antigos;
- snapshots;
- processos paralelos;
- reconstrução automática;
- erro de relógio;
- manipulação causada pela ferramenta de recuperação.

---

## 3. Experimento

Será criada uma operação controlada.

A operação será:

```text
create marker

O marcador terá um identificador aleatório.

Exemplo:

M-7F31

O identificador será escolhido somente no momento do teste.

A operação não será executada até que todos os registros relevantes tenham sido observados.

4. Procedimento

Criar identificador.

Registrar horário.

Verificar estado do /membrane.

Procurar o identificador.

Executar operação.

Procurar novamente.

Comparar timestamps.

Calcular hash dos arquivos relevantes.

5. Resultado esperado

Se a hipótese estiver errada:

ANTES:
nenhuma ocorrência

DEPOIS:
M-XXXX encontrado

Se a hipótese estiver correta:

ANTES:
M-XXXX encontrado

DEPOIS:
M-XXXX permanece encontrado

A segunda situação seria significativa.

6. Precaução

Não utilizar dados reais.

Não executar comandos destrutivos.

Não modificar arquivos originais.

Toda operação será realizada na cópia de trabalho.

7. Nota

Existe uma coisa que me incomoda.

Durante a preparação deste teste, pensei em utilizar:

M-7F31

Não sei por quê.

Ainda não gerei o identificador.

Vou gerar um valor novo no momento da execução.

Hipótese: H-001
Estado: AGUARDANDO TESTE
Próximo registro: 09-test-001.md


/logs/recovery.log

Isso era esperado.

6. Problema

O recovery.log apresenta:

2026-08-16 14:28:04
create marker M-84C2
result=SUCCESS

Nenhuma surpresa.

Porém encontrei outra entrada:

2026-08-16 14:28:05
verify marker M-84C2
result=PASS

A operação verify ainda não foi executada.

7. Segunda verificação

Não executei verify.

Esperei aproximadamente dois minutos.

Pesquisei novamente.

O registro continuava presente.

Então desmontei a imagem.

Remontei.

Pesquisei novamente.

Ainda presente.

8. Resultado

O teste não reproduziu exatamente o fenômeno original.

Porém reproduziu uma parte importante.

O sistema registrou uma operação posterior:

verify

antes que ela fosse executada.

Isso elimina a possibilidade de o primeiro caso ter sido apenas um timestamp incorreto.

Existe alguma forma de antecipação de registros.

Não sei como.

9. Próximo teste

Vou alterar a estratégia.

No próximo teste, não vou definir previamente a operação.

Vou observar o /membrane e então realizar uma ação que não foi planejada.

Se mesmo assim surgir um registro correspondente, a hipótese precisará ser reformulada.

Resultado: PARCIALMENTE CONFIRMADO
Hipótese H-001: MANTIDA
Próximo registro: 10-test-002.md

---