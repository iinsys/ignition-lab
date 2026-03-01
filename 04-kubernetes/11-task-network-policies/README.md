# Task 11: Network Policies

## Objective
Learn how to use Network Policies to secure pod-to-pod communication.

## Exercises
1. In a new directory `11-task-network-policies`, you will find two deployment manifests: `deployment-frontend.yaml` and `deployment-backend.yaml`.
2. Apply both deployments. They will create pods with labels `app: frontend` and `app: backend`.
3. By default, all pods in a cluster can communicate with each other. You can verify this by exec-ing into a frontend pod and trying to `wget` the backend service.
   ```bash
   # Get the name of a frontend pod
   kubectl get pods -l app=frontend

   # Exec into the pod
   kubectl exec -it <frontend-pod-name> -- /bin/sh

   # From inside the container, try to access the backend.
   # The backend service is named "backend-service"
   wget -qO- http://backend-service
   ```
4. Now, your task is to create a Network Policy that restricts traffic to the backend. The policy should only allow ingress traffic from pods with the `app: frontend` label.
5. Create a `network-policy.yaml` file with your policy.
6. Apply the network policy.
   ```bash
   kubectl apply -f network-policy.yaml
   ```
7. Now, try to access the backend from the frontend pod again. It should still work.
8. Try to access the backend from a different pod (e.g., a simple busybox pod without the `app: frontend` label). It should fail.
   ```bash
   kubectl run test --image=busybox --rm -it -- /bin/sh
   # From inside the container
   wget -qO- http://backend-service
   ```
