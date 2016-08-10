.class public Lcom/mopub/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/NetworkImageView;

    .prologue
    .line 32
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .registers 2
    .param p0, "x0"    # Lcom/mopub/volley/toolbox/NetworkImageView;

    .prologue
    .line 32
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private setDefaultImageOrNull()V
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_a

    .line 188
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 193
    :goto_9
    return-void

    .line 191
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 217
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->invalidate()V

    .line 218
    return-void
.end method

.method loadImageIfNecessary(Z)V
    .registers 14
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v11, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v5

    .line 105
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v0

    .line 107
    .local v0, "height":I
    const/4 v7, 0x0

    .local v7, "wrapWidth":Z
    const/4 v6, 0x0

    .line 108
    .local v6, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_25

    .line 109
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v10, v11, :cond_31

    move v7, v8

    .line 110
    :goto_1c
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v11, :cond_33

    move v6, v8

    .line 115
    :cond_25
    :goto_25
    if-eqz v7, :cond_35

    if-eqz v6, :cond_35

    move v1, v8

    .line 116
    .local v1, "isFullyWrapContent":Z
    :goto_2a
    if-nez v5, :cond_37

    if-nez v0, :cond_37

    if-nez v1, :cond_37

    .line 184
    :cond_30
    :goto_30
    return-void

    .end local v1    # "isFullyWrapContent":Z
    :cond_31
    move v7, v9

    .line 109
    goto :goto_1c

    :cond_33
    move v6, v9

    .line 110
    goto :goto_25

    :cond_35
    move v1, v9

    .line 115
    goto :goto_2a

    .line 122
    .restart local v1    # "isFullyWrapContent":Z
    :cond_37
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 123
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v8, :cond_4b

    .line 124
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v8}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 125
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 127
    :cond_4b
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_30

    .line 132
    :cond_4f
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v8, :cond_71

    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v8}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    .line 133
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v8}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 138
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v8}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 139
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 144
    :cond_71
    if-eqz v7, :cond_87

    move v3, v9

    .line 145
    .local v3, "maxWidth":I
    :goto_74
    if-eqz v6, :cond_89

    move v2, v9

    .line 149
    .local v2, "maxHeight":I
    :goto_77
    iget-object v8, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    iget-object v9, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v10, Lcom/mopub/volley/toolbox/NetworkImageView$1;

    invoke-direct {v10, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$1;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual {v8, v9, v10, v3, v2}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v4

    .line 183
    .local v4, "newContainer":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v4, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_30

    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "newContainer":Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    :cond_87
    move v3, v5

    .line 144
    goto :goto_74

    .restart local v3    # "maxWidth":I
    :cond_89
    move v2, v0

    .line 145
    goto :goto_77
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 207
    invoke-virtual {p0, v1}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iput-object v1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 211
    :cond_f
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 212
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 197
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 199
    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 2
    .param p1, "defaultImage"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 89
    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 2
    .param p1, "errorImage"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 97
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/mopub/volley/toolbox/ImageLoader;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 81
    return-void
.end method
