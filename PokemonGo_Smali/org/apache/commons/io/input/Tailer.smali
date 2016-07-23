.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 156
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J

    .prologue
    .line 166
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z

    .prologue
    .line 177
    const/16 v7, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "bufSize"    # I

    .prologue
    .line 201
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z

    .prologue
    .line 189
    const/16 v8, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufSize"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 214
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 215
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 216
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 218
    new-array v0, p7, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 221
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 222
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 223
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 224
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 312
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z

    .prologue
    .line 274
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "bufSize"    # I

    .prologue
    .line 237
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 238
    .local v1, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-object v1
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z

    .prologue
    .line 288
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 17
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z
    .param p6, "bufSize"    # I

    .prologue
    .line 257
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 258
    .local v1, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 261
    return-object v1
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 16
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 452
    .local v4, "pos":J
    move-wide v6, v4

    .line 455
    .local v6, "rePos":J
    const/4 v8, 0x0

    .line 456
    .local v8, "seenCR":Z
    :goto_b
    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v9, :cond_62

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .local v2, "num":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_62

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v2, :cond_5d

    .line 458
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v0, v9, v1

    .line 459
    .local v0, "ch":B
    packed-switch v0, :pswitch_data_66

    .line 473
    :pswitch_22
    if-eqz v8, :cond_38

    .line 474
    const/4 v8, 0x0

    .line 475
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 476
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    int-to-long v10, v1

    add-long/2addr v10, v4

    const-wide/16 v12, 0x1

    add-long v6, v10, v12

    .line 479
    :cond_38
    int-to-char v9, v0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 461
    :pswitch_3f
    const/4 v8, 0x0

    .line 462
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 463
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    int-to-long v10, v1

    add-long/2addr v10, v4

    const-wide/16 v12, 0x1

    add-long v6, v10, v12

    .line 465
    goto :goto_3c

    .line 467
    :pswitch_54
    if-eqz v8, :cond_5b

    .line 468
    const/16 v9, 0xd

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_5b
    const/4 v8, 0x1

    .line 471
    goto :goto_3c

    .line 483
    .end local v0    # "ch":B
    :cond_5d
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    goto :goto_b

    .line 486
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_62
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    return-wide v6

    .line 459
    :pswitch_data_66
    .packed-switch 0xa
        :pswitch_3f
        :pswitch_22
        :pswitch_22
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .prologue
    .line 330
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .registers 15

    .prologue
    .line 337
    const/4 v8, 0x0

    .line 339
    .local v8, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "last":J
    const-wide/16 v6, 0x0

    .local v6, "position":J
    move-object v9, v8

    .line 342
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .local v9, "reader":Ljava/io/RandomAccessFile;
    :goto_6
    :try_start_6
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_b5
    .catchall {:try_start_6 .. :try_end_8} :catchall_c0

    if-eqz v11, :cond_3f

    if-nez v9, :cond_3f

    .line 344
    :try_start_c
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_b5
    .catchall {:try_start_c .. :try_end_15} :catchall_c0

    .line 349
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_15
    if-nez v8, :cond_29

    .line 351
    :try_start_17
    iget-wide v12, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_c8
    .catchall {:try_start_17 .. :try_end_1c} :catchall_c6

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 345
    :catch_1e
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1f
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_b5
    .catchall {:try_start_1f .. :try_end_24} :catchall_c0

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_15

    .line 352
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v11

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_29
    :try_start_29
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v11, :cond_3c

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 357
    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 358
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_c8
    .catchall {:try_start_29 .. :try_end_3a} :catchall_c6

    move-object v9, v8

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_3c
    const-wide/16 v6, 0x0

    goto :goto_33

    .line 362
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_3f
    :goto_3f
    :try_start_3f
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_b0

    .line 364
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v11, v2, v3}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v1

    .line 367
    .local v1, "newer":Z
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 369
    .local v4, "length":J
    cmp-long v11, v4, v6

    if-gez v11, :cond_72

    .line 372
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_b5
    .catchall {:try_start_3f .. :try_end_58} :catchall_c0

    .line 377
    move-object v10, v9

    .line 378
    .local v10, "save":Ljava/io/RandomAccessFile;
    :try_start_59
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_62} :catch_69
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_b5
    .catchall {:try_start_59 .. :try_end_62} :catchall_c0

    .line 379
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    .line 381
    :try_start_64
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_67} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_c8
    .catchall {:try_start_64 .. :try_end_67} :catchall_c6

    move-object v9, v8

    .line 385
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3f

    .line 382
    :catch_69
    move-exception v0

    move-object v8, v9

    .line 384
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_6b
    :try_start_6b
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_c8
    .catchall {:try_start_6b .. :try_end_70} :catchall_c6

    move-object v9, v8

    .line 386
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3f

    .line 392
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    :cond_72
    cmp-long v11, v4, v6

    if-lez v11, :cond_a0

    .line 395
    :try_start_76
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 412
    :cond_7e
    :goto_7e
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_85

    .line 413
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_85} :catch_b5
    .catchall {:try_start_76 .. :try_end_85} :catchall_c0

    .line 416
    :cond_85
    :try_start_85
    iget-wide v12, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_8a} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_b5
    .catchall {:try_start_85 .. :try_end_8a} :catchall_c0

    .line 419
    :goto_8a
    :try_start_8a
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_ce

    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_ce

    .line 420
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9b} :catch_b5
    .catchall {:try_start_8a .. :try_end_9b} :catchall_c0

    .line 421
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :try_start_9b
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_c8
    .catchall {:try_start_9b .. :try_end_9e} :catchall_c6

    :goto_9e
    move-object v9, v8

    .line 423
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3f

    .line 398
    :cond_a0
    if-eqz v1, :cond_7e

    .line 404
    const-wide/16 v6, 0x0

    .line 405
    :try_start_a4
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ae} :catch_b5
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_c0

    move-result-wide v2

    goto :goto_7e

    .line 430
    .end local v1    # "newer":Z
    .end local v4    # "length":J
    :cond_b0
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 432
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_b4
    return-void

    .line 425
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_b5
    move-exception v0

    move-object v8, v9

    .line 427
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_b7
    :try_start_b7
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_c6

    .line 430
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catchall_c0
    move-exception v11

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_c2
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    :catchall_c6
    move-exception v11

    goto :goto_c2

    .line 425
    :catch_c8
    move-exception v0

    goto :goto_b7

    .line 417
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "newer":Z
    .restart local v4    # "length":J
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_ca
    move-exception v11

    goto :goto_8a

    .line 382
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v10    # "save":Ljava/io/RandomAccessFile;
    :catch_cc
    move-exception v0

    goto :goto_6b

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_ce
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_9e
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 439
    return-void
.end method
