.class Lcom/nianticlabs/nia/location/LocationManagerProvider$1;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/LocationManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/LocationManagerProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/LocationManagerProvider;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4

    const-string v5, "/pokemon.location"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fin":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/InputStreamReader;
    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v4
    invoke-virtual {p1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/location/Location;->setLongitude(D)V
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;

    :goto_7


    .line 107
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # getter for: Lcom/nianticlabs/nia/location/LocationManagerProvider;->running:Z
    invoke-static {v0}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$000(Lcom/nianticlabs/nia/location/LocationManagerProvider;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$100(Lcom/nianticlabs/nia/location/LocationManagerProvider;Landroid/location/Location;)V

    .line 110
    :cond_d
    return-void

    :catch_d
    move-exception v0

    goto :goto_7
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$200(Lcom/nianticlabs/nia/location/LocationManagerProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 136
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticlabs/nia/location/LocationManagerProvider$1;->this$0:Lcom/nianticlabs/nia/location/LocationManagerProvider;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # invokes: Lcom/nianticlabs/nia/location/LocationManagerProvider;->updateStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/location/LocationManagerProvider;->access$200(Lcom/nianticlabs/nia/location/LocationManagerProvider;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V

    .line 127
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method
