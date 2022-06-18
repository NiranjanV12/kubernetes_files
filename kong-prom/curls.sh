while true;
do
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/callOtherService
  curl http://10.96.229.174:31392/microsvc-static-1/callOtherService
  curl http://10.96.229.174:31392/microsvc-static-1/callOtherService
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/health
  curl http://10.96.229.174:31392/microsvc-static-1/health
  sleep 0.01
done
