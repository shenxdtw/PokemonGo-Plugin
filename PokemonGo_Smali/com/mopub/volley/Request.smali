.class public abstract Lcom/mopub/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/Request$Priority;,
        Lcom/mopub/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mopub/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final SLOW_REQUEST_THRESHOLD_MS:J = 0xbb8L


# instance fields
.field private mCacheEntry:Lcom/mopub/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private final mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

.field private final mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

.field private final mMethod:I

.field private mRequestBirthTime:J

.field private mRequestQueue:Lcom/mopub/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 8
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mopub/volley/Response$ErrorListener;

    .prologue
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_32

    new-instance v0, Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/mopub/volley/VolleyLog$MarkerLog;-><init>()V

    :goto_e
    iput-object v0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    .line 88
    iput-boolean v2, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    .line 91
    iput-boolean v2, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mopub/volley/Request;->mRequestBirthTime:J

    .line 107
    iput-object v1, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    .line 132
    iput p1, p0, Lcom/mopub/volley/Request;->mMethod:I

    .line 133
    iput-object p2, p0, Lcom/mopub/volley/Request;->mUrl:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    .line 135
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mopub/volley/Request;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 137
    invoke-static {p2}, Lcom/mopub/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/volley/Request;->mDefaultTrafficStatsTag:I

    .line 138
    return-void

    :cond_32
    move-object v0, v1

    .line 61
    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mopub/volley/Response$ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/Request;)Lcom/mopub/volley/VolleyLog$MarkerLog;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/Request;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 10
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 461
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_d

    .line 467
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_3e
    move-exception v3

    .line 468
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 466
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_58
    :try_start_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_5f} :catch_3e

    move-result-object v4

    return-object v4
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 185
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_17

    .line 187
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 193
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 210
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    sget-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_12

    .line 211
    iget-object v0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/mopub/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 215
    :cond_11
    :goto_11
    return-void

    .line 212
    :cond_12
    iget-wide v0, p0, Lcom/mopub/volley/Request;->mRequestBirthTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/volley/Request;->mRequestBirthTime:J

    goto :goto_11
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 319
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    .line 320
    return-void
.end method

.method public compareTo(Lcom/mopub/volley/Request;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    .local p1, "other":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v0

    .line 588
    .local v0, "left":Lcom/mopub/volley/Request$Priority;
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v1

    .line 592
    .local v1, "right":Lcom/mopub/volley/Request$Priority;
    if-ne v0, v1, :cond_18

    iget-object v2, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_17
    return v2

    :cond_18
    invoke-virtual {v1}, Lcom/mopub/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/mopub/volley/Request$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    check-cast p1, Lcom/mopub/volley/Request;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mopub/volley/Request;->compareTo(Lcom/mopub/volley/Request;)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/mopub/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 576
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/mopub/volley/Response$ErrorListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    .line 579
    :cond_9
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 223
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v1, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    if-eqz v1, :cond_9

    .line 224
    iget-object v1, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, p0}, Lcom/mopub/volley/RequestQueue;->finish(Lcom/mopub/volley/Request;)V

    .line 226
    :cond_9
    sget-boolean v1, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v1, :cond_40

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 228
    .local v4, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v1, v6, :cond_31

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    .local v0, "mainThread":Landroid/os/Handler;
    new-instance v1, Lcom/mopub/volley/Request$1;

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/mopub/volley/Request$1;-><init>(Lcom/mopub/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    .end local v0    # "mainThread":Landroid/os/Handler;
    .end local v4    # "threadId":J
    :cond_30
    :goto_30
    return-void

    .line 242
    .restart local v4    # "threadId":J
    :cond_31
    iget-object v1, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-virtual {v1, p1, v4, v5}, Lcom/mopub/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 243
    iget-object v1, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mopub/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_30

    .line 245
    .end local v4    # "threadId":J
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mopub/volley/Request;->mRequestBirthTime:J

    sub-long v2, v6, v8

    .line 246
    .local v2, "requestTime":J
    const-wide/16 v6, 0xbb8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_30

    .line 247
    const-string v1, "%d ms: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30
.end method

.method public getBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 448
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 449
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 451
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 434
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/mopub/volley/Cache$Entry;
    .registers 2

    .prologue
    .line 312
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lcom/mopub/volley/Response$ErrorListener;
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 144
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget v0, p0, Lcom/mopub/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 396
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 397
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 399
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/mopub/volley/Request$Priority;
    .registers 2

    .prologue
    .line 504
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    sget-object v0, Lcom/mopub/volley/Request$Priority;->NORMAL:Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/mopub/volley/RetryPolicy;
    .registers 2

    .prologue
    .line 520
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .registers 3

    .prologue
    .line 277
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_c

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_c
    iget-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 163
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .registers 2

    .prologue
    .line 513
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

    invoke-interface {v0}, Lcom/mopub/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .registers 2

    .prologue
    .line 177
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget v0, p0, Lcom/mopub/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/mopub/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .registers 2

    .prologue
    .line 535
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 326
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    return v0
.end method

.method public markDelivered()V
    .registers 2

    .prologue
    .line 528
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    .line 529
    return-void
.end method

.method protected parseNetworkError(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/VolleyError;
    .registers 2
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 557
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;
    .registers 2
    .param p1, "entry"    # Lcom/mopub/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Cache$Entry;",
            ")",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    .line 305
    return-object p0
.end method

.method public setRequestQueue(Lcom/mopub/volley/RequestQueue;)Lcom/mopub/volley/Request;
    .registers 2
    .param p1, "requestQueue"    # Lcom/mopub/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/RequestQueue;",
            ")",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    .line 260
    return-object p0
.end method

.method public setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;
    .registers 2
    .param p1, "retryPolicy"    # Lcom/mopub/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/RetryPolicy;",
            ")",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/mopub/volley/Request;->mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

    .line 203
    return-object p0
.end method

.method public final setSequence(I)Lcom/mopub/volley/Request;
    .registers 3
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 270
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/mopub/volley/Request;
    .registers 2
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    .line 479
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/mopub/volley/Request;->mTag:Ljava/lang/Object;

    .line 155
    return-object p0
.end method

.method public final shouldCache()Z
    .registers 2

    .prologue
    .line 486
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 599
    .local p0, "this":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    if-eqz v1, :cond_5b

    const-string v1, "[X] "

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5b
    const-string v1, "[ ] "

    goto :goto_26
.end method
