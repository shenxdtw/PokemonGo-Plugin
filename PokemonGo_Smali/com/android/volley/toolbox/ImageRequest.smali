.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_IMAGE_BACKOFF_MULT:F = 2.0f

.field public static final DEFAULT_IMAGE_MAX_RETRIES:I = 0x2

.field public static final DEFAULT_IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p6, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p7, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 75
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 77
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 78
    iput-object p6, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 80
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 81
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 82
    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 15
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 171
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 172
    .local v3, "data":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 174
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v8, :cond_27

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v8, :cond_27

    .line 175
    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 176
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    :goto_1b
    if-nez v2, :cond_6a

    .line 211
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    .line 213
    :goto_26
    return-object v8

    .line 179
    :cond_27
    iput-boolean v12, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    .local v0, "actualHeight":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget-object v10, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v1, v0, v10}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 187
    .local v6, "desiredWidth":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget-object v10, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 191
    .local v5, "desiredHeight":I
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 200
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_68

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_60

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_68

    .line 202
    :cond_60
    invoke-static {v7, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1b

    .line 206
    :cond_68
    move-object v2, v7

    goto :goto_1b

    .line 213
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_6a
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    goto :goto_26
.end method

.method static findBestSampleSize(IIII)I
    .registers 16
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 234
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 235
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 236
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 237
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    .local v2, "n":F
    :goto_e
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_1a

    .line 239
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_e

    .line 242
    :cond_1a
    float-to-int v3, v2

    return v3
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 13
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 115
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    .line 151
    .end local p2    # "actualPrimary":I
    :cond_4
    :goto_4
    return p2

    .line 120
    .restart local p2    # "actualPrimary":I
    :cond_5
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_d

    .line 121
    if-eqz p0, :cond_4

    move p2, p0

    .line 124
    goto :goto_4

    .line 128
    :cond_d
    if-nez p0, :cond_17

    .line 129
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 130
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_4

    .line 133
    .end local v0    # "ratio":D
    :cond_17
    if-nez p1, :cond_1b

    move p2, p0

    .line 134
    goto :goto_4

    .line 137
    :cond_1b
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 138
    .restart local v0    # "ratio":D
    move v2, p0

    .line 141
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_30

    .line 142
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2e

    .line 143
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_2e
    move p2, v2

    .line 145
    goto :goto_4

    .line 148
    :cond_30
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3a

    .line 149
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_3a
    move p2, v2

    .line 151
    goto :goto_4
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 8
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v2, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result-object v1

    :try_start_7
    monitor-exit v2

    .line 162
    :goto_8
    return-object v1

    .line 160
    :catch_9
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    monitor-exit v2

    goto :goto_8

    .line 164
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method
