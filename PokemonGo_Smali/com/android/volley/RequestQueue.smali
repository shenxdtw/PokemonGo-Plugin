.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFilter;,
        Lcom/android/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/android/volley/NetworkDispatcher;

.field private mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
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
            "Lcom/android/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .registers 4
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;

    .prologue
    .line 135
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .registers 7
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "threadPoolSize"    # I

    .prologue
    .line 124
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .registers 6
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 76
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    .line 111
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    .line 112
    new-array v0, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    .line 113
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 114
    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 230
    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    .line 231
    :try_start_6
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 235
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

    .line 236
    const-string v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-nez v2, :cond_27

    .line 240
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_23
    return-object p1

    .line 232
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 245
    :cond_27
    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 246
    :try_start_2a
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 249
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 250
    .local v1, "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    if-nez v1, :cond_45

    .line 251
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 253
    .restart local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_45
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 256
    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_5c
    :goto_5c
    monitor-exit v3

    goto :goto_23

    .line 265
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catchall_5e
    move-exception v2

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_5e

    throw v2

    .line 261
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_5e

    goto :goto_5c
.end method

.method public addRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    .line 305
    :try_start_3
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .registers 6
    .param p1, "filter"    # Lcom/android/volley/RequestQueue$RequestFilter;

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    .line 198
    :try_start_3
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

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

    check-cast v1, Lcom/android/volley/Request;

    .line 199
    .local v1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-interface {p1, v1}, Lcom/android/volley/RequestQueue$RequestFilter;->apply(Lcom/android/volley/Request;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 200
    invoke-virtual {v1}, Lcom/android/volley/Request;->cancel()V

    goto :goto_9

    .line 203
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
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

    .line 204
    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 211
    if-nez p1, :cond_a

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_a
    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 220
    return-void
.end method

.method finish(Lcom/android/volley/Request;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v5

    .line 278
    :try_start_3
    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 280
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v5

    .line 281
    :try_start_c
    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 282
    .local v2, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/android/volley/Request;)V

    goto :goto_12

    .line 284
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v4

    .line 279
    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v4

    .line 284
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    .line 286
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 287
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v5

    .line 288
    :try_start_32
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    .line 290
    .local v3, "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    if-eqz v3, :cond_5f

    .line 291
    sget-boolean v4, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 292
    const-string v4, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_5a
    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_5f
    monitor-exit v5

    .line 301
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v3    # "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_60
    return-void

    .line 299
    :catchall_61
    move-exception v4

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_32 .. :try_end_63} :catchall_61

    throw v4
.end method

.method public getCache()Lcom/android/volley/Cache;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    .line 314
    :try_start_3
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public start()V
    .registers 8

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 144
    new-instance v2, Lcom/android/volley/CacheDispatcher;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v6, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    .line 145
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v2}, Lcom/android/volley/CacheDispatcher;->start()V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v2, v2

    if-ge v0, v2, :cond_34

    .line 149
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    .line 151
    .local v1, "networkDispatcher":Lcom/android/volley/NetworkDispatcher;
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 152
    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 154
    .end local v1    # "networkDispatcher":Lcom/android/volley/NetworkDispatcher;
    :cond_34
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    if-eqz v1, :cond_9

    .line 161
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v1}, Lcom/android/volley/CacheDispatcher;->quit()V

    .line 163
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 164
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    .line 165
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->quit()V

    .line 163
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 168
    :cond_1f
    return-void
.end method
