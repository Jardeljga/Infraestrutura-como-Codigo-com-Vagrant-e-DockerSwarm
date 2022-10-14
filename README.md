# Infraestrutura-como-Codigo-com-Vagrant-e-DockerSwarm

Criação de infraestrutura como código para criação automatizada de 3 servidores em cluster com Docker Swarm utilizando o Vagrant para provisionamento automático. Como incremento ao desafio, foi automatizada a inclusão de um servidor Web Apache (com site personalizado no tema do bootcamp), sincronização automática entre volumes com NFS Server, e utilização de containers com 9 réplicas entre os 3 servidores.

Deve ser utilizado o comando abaixo para início do provisionamento dos servidores com o Vagrant:

Vagrant up

Após o provisionamento dos servidores, deve ser utilizado o comando abaixo para criação automática dos containers com o serviço do Apache em 9 réplicas entre os 3 servidores:

vagrant ssh server-principal -c "sudo docker service create --name web-desafio-dio --replicas 9 -dt -p 80:80 --mount type=volume,src=web-site,dst=/usr/local/apache2/htdocs httpd"
