# Script Hyper-V Réplica em Domínio com certificado SSL -  Instalação da Função de Hyper-V ambiente de domínio  - Créditos Gabriel Luiz - www.gabrielluiz.com ##


$Servers = 'SR1','SR2' # Host name dos servidores.

$Servers | ForEach { Install-WindowsFeature -ComputerName $_ -Name Hyper-V -IncludeManagementTools -restart } # Instalação da Função de Hyper-V.


# Observações:

# Este comando deve ser executado no segundo servidor no caso o servidor com o hostname SR2.

# Ao final da instalação ambos servidores serão reinicializados.