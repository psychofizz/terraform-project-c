# Database/Cache
Hai, this is project C in the ABC series of the terraform e-commerce solution. 
This part has the database and the cache.

## Reasoning
Redis is the cache layer, it's apparently getting deprecated soon or something?
Documentation on Redis suggests this is exactly what speeding up requests means.
as this accelerates the most common requests, i debated on whether to have this as say indexing in the database itself but in the spirit of investigating and trying out new tech this seems to fit the bill. 
Redis prides itself as distributed cache and i can't think of a better solution to caching frequent database requests

## Environment Variables

Make sure the following environment variables are configured:

- SUBSCRIPTION_ID = az account list | grep "id"
- PROJECT = ecommerce
- FUNCTION = datacache
- ENVIRONMENT = dev
- LOCATION = Central US
