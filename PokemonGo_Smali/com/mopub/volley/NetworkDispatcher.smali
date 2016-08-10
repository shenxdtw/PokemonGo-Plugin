.class public Lcom/mopub/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private final mDelivery:Lcom/mopub/volley/ResponseDelivery;

.field private final mNetwork:Lcom/mopub/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .registers 6
    .param p2, "network"    # Lcom/mopub/volley/Network;
    .param p3, "cache"    # Lcom/mopub/volley/Cache;
    .param p4, "delivery"    # Lcom/mopub/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;",
            "Lcom/mopub/volley/Network;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/mopub/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    .line 59
    iput-object p1, p0, Lcom/mopub/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    iput-object p2, p0, Lcom/mopub/volley/NetworkDispatcher;->mNetwork:Lcom/mopub/volley/Network;

    .line 61
    iput-object p3, p0, Lcom/mopub/volley/NetworkDispatcher;->mCache:Lcom/mopub/volley/Cache;

    .line 62
    iput-object p4, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    .line 63
    return-void
.end method

.method private addTrafficStatsTag(Lcom/mopub/volley/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 78
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 80
    :cond_d
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V
    .registers 4
    .param p2, "error"    # Lcom/mopub/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/mopub/volley/Request;->parseNetworkError(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/VolleyError;

    move-result-object p2

    .line 150
    iget-object v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 151
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    .line 71
    invoke-virtual {p0}, Lcom/mopub/volley/NetworkDispatcher;->interrupt()V

    .line 72
    return-void
.end method

.method public run()V
    .registers 12

    .prologue
    .line 84
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 86
    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 90
    .local v4, "startTimeMs":J
    :try_start_9
    iget-object v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/Request;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_11} :catch_2f

    .line 100
    .local v2, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    :try_start_11
    const-string v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 105
    const-string v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/mopub/volley/VolleyError; {:try_start_11 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_53

    goto :goto_5

    .line 136
    :catch_22
    move-exception v6

    .line 137
    .local v6, "volleyError":Lcom/mopub/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/mopub/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 138
    invoke-direct {p0, v2, v6}, Lcom/mopub/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto :goto_5

    .line 91
    .end local v2    # "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    .end local v6    # "volleyError":Lcom/mopub/volley/VolleyError;
    :catch_2f
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v7, :cond_5

    .line 94
    return-void

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    :cond_35
    :try_start_35
    invoke-direct {p0, v2}, Lcom/mopub/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/mopub/volley/Request;)V

    .line 112
    iget-object v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mNetwork:Lcom/mopub/volley/Network;

    invoke-interface {v7, v2}, Lcom/mopub/volley/Network;->performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;

    move-result-object v1

    .line 113
    .local v1, "networkResponse":Lcom/mopub/volley/NetworkResponse;
    const-string v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 117
    iget-boolean v7, v1, Lcom/mopub/volley/NetworkResponse;->notModified:Z

    if-eqz v7, :cond_76

    invoke-virtual {v2}, Lcom/mopub/volley/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 118
    const-string v7, "not-modified"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_52
    .catch Lcom/mopub/volley/VolleyError; {:try_start_35 .. :try_end_52} :catch_22
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_52} :catch_53

    goto :goto_5

    .line 139
    .end local v1    # "networkResponse":Lcom/mopub/volley/NetworkResponse;
    :catch_53
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v6, Lcom/mopub/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 142
    .restart local v6    # "volleyError":Lcom/mopub/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/mopub/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 143
    iget-object v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v7, v2, v6}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto :goto_5

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "volleyError":Lcom/mopub/volley/VolleyError;
    .restart local v1    # "networkResponse":Lcom/mopub/volley/NetworkResponse;
    :cond_76
    :try_start_76
    invoke-virtual {v2, v1}, Lcom/mopub/volley/Request;->parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v3

    .line 124
    .local v3, "response":Lcom/mopub/volley/Response;, "Lcom/mopub/volley/Response<*>;"
    const-string v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_99

    iget-object v7, v3, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    if-eqz v7, :cond_99

    .line 129
    iget-object v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mCache:Lcom/mopub/volley/Cache;

    invoke-virtual {v2}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    invoke-interface {v7, v8, v9}, Lcom/mopub/volley/Cache;->put(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V

    .line 130
    const-string v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 134
    :cond_99
    invoke-virtual {v2}, Lcom/mopub/volley/Request;->markDelivered()V

    .line 135
    iget-object v7, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v7, v2, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    :try_end_a1
    .catch Lcom/mopub/volley/VolleyError; {:try_start_76 .. :try_end_a1} :catch_22
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a1} :catch_53

    goto/16 :goto_5
.end method
