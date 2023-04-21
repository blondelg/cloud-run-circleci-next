#!/bin/sh
for digest in $(gcloud container images list-tags eu.gcr.io/$GOOGLE_PROJECT_ID/blog --filter='-tags:*' --format="get(digest)")
do
	gcloud container images delete eu.gcr.io/$GOOGLE_PROJECT_ID/blog@$digest --quiet
done
