.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$1;,
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 84
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 74
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 75
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 76
    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 240
    .local v0, "firstHalfLength":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "localFilename":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_31
    return-object v1

    .line 241
    :cond_32
    new-instance v1, Ljava/lang/String;

    .end local v1    # "localFilename":Ljava/lang/String;
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31
.end method

.method private pruneIfNeeded(I)V
    .registers 16
    .param p1, "neededSpace"    # I

    .prologue
    .line 257
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    iget v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_c

    .line 291
    :cond_b
    :goto_b
    return-void

    .line 260
    :cond_c
    sget-boolean v7, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_18

    .line 261
    const-string v7, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_18
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 265
    .local v0, "before":J
    const/4 v6, 0x0

    .line 266
    .local v6, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 268
    .local v8, "startTime":J
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 269
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;>;"
    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 271
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 272
    .local v3, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v7, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    .line 273
    .local v2, "deleted":Z
    if-eqz v2, :cond_8e

    .line 274
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 279
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 282
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    long-to-float v7, v10

    iget v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_29

    .line 287
    .end local v2    # "deleted":Z
    .end local v3    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_63
    sget-boolean v7, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 288
    const-string v7, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 276
    .restart local v2    # "deleted":Z
    .restart local v3    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_8e
    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 300
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 305
    :goto_f
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void

    .line 302
    :cond_15
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 303
    .local v0, "oldEntry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v6, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_f
.end method

.method private static read(Ljava/io/InputStream;)I
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 487
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 488
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 490
    :cond_d
    return v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "n":I
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 503
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 504
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 505
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 506
    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 521
    const-wide/16 v0, 0x0

    .line 522
    .local v0, "n":J
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 523
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 524
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 525
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 526
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 527
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 528
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 530
    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 541
    .local v1, "n":I
    invoke-static {p0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 542
    .local v0, "b":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 559
    .local v3, "size":I
    if-nez v3, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 562
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v3, :cond_29

    .line 563
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 559
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    .line 567
    .restart local v0    # "i":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_29
    return-object v2
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 313
    .local v0, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-eqz v0, :cond_16

    .line 314
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 315
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_16
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    new-array v0, p1, [B

    .line 325
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 326
    .local v2, "pos":I
    :goto_3
    if-ge v2, p1, :cond_10

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_10

    .line 327
    add-int/2addr v2, v1

    goto :goto_3

    .line 329
    .end local v1    # "count":I
    :cond_10
    if-eq v2, p1, :cond_3d

    .line 330
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_3d
    return-object v0
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 495
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 496
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 497
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 498
    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .registers 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 511
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 512
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 513
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 514
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 515
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 516
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 517
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 518
    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 535
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 536
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 537
    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_30

    .line 547
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 548
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    .line 553
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_30
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 555
    :cond_34
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 9

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 93
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_16

    .line 94
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_16

    aget-object v1, v0, v3

    .line 95
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 98
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_16
    iget-object v5, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 99
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 100
    const-string v5, "Cache cleared."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 101
    monitor-exit p0

    return-void

    .line 92
    .end local v2    # "files":[Ljava/io/File;
    :catchall_29
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 108
    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_6b

    .line 110
    .local v4, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-nez v4, :cond_e

    .line 130
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v7

    .line 114
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_6b

    move-result-object v5

    .line 115
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 117
    .local v0, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_13
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$1;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_42
    .catchall {:try_start_13 .. :try_end_23} :catchall_64

    .line 118
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v1, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_23
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    # getter for: Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->access$100(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 120
    .local v2, "data":[B
    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_38} :catch_73
    .catchall {:try_start_23 .. :try_end_38} :catchall_70

    move-result-object v8

    .line 126
    if-eqz v1, :cond_3e

    .line 128
    :try_start_3b
    invoke-virtual {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6b

    :cond_3e
    move-object v7, v8

    .line 130
    goto :goto_c

    .line 129
    :catch_40
    move-exception v6

    .line 130
    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_c

    .line 121
    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v2    # "data":[B
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_42
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_64

    .line 126
    if-eqz v0, :cond_c

    .line 128
    :try_start_5e
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_6b

    goto :goto_c

    .line 129
    :catch_62
    move-exception v6

    .line 130
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_c

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_64
    move-exception v8

    :goto_65
    if-eqz v0, :cond_6a

    .line 128
    :try_start_67
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6e
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    .line 130
    :cond_6a
    :try_start_6a
    throw v8
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 108
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v4    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "file":Ljava/io/File;
    :catchall_6b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 129
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v4    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5    # "file":Ljava/io/File;
    :catch_6e
    move-exception v6

    .line 130
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_c

    .line 126
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catchall_70
    move-exception v8

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_65

    .line 121
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_73
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_43
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 14

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_24

    .line 143
    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_22

    .line 144
    const-string v9, "Unable to create cache dir %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_6e

    .line 172
    :cond_22
    monitor-exit p0

    return-void

    .line 149
    :cond_24
    :try_start_24
    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 150
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_22

    .line 153
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2f
    if-ge v7, v8, :cond_22

    aget-object v3, v0, v7
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_6e

    .line 154
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 156
    .local v5, "fis":Ljava/io/BufferedInputStream;
    :try_start_34
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_59
    .catchall {:try_start_34 .. :try_end_3e} :catchall_67

    .line 157
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .local v6, "fis":Ljava/io/BufferedInputStream;
    :try_start_3e
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v2

    .line 158
    .local v2, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 159
    iget-object v9, v2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v9, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_76
    .catchall {:try_start_3e .. :try_end_4d} :catchall_73

    .line 166
    if-eqz v6, :cond_52

    .line 167
    :try_start_4f
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_56
    .catchall {:try_start_4f .. :try_end_52} :catchall_6e

    :cond_52
    move-object v5, v6

    .line 153
    .end local v2    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v6    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :cond_53
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 169
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v2    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v6    # "fis":Ljava/io/BufferedInputStream;
    :catch_56
    move-exception v9

    move-object v5, v6

    .line 170
    .end local v6    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_53

    .line 160
    .end local v2    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :catch_59
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    :goto_5a
    if-eqz v3, :cond_5f

    .line 162
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    .line 166
    :cond_5f
    if-eqz v5, :cond_53

    .line 167
    :try_start_61
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_6e

    goto :goto_53

    .line 169
    :catch_65
    move-exception v9

    goto :goto_53

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_67
    move-exception v9

    .line 166
    :goto_68
    if-eqz v5, :cond_6d

    .line 167
    :try_start_6a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_71
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 169
    :cond_6d
    :goto_6d
    :try_start_6d
    throw v9
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 142
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_6e
    move-exception v9

    monitor-exit p0

    throw v9

    .line 169
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :catch_71
    move-exception v10

    goto :goto_6d

    .line 165
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/BufferedInputStream;
    :catchall_73
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_68

    .line 160
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/BufferedInputStream;
    :catch_76
    move-exception v1

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_5a
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 182
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_14

    .line 183
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 184
    if-eqz p2, :cond_11

    .line 185
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 187
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 190
    :cond_14
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "entry":Lcom/android/volley/Cache$Entry;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iget-object v5, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v5, v5

    invoke-direct {p0, v5}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_5c

    move-result-object v2

    .line 200
    .local v2, "file":Ljava/io/File;
    :try_start_b
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v3, "fos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 202
    .local v1, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    move-result v4

    .line 203
    .local v4, "success":Z
    if-nez v4, :cond_50

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 205
    const-string v5, "Failed to write header for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_38
    .catchall {:try_start_b .. :try_end_38} :catchall_5c

    .line 212
    .end local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catch_38
    move-exception v5

    .line 214
    :try_start_39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 215
    .local v0, "deleted":Z
    if-nez v0, :cond_4e

    .line 216
    const-string v5, "Could not clean up file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_5c

    .line 218
    .end local v0    # "deleted":Z
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-void

    .line 208
    .restart local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v3    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "success":Z
    :cond_50
    :try_start_50
    iget-object v5, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 209
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 210
    invoke-direct {p0, p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5b} :catch_38
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5c

    goto :goto_4e

    .line 197
    .end local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catchall_5c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 226
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 227
    if-nez v0, :cond_20

    .line 228
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 231
    :cond_20
    monitor-exit p0

    return-void

    .line 225
    .end local v0    # "deleted":Z
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method
