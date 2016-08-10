.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.super Ljava/lang/Object;
.source "BatchSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    }
.end annotation


# instance fields
.field private mBatchSendExecutor:Lrx/Scheduler;

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

.field private mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

.field private mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

.field private mJsonParser:Lcom/google/gson/JsonParser;

.field private mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

.field private mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

.field private mRetryExecutor:Lrx/Scheduler;

.field private mTryCounts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;Lcom/google/gson/JsonParser;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 11
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    .param p3, "retryExecutor"    # Lrx/Scheduler;
    .param p4, "sendExecutor"    # Lrx/Scheduler;
    .param p5, "endpoint"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    .param p6, "responseParser"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
    .param p7, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p8, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p9, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 148
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    .line 149
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 150
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mRetryExecutor:Lrx/Scheduler;

    .line 151
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 153
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mBatchSendExecutor:Lrx/Scheduler;

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    .line 157
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 159
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    .line 160
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 161
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p2, "x2"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/google/gson/JsonParser;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mJsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/session/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Ljava/util/Collection;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyResponseListener(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendSucceeded(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    return-void
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method private notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V
    .registers 5
    .param p1, "batch"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 176
    :try_start_5
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    if-eqz v1, :cond_2a

    .line 177
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 178
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    invoke-interface {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;->onDelivery(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    goto :goto_11

    .line 182
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :catchall_23
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_2a
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    return-void
.end method

.method private notifyResponseListener(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/dispatcher/EndpointResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "responses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 198
    :try_start_5
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    if-eqz v1, :cond_26

    .line 199
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .line 200
    .local v0, "response":Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    invoke-interface {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;->onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    goto :goto_d

    .line 204
    .end local v0    # "response":Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_26
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    return-void
.end method

.method private sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    .registers 11
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p2, "failReason"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 243
    .local v1, "tryCount":Ljava/lang/Integer;
    if-nez v1, :cond_12

    .line 244
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 247
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_47

    .line 248
    sget-object v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    if-ne p2, v2, :cond_22

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget-boolean v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->countNetworkFail:Z

    if-eqz v2, :cond_2c

    .line 249
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 251
    :cond_2c
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mRetryExecutor:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$2;

    invoke-direct {v3, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget v4, v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 266
    :goto_46
    return-void

    .line 260
    :cond_47
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 262
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v0, p3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->failAndRoute(Ljava/lang/String;)V

    goto :goto_56

    .line 264
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :cond_66
    iget-object v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V

    goto :goto_46
.end method

.method private sendSucceeded(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .registers 5
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 229
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->markDelivered()V

    goto :goto_f

    .line 232
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :cond_1f
    iget-object v1, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V

    .line 233
    return-void
.end method


# virtual methods
.method public setDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;)V
    .registers 4
    .param p1, "deliveryListener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 167
    :try_start_5
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    return-void

    .line 169
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setResponseListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;)V
    .registers 4
    .param p1, "responseListener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_5
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    return-void

    .line 191
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public submitRequest(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .registers 4
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mBatchSendExecutor:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 220
    return-void
.end method
