.class Lcom/nianticlabs/nia/location/FusedLocationProvider$4;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .registers 4
    .param p1, "locationAvailability"    # Lcom/google/android/gms/location/LocationAvailability;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 237
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 241
    :goto_d
    return-void

    .line 239
    :cond_e
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_d
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .registers 7
    .param p1, "result"    # Lcom/google/android/gms/location/LocationResult;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 220
    .local v2, "location":Landroid/location/Location;
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v4, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .line 221
    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiManager:Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
    invoke-static {v4}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$400(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager;->getClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    .line 220
    invoke-interface {v3, v4}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLocationAvailability(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    .line 222
    .local v0, "isValidLocation":Z
    if-eqz v2, :cond_27

    if-eqz v0, :cond_27

    .line 227
    iget-object v3, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    invoke-static {v3}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$500(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    move-result-object v1

    .line 228
    .local v1, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v1, :cond_27

    .line 229
    invoke-interface {v1, v2}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderLocation(Landroid/location/Location;)V

    .line 232
    .end local v1    # "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    :cond_27
    return-void
.end method
