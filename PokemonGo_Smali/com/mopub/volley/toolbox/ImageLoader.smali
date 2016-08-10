.class public Lcom/mopub/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;,
        Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/mopub/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/RequestQueue;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V
    .registers 5
    .param p1, "queue"    # Lcom/mopub/volley/RequestQueue;
    .param p2, "imageCache"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    .line 86
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mCache:Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .registers 7
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1a

    .line 438
    new-instance v0, Lcom/mopub/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$4;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 463
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    :cond_1a
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "defaultImageResId"    # I
    .param p2, "errorImageResId"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/mopub/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/mopub/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private throwIfNotOnMainThread()V
    .registers 3

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_12
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .registers 4
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .registers 16
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 190
    invoke-static {p1, p3, p4}, Lcom/mopub/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mCache:Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v7}, Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    .local v2, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1e

    .line 196
    new-instance v0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V

    .line 197
    .local v0, "container":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object v3, v0

    .line 223
    .end local v0    # "container":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    :goto_1d
    return-object v3

    .line 202
    :cond_1e
    new-instance v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V

    .line 206
    .local v3, "imageContainer":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v1, 0x1

    invoke-interface {p2, v3, v1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 209
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 210
    .local v10, "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v10, :cond_39

    .line 212
    invoke-virtual {v10, v3}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_1d

    .line 218
    :cond_39
    invoke-virtual {p0, p1, p3, p4, v7}, Lcom/mopub/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILjava/lang/String;)Lcom/mopub/volley/Request;

    move-result-object v9

    .line 220
    .local v9, "newRequest":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v9}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 221
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v4, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v4, p0, v9, v3}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;Lcom/mopub/volley/Request;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d
.end method

.method public isCached(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 155
    invoke-static {p1, p2, p3}, Lcom/mopub/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mCache:Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected makeImageRequest(Ljava/lang/String;IILjava/lang/String;)Lcom/mopub/volley/Request;
    .registers 12
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/mopub/volley/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/mopub/volley/toolbox/ImageRequest;

    new-instance v2, Lcom/mopub/volley/toolbox/ImageLoader$2;

    invoke-direct {v2, p0, p4}, Lcom/mopub/volley/toolbox/ImageLoader$2;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/mopub/volley/toolbox/ImageLoader$3;

    invoke-direct {v6, p0, p4}, Lcom/mopub/volley/toolbox/ImageLoader$3;-><init>(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/mopub/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method protected onGetImageError(Ljava/lang/String;Lcom/mopub/volley/VolleyError;)V
    .registers 5
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 280
    .local v0, "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v0, :cond_10

    .line 282
    invoke-virtual {v0, p2}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/mopub/volley/VolleyError;)V

    .line 285
    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 287
    :cond_10
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mCache:Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, p1, p2}, Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 260
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 262
    .local v0, "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v0, :cond_15

    .line 264
    # setter for: Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->access$002(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 269
    :cond_15
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .registers 2
    .param p1, "newBatchedResponseDelayMs"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/mopub/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 248
    return-void
.end method
