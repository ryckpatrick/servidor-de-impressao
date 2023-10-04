# Scripts para Servidor de Impressão

<!-- TOC -->

- [Scripts para Servidor de Impressão](#scripts-para-servidor-de-impress%C3%A3o)
  - [Requisitos](#requisitos)
  - [Usage](#usage)

<!-- /TOC -->

Scripts voltados a automação de impressão no Windows Server para verificar se a impressora está devidamente instalada na máquina.

## Requisitos
- Windows Server 2008 R2
- Terminal

## Usage

Executar o reset_spooler no servidor.

```bash
./scripts/reset_spooler.bat
```

Adicionar o arquivo *MODELO.vbs* no inicializar das máquinas para verificar se a impressora está instalada. É necessário alterar o arquivo as variáveis:

- SERVIDOR QUE DEVE SER SUBSTITUIDO (exemplo: \\srv-imp\zebra)
- SERVIDOR NOVO (exemplo: \\srvnew-imp\zebrazd)
- NOME DA IMPRESSORA