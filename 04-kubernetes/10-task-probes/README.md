# Task 10: Liveness and Readiness Probes

## Objective
Learn how to configure liveness and readiness probes to improve the reliability of your applications.

### A note on Liveness and Readiness Probes
- **Liveness Probe:** The Kubelet uses liveness probes to know when to restart a container. If the liveness probe fails, the Kubelet kills the container, and the container is subjected to its restart policy.
- **Readiness Probe:** The Kubelet uses readiness probes to know when a container is ready to start accepting traffic. A pod is considered ready when all of its containers are ready. When a pod is not ready, it is removed from Service load balancers.

## Exercises
1. In a new directory `10-task-probes`, create a deployment manifest named `deployment.yaml`.
2. The deployment should run an `nginx` container.
3. Add a **readiness probe** that checks if the nginx server is ready by sending an HTTP GET request to the `/` path on port 80.
4. Add a **liveness probe** that does the same thing. This will ensure that the container is restarted if the nginx server stops responding.
5. Apply the deployment.
   ```bash
   kubectl apply -f deployment.yaml
   ```
6. Describe the pod and look at the "Containers" section to verify that your probes have been configured.
   ```bash
   kubectl describe pod <pod-name>
   ```
7. To see the liveness probe in action, you can `exec` into the pod and stop the `nginx` process. This will cause the liveness probe to fail, and Kubernetes will restart the container.
   ```bash
   kubectl exec -it <pod-name> -- /bin/bash
   # Inside the container
   service nginx stop
   ```
