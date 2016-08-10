.class public Lcom/upsight/mediation/vast/util/NetworkTools;
.super Ljava/lang/Object;
.source "NetworkTools.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/upsight/mediation/vast/util/HttpTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/mediation/vast/util/NetworkTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectedToInternet(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 21
    const-string v6, "connectivity"

    .line 22
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 25
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 26
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 44
    :cond_16
    :goto_16
    return v4

    .line 32
    :cond_17
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 33
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_16

    .line 38
    :cond_23
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_16

    :cond_2f
    move v4, v5

    .line 44
    goto :goto_16
.end method
