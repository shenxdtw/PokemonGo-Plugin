.class public abstract Lcom/google/android/gms/location/LocationCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .registers 2
    .param p1, "locationAvailability"    # Lcom/google/android/gms/location/LocationAvailability;

    .prologue
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .registers 2
    .param p1, "result"    # Lcom/google/android/gms/location/LocationResult;

    .prologue
    return-void
.end method
