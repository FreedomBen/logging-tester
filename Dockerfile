FROM registry.access.redhat.com/ubi8/ubi

ENV VERSION 0.0.1

LABEL io.k8s.description="logging-tester" \
  io.k8s.display-name="logging-tester v${VERSION}" \
  io.openshift.tags="test,qa" \
  name="logging-tester" \
  architecture="x86_64" \
  maintainer="github.com/FreedomBen"

COPY . /app

WORKDIR /app

CMD /app/run.sh
