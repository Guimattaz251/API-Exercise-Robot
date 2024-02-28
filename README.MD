# Testes da API JSONPlaceholder com Robot Framework

Este repositório contém testes automatizados para a API JSONPlaceholder, que é um serviço de simulação de uma API RESTful para fins de teste e desenvolvimento.

Os testes são escritos em Robot Framework e fazem uso da biblioteca Requests para fazer requisições HTTP para a API.

## Pré-requisitos

- Python instalado na sua máquina
- Instalação do Robot Framework e da biblioteca Requests

pip install robotframework
pip install robotframework-requests

## Executando os Testes

1. Clone este repositório:

git clone https://github.com/Guimattaz251/API-Exercise-Robot.git

2. Navegue até o diretório do projeto:

cd API-Exercise-Robot

3. Execute os testes usando o Robot Framework:

robot -d results -L trace tests

## Estrutura do Projeto

- `tests/`: Este diretório contém os arquivos de teste em formato Robot Framework, aonde viso evitar o máximo keywords da biblioteca Requests.

- `resources/`: Este diretório contém os arquivos das keywords em formato Robot Framework.

## Testes

Os testes são organizados em arquivos separados dentro do diretório `tests/`. Cada arquivo de teste contém cenários para testar os métodos GET, POST, PUT e DELETE da API JSONPlaceholder.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests com sugestões, melhorias ou correções.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).
