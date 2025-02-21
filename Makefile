


build : 
	docker build -t ${IMAGE} .

run_docker : 
	docker run -p 5555:5555 ${IMAGE}


tag :
	docker build -t ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMAGE} .

push : 
	docker push ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMAGE}
