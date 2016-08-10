.class Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private bytesRead:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 452
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/android/volley/toolbox/DiskBasedCache$1;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    .prologue
    .line 448
    iget v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return v0
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 458
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 459
    iget v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 461
    :cond_d
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 467
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 468
    iget v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    .line 470
    :cond_c
    return v0
.end method
