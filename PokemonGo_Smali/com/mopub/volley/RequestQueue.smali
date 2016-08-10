.class public Lcom/mopub/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/RequestQueue$RequestFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/mopub/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

.field private final mNetwork:Lcom/mopub/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/mopub/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V
    .registers 4
    .param p1, "cache"    # Lcom/mopub/volley/Cache;
    .param p2, "network"    # Lcom/mopub/volley/Network;

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V
    .registers 7
    .param p1, "cache"    # Lcom/mopub/volley/Cache;
    .param p2, "network"    # Lcom/mopub/volley/Network;
    .param p3, "threadPoolSize"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/mopub/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/mopub/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V
    .registers 6
    .param p1, "cache"    # Lcom/mopub/volley/Cache;
    .param p2, "network"    # Lcom/mopub/volley/Network;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/mopub/volley/ResponseDelivery;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    iput-object p1, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    .line 100
    iput-object p2, p0, Lcom/mopub/volley/RequestQueue;->mNetwork:Lcom/mopub/volley/Network;

    .line 101
    new-array v0, p3, [Lcom/mopub/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    .line 102
    iput-object p4, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    .line 103
    return-void
.end method


# virtual methods
.method public add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mopub/volley/Request",
            "<TT;>;)",
            "Lcom/mopub/volley/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p1, p0}, Lcom/mopub/volley/Request;->setRequestQueue(Lcom/mopub/volley/RequestQueue;)Lcom/mopub/volley/Request;

    .line 219
    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    .line 220
    :try_start_6
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 224
    invoke-virtual {p0}, Lcom/mopub/volley/RequestQueue;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->setSequence(I)Lcom/mopub/volley/Request;

    .line 225
    const-string v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v2

    if-nez v2, :cond_27

    .line 229
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_23
    return-object p1

    .line 221
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 234
    :cond_27
    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 235
    :try_start_2a
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 238
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 239
    .local v1, "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    if-nez v1, :cond_45

    .line 240
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 242
    .restart local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    :cond_45
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-boolean v2, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 245
    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    :cond_5c
    :goto_5c
    monitor-exit v3

    goto :goto_23

    .line 254
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catchall_5e
    move-exception v2

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_5e

    throw v2

    .line 250
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_5e

    goto :goto_5c
.end method

.method public cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V
    .registers 6
    .param p1, "filter"    # Lcom/mopub/volley/RequestQueue$RequestFilter;

    .prologue
    .line 186
    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    .line 187
    :try_start_3
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/Request;

    .line 188
    .local v1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    invoke-interface {p1, v1}, Lcom/mopub/volley/RequestQueue$RequestFilter;->apply(Lcom/mopub/volley/Request;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 189
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->cancel()V

    goto :goto_9

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_22
    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 193
    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 200
    if-nez p1, :cond_a

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_a
    new-instance v0, Lcom/mopub/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/volley/RequestQueue$1;-><init>(Lcom/mopub/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/mopub/volley/RequestQueue;->cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V

    .line 209
    return-void
.end method

.method finish(Lcom/mopub/volley/Request;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    .line 267
    :try_start_3
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_41

    .line 270
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 271
    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 272
    :try_start_12
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 274
    .local v1, "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    if-eqz v1, :cond_3f

    .line 275
    sget-boolean v2, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 276
    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_3a
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 283
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_44

    .line 285
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/mopub/volley/Request<*>;>;"
    :cond_40
    return-void

    .line 268
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2

    .line 283
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public getCache()Lcom/mopub/volley/Cache;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 8

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/mopub/volley/RequestQueue;->stop()V

    .line 133
    new-instance v2, Lcom/mopub/volley/CacheDispatcher;

    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    iget-object v6, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mopub/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V

    iput-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    .line 134
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    invoke-virtual {v2}, Lcom/mopub/volley/CacheDispatcher;->start()V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    array-length v2, v2

    if-ge v0, v2, :cond_34

    .line 138
    new-instance v1, Lcom/mopub/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mNetwork:Lcom/mopub/volley/Network;

    iget-object v4, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    iget-object v5, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mopub/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V

    .line 140
    .local v1, "networkDispatcher":Lcom/mopub/volley/NetworkDispatcher;
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 141
    invoke-virtual {v1}, Lcom/mopub/volley/NetworkDispatcher;->start()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 143
    .end local v1    # "networkDispatcher":Lcom/mopub/volley/NetworkDispatcher;
    :cond_34
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    if-eqz v1, :cond_9

    .line 150
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    invoke-virtual {v1}, Lcom/mopub/volley/CacheDispatcher;->quit()V

    .line 152
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 153
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    .line 154
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mopub/volley/NetworkDispatcher;->quit()V

    .line 152
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 157
    :cond_1f
    return-void
.end method
