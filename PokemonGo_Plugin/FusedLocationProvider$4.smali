.class Lcom/nianticlabs/nia/location/FusedLocationProvider$4;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


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
    .line 214
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

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

    .line 222
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    invoke-static {v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$400(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    move-result-object v0

    .line 223
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_b

    .line 224
    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderLocation(Landroid/location/Location;)V

    .line 226
    :cond_b
    return-void

    :catch_d
    move-exception v0

    goto :goto_7
.end method
