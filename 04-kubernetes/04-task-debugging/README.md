# Task 4: Debugging a Broken Deployment

## Objective
Learn how to debug a failing Kubernetes deployment.

## Exercises
1. In a new directory `04-task-debugging`, you will find a broken deployment manifest named `deployment.yaml`.
2. Apply the manifest to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   ```
3. The deployment will fail. Your task is to figure out why and fix it.
4. Use `kubectl` commands to inspect the state of the deployment, pods, and events to identify the problem. Some useful commands are:
   - `kubectl get pods`
   - `kubectl describe pod <pod-name>`
   - `kubectl logs <pod-name>`
   - `kubectl get events`
5. Once you have identified the problem, fix the `deployment.yaml` file and apply it again.
6. Verify that the deployment is now running correctly.

## Hint
Check the image name and tag.
