# Openldap populated with data
The reason I'm doing this is to eventually test epildap. I need some test data and an LDAP server to hit. Unfortunately, the schema is quite different. I'm not sure how this would play with epildap, but we can try!

## Build
```
make all
```

## Query the server
```
docker exec ldap_server ldapsearch -x -H ldap://localhost -b dc=martinproductions,dc=local -D "cn=admin,dc=martinproductions,dc=local" -w Adm1n
```

## Create an interactive environment
1. `make compose`
2. navigate to http://localhost:8090/
3. Login DN: `cn=admin,dc=martinproductions,dc=local`
4. Password: value that I set in `./environment/my-env.startup.yaml`

## Inspiration
- [How To Use LDIF Files to Make Changes to an OpenLDAP System](https://www.digitalocean.com/community/tutorials/how-to-use-ldif-files-to-make-changes-to-an-openldap-system)
- [Example OpenLdap Docker image with environment files](https://github.com/osixia/docker-openldap/tree/master/example/extend-osixia-openldap)
- [Osixia OpenLdap Docker Image I use](https://github.com/osixia/docker-openldap#data-persistence)
- [Medium article that inspired me to do this](https://betterprogramming.pub/ldap-docker-image-with-populated-users-3a5b4d090aa4)
