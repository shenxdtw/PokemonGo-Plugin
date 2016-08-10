.class public Lcom/mopub/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/mopub/volley/RequestQueue;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/mopub/volley/toolbox/HttpStack;)Lcom/mopub/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/mopub/volley/toolbox/HttpStack;)Lcom/mopub/volley/RequestQueue;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/mopub/volley/toolbox/HttpStack;

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v0, "cacheDir":Ljava/io/File;
    const-string v5, "volley/0"

    .line 47
    .local v5, "userAgent":Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_32} :catch_5d

    move-result-object v5

    .line 53
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_33
    if-nez p1, :cond_40

    .line 54
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_53

    .line 55
    new-instance p1, Lcom/mopub/volley/toolbox/HurlStack;

    .end local p1    # "stack":Lcom/mopub/volley/toolbox/HttpStack;
    invoke-direct {p1}, Lcom/mopub/volley/toolbox/HurlStack;-><init>()V

    .line 63
    .restart local p1    # "stack":Lcom/mopub/volley/toolbox/HttpStack;
    :cond_40
    :goto_40
    new-instance v2, Lcom/mopub/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/HttpStack;)V

    .line 65
    .local v2, "network":Lcom/mopub/volley/Network;
    new-instance v4, Lcom/mopub/volley/RequestQueue;

    new-instance v6, Lcom/mopub/volley/toolbox/DiskBasedCache;

    invoke-direct {v6, v0}, Lcom/mopub/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V

    .line 66
    .local v4, "queue":Lcom/mopub/volley/RequestQueue;
    invoke-virtual {v4}, Lcom/mopub/volley/RequestQueue;->start()V

    .line 68
    return-object v4

    .line 59
    .end local v2    # "network":Lcom/mopub/volley/Network;
    .end local v4    # "queue":Lcom/mopub/volley/RequestQueue;
    :cond_53
    new-instance p1, Lcom/mopub/volley/toolbox/HttpClientStack;

    .end local p1    # "stack":Lcom/mopub/volley/toolbox/HttpStack;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/mopub/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p1    # "stack":Lcom/mopub/volley/toolbox/HttpStack;
    goto :goto_40

    .line 50
    :catch_5d
    move-exception v6

    goto :goto_33
.end method
