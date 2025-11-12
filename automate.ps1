Write-Host ">>> Script started successfully!" -ForegroundColor Cyan
Write-Host "Starting Docker + Kubernetes automation script..." -ForegroundColor Cyan

# Variables
$dockerUsername = "soumitha3"
$imageName = "python-docker-app1"
$fullImageName = "$dockerUsername/$imageName:latest"

# Build Docker image
Write-Host "Building Docker image..." -ForegroundColor Yellow
docker build -t $imageName .

# Tag the image
Write-Host "Tagging Docker image..." -ForegroundColor Yellow
docker tag $imageName $fullImageName

# Push the image
Write-Host "Pushing image to Docker Hub..." -ForegroundColor Yellow
docker push $fullImageName

# Deploy to Kubernetes
Write-Host "Deploying to Kubernetes..." -ForegroundColor Yellow
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Show resources
Write-Host "Current Kubernetes resources:" -ForegroundColor Green
kubectl get all

Write-Host "Deployment successful!" -ForegroundColor Green
Write-Host "Access your app at: http://localhost:30007" -ForegroundColor Cyan
