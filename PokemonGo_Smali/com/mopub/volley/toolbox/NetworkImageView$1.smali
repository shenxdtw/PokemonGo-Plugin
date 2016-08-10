.class Lcom/mopub/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    # getter for: Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->access$000(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    # getter for: Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->access$000(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 156
    :cond_13
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5
    .param p1, "response"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 164
    if-eqz p2, :cond_11

    iget-boolean v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView$1;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_10
    :goto_10
    return-void

    .line 174
    :cond_11
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 175
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    .line 176
    :cond_21
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    # getter for: Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->access$100(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 177
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->this$0:Lcom/mopub/volley/toolbox/NetworkImageView;

    # getter for: Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->access$100(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_10
.end method
