

## Concourse
https://blog.knoldus.com/how-to-install-concourse-ci-in-multiple-ways/

wget Install
curl -kLSs https://github.com/opscode/chef-repo/tarball/master -o master.tar.gz

wget https://raw.githubusercontent.com/starkandwayne/concourse-tutorial/master/docker-compose.yml docker-compose up -d

### Fly client

* fly --target <your_project> login --concourse-url http://127.0.0.1:8080 -u admin -p admin
* fly --target your_project sync

```
fly --target ba2-backend login --concourse-url http://127.0.0.1:8080 -u admin -p admin
fly --target ba2-backend sync
```