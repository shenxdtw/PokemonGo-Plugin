.class Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/mopub/volley/Cache$Entry;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 370
    iget-object v0, p2, Lcom/mopub/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 371
    iget-object v0, p2, Lcom/mopub/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 372
    iget-wide v0, p2, Lcom/mopub/volley/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 373
    iget-wide v0, p2, Lcom/mopub/volley/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 374
    iget-wide v0, p2, Lcom/mopub/volley/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 375
    iget-object v0, p2, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    .line 376
    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    .line 385
    .local v0, "entry":Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 386
    .local v1, "magic":I
    const v2, 0x20140623

    if-eq v1, v2, :cond_14

    .line 388
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 390
    :cond_14
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 391
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 392
    iget-object v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 393
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 395
    :cond_2d
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 396
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 397
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 398
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    .line 399
    return-object v0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/mopub/volley/Cache$Entry;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 406
    new-instance v0, Lcom/mopub/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/mopub/volley/Cache$Entry;-><init>()V

    .line 407
    .local v0, "e":Lcom/mopub/volley/Cache$Entry;
    iput-object p1, v0, Lcom/mopub/volley/Cache$Entry;->data:[B

    .line 408
    iget-object v1, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/mopub/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 409
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v2, v0, Lcom/mopub/volley/Cache$Entry;->serverDate:J

    .line 410
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v2, v0, Lcom/mopub/volley/Cache$Entry;->ttl:J

    .line 411
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v2, v0, Lcom/mopub/volley/Cache$Entry;->softTtl:J

    .line 412
    iget-object v1, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 413
    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .registers 8
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    const v3, 0x20140623

    :try_start_5
    invoke-static {p1, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 423
    iget-object v3, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v3, :cond_2e

    const-string v3, ""

    :goto_13
    invoke-static {p1, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 425
    iget-wide v4, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v4, v5}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 426
    iget-wide v4, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v4, v5}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 427
    iget-wide v4, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v4, v5}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 428
    iget-object v3, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    invoke-static {v3, p1}, Lcom/mopub/volley/toolbox/DiskBasedCache;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 429
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 433
    :goto_2d
    return v1

    .line 424
    :cond_2e
    iget-object v3, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_13

    .line 431
    :catch_31
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 433
    goto :goto_2d
.end method
