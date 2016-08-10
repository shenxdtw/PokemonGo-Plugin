.class Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/mopub/volley/VolleyError;

.field private final mRequest:Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Lcom/mopub/volley/Request;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 5
    .param p3, "container"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    .line 385
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/mopub/volley/Request;

    .line 386
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public getError()Lcom/mopub/volley/VolleyError;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/mopub/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3
    .param p1, "container"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 420
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setError(Lcom/mopub/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/mopub/volley/VolleyError;

    .line 394
    return-void
.end method
