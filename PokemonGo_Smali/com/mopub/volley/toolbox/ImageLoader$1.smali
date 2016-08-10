.class final Lcom/mopub/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultImageResId:I

.field final synthetic val$errorImageResId:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    .prologue
    .line 99
    iput p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 102
    iget v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :cond_b
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5
    .param p1, "response"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 110
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :cond_f
    :goto_f
    return-void

    .line 111
    :cond_10
    iget v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    if-eqz v0, :cond_f

    .line 112
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f
.end method
