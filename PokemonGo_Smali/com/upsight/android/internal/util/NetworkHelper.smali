.class public final Lcom/upsight/android/internal/util/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field public static final NETWORK_OPERATOR_NONE:Ljava/lang/String; = "none"

.field public static final NETWORK_TYPE_NONE:Ljava/lang/String; = "no_network"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v2, "no_network"

    .line 52
    .local v2, "type":Ljava/lang/String;
    :try_start_2
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_23

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 55
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 56
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "typeName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1f} :catch_24

    move-result v4

    if-nez v4, :cond_23

    .line 58
    move-object v2, v3

    .line 65
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_23
    :goto_23
    return-object v2

    .line 62
    :catch_24
    move-exception v4

    goto :goto_23
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "none"

    .line 79
    .local v0, "operator":Ljava/lang/String;
    :try_start_2
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 80
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_17

    .line 81
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "operatorName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_13} :catch_18

    move-result v3

    if-nez v3, :cond_17

    .line 83
    move-object v0, v1

    .line 89
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_17
    :goto_17
    return-object v0

    .line 86
    :catch_18
    move-exception v3

    goto :goto_17
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "isConnected":Z
    :try_start_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 33
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 34
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_14} :catch_1b

    move-result v3

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    .line 39
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_18
    :goto_18
    return v1

    .line 34
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    .line 36
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_1b
    move-exception v3

    goto :goto_18
.end method
