# Python Stripe Client - Lambda Layer

## Lambda Layer for our lambdas that need a Stripe Client

This solves the issue of having multiple hard-coded Stripe Clients across all our lambdas. If Stripe publishes a new version we want to push to our AWS stack, we just need to deploy this change to this particular Lambda and set our functions to use it as a Layer.
More info on [AWS Lambda Layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)

### Dockerfile

```Dockerfile
FROM amazonlinux:2.0.20200722.0

RUN yum install -y python38 && \
    yum install -y python3-pip && \
    yum install -y zip && \
    yum clean all

RUN python3.8 -m pip install --upgrade pip && \
    python3.8 -m pip install virtualenv
```
