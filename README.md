Script para instalação das dependências para rodar ruby no vagrant

Criando VirtualHost
<VirtualHost *:80>
	
	DocumentRoot /Users/eduardoalexandre/Dropbox/Estudos/Estudos-PHP-PDO/phpmyadmin
	ServerName phpmyadmin.local
	
	<Directory "/Users/eduardoalexandre/Dropbox/Estudos/Estudos-PHP-PDO/phpmyadmin">
		Options Indexes MultiViews FollowSymlinks
		AllowOverride All
		Order allow,deny
		Allow from all
	</Directory>

</VirtualHost>
