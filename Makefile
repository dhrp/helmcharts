
update-consul-chart:
	helm upgrade consul-01 consulproject/ \
		--values consulproject/values.yaml \
		--namespace consul-dev