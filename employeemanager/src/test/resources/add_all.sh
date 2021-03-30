jq -c '.[]' employees.json | while read a; do
   echo $a | http POST :8080/employee
done
