.class public Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 6
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 316
    iput-object p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 317
    iput-object p4, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 318
    iput-object p5, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .line 319
    return-void
.end method

.method static synthetic access$400(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .registers 5

    .prologue
    .line 325
    iget-object v2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    if-nez v2, :cond_5

    .line 345
    :cond_4
    :goto_4
    return-void

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mopub/volley/toolbox/ImageLoader;->access$100(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 330
    .local v1, "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v1, :cond_27

    .line 331
    invoke-virtual {v1, p0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    .line 332
    .local v0, "canceled":Z
    if-eqz v0, :cond_4

    .line 333
    iget-object v2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mopub/volley/toolbox/ImageLoader;->access$100(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 337
    .end local v0    # "canceled":Z
    :cond_27
    iget-object v2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    check-cast v1, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 338
    .restart local v1    # "request":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v1, :cond_4

    .line 339
    invoke-virtual {v1, p0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 340
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 341
    iget-object v2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
