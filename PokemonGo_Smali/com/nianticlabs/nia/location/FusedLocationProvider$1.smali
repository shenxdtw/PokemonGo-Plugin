.class Lcom/nianticlabs/nia/location/FusedLocationProvider$1;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;


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
    .line 64
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 73
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 75
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->appState:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;
    invoke-static {v0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$200(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;->RESUME:Lcom/nianticlabs/nia/location/FusedLocationProvider$AppState;

    if-ne v0, v1, :cond_1d

    .line 76
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->startProvider()V
    invoke-static {v0}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$300(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V

    .line 78
    :cond_1d
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 97
    if-eqz p1, :cond_20

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 99
    .local v0, "code":I
    packed-switch v0, :pswitch_data_28

    .line 104
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 109
    .end local v0    # "code":I
    :goto_17
    return-void

    .line 101
    .restart local v0    # "code":I
    :pswitch_18
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_17

    .line 107
    .end local v0    # "code":I
    :cond_20
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/FusedLocationProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$100(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    goto :goto_17

    .line 99
    :pswitch_data_28
    .packed-switch 0x13
        :pswitch_18
    .end packed-switch
.end method

.method public onDisconnected()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$1;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    # setter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->googleApiState:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$002(Lcom/nianticlabs/nia/location/FusedLocationProvider;Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 87
    return-void
.end method
