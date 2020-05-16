# Symfony 5 JWT Auth Starting Point

This is only my barebones Auth starting point still in development.

## Configure

First run this ``composer install`` for install of all dependencies.

### Generate keys

We need to generate keys for JWT to encode and decode the tokens. 
The following commands generate public/private keys, and it asks for a passphrase. Save it because you'll need to enter it in the .env.file ``JWT_PASSPHRASE`` variable.

```
openssl genrsa -out config/jwt/private.pem -aes256 4096
openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem
```

## Utils

Theres a couple of batch files to save us a few keystrokes in Windows.

### s.bat
If you're in Windows there's a batch file ``s.bat`` to save us a few keystrokes in every bin/console command:

Instead of ``php bin/console COMMAND`` just use ``s COMMAND``.\\ 

### reset.bat aka 'The nuke'

For resetting the database, migrations and the database while in development, use ``reset``.

1. It will delete all migration files
2. It will drop all tables in .dev database
3. It will create a new migration
4. It will migrate the database to the new status