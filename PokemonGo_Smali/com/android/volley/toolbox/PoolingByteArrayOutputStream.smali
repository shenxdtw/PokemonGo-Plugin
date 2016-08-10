.class public Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .prologue
    .line 40
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V
    .registers 5
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;
    .param p2, "size"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 53
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 54
    return-void
.end method

.method private expand(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 73
    iget v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 80
    :goto_9
    return-void

    .line 76
    :cond_a
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 77
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 79
    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 60
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 61
    return-void
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 66
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .param p1, "oneByte"    # I

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 91
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
