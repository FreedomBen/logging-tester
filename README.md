# logging-tester

This logging tester is a simple app that prints to standard out so you can test that your logging aggregator is picking up logs like you expect.

## Usage

To use, simply deploy to your cluster with a Deployment or DeploymentConfig.  The script will write to stdout every 1 second with a datetime stamp.  You can then look for the output in your logging aggregator (either the built-in EFK stack or Splunk or something else).

```yaml
apiVersion: v1
kind: List
metadata: {}
items:
- apiVersion: apps/v1
  kind: Deployment
  metadata:
    labels:
      app: logging-tester
    name: logging-tester
  spec:
    replicas: 1
    selector:
      matchLabels:
        app: logging-tester
    template:
      metadata:
        labels:
          app: logging-tester
      spec:
        containers:
        - image: quay.io/freedomben/volume-tester:latest
          name: logging-tester-container
          imagePullPolicy: Always
```
