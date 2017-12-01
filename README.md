Generated using
----------------
~~~
docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate \
    -i http://192.168.0.103:8000/_db/_system/_admin/aardvark/api/swagger.json?_=1511451394106 \
    -l lua \
    -o /local/src
~~~

for build
----------------
~~~
sudo apt install libssl-dev
luarocks make --local
~~~