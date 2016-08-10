.class Lcom/mopub/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$4;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 441
    iget-object v4, p0, Lcom/mopub/volley/toolbox/ImageLoader$4;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 442
    .local v0, "bir":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 446
    .local v1, "container":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 449
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/mopub/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 450
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->access$000(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->access$502(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 451
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_22

    .line 453
    :cond_4a
    # getter for: Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/mopub/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_22

    .line 457
    .end local v0    # "bir":Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    .end local v1    # "container":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_56
    iget-object v4, p0, Lcom/mopub/volley/toolbox/ImageLoader$4;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    # getter for: Lcom/mopub/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 458
    iget-object v4, p0, Lcom/mopub/volley/toolbox/ImageLoader$4;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    const/4 v5, 0x0

    # setter for: Lcom/mopub/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/mopub/volley/toolbox/ImageLoader;->access$602(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 459
    return-void
.end method
