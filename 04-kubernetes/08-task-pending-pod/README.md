# Task 8: Debugging a Pending Pod

## Objective
Learn how to debug a pod that is stuck in the `Pending` state.

## Exercises
1. In a new directory `08-task-pending-pod`, you will find a deployment manifest named `deployment.yaml`.
2. This deployment requests a very large amount of CPU, which is likely more than any single node in your cluster can provide.
3. Apply the manifest to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   ```
4. The pod will get stuck in the `Pending` state. Your task is to figure out why and fix it.
5. Use `kubectl` to describe the pod and look at the "Events" section. You should see a message indicating that the pod failed to schedule because of insufficient CPU.
   ```bash
   kubectl describe pod <pod-name>
   ```
6. Fix the `deployment.yaml` file by reducing the CPU request to a more reasonable value, for example, "100m".
7. Apply the updated manifest.
8. Verify that the pod is now running correctly.
