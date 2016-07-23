.class Lcrittercism/android/bx$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$g;->a:Lorg/json/JSONObject;

    .line 573
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    .line 574
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    .line 576
    invoke-static {p1}, Lcrittercism/android/bx$g;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$g;->a:Lorg/json/JSONObject;

    .line 577
    return-void
.end method

.method private static a(I)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 580
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/bf;->c:Z

    if-nez v0, :cond_d

    move-object v0, v1

    .line 624
    :cond_c
    :goto_c
    return-object v0

    .line 584
    :cond_d
    invoke-static {p0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_15

    move-object v0, v1

    .line 585
    goto :goto_c

    .line 588
    :cond_15
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 589
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 590
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 597
    if-eqz v4, :cond_6c

    .line 598
    :try_start_2c
    const-string v5, "available"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 599
    const-string v5, "connected"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 600
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 602
    const-string v5, "connecting"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 604
    :cond_4d
    const-string v5, "failover"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 605
    if-nez p0, :cond_6a

    :goto_58
    if-eqz v2, :cond_c

    .line 606
    const-string v2, "roaming"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_63} :catch_64

    goto :goto_c

    .line 619
    :catch_64
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->c()V

    move-object v0, v1

    .line 620
    goto :goto_c

    :cond_6a
    move v2, v3

    .line 605
    goto :goto_58

    .line 610
    :cond_6c
    :try_start_6c
    const-string v4, "available"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 611
    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 612
    const-string v4, "connecting"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 613
    const-string v4, "failover"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 614
    if-nez p0, :cond_90

    :goto_86
    if-eqz v2, :cond_c

    .line 615
    const-string v2, "roaming"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_8e} :catch_64

    goto/16 :goto_c

    :cond_90
    move v2, v3

    .line 614
    goto :goto_86
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lcrittercism/android/bx$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcrittercism/android/bx$g;->a:Lorg/json/JSONObject;

    return-object v0
.end method
