#!/bin/bash
curl -XDELETE -u liuxg:123123 localhost:9200/cf_rfem_hist_price
curl -XPUT -u liuxg:123123 localhost:9200/cf_rfem_hist_price -H "Content-Type:application/json" --data-binary @cf_rfem_hist_price_mappings.json
curl -XPOST -u liuxg:123123 localhost:9200/cf_rfem_hist_price/_bulk?pretty -H "Content-Type:application/json" --data-binary @cf_rfem_hist_price_bulk.json