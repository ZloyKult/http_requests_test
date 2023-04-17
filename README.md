# http_requests_test
simple html page to test http requests
To use this image, do after pull:
docker build -t http_requests:latest .
docker create --name http_req -p 80:80 http_requests:latest
docker start http_req
visit http://"your address here" 
