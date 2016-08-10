.class Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;
.super Landroid/os/AsyncTask;
.source "VASTModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/vast/model/VASTModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadTimeout:J

.field private final mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

.field final synthetic this$0:Lcom/upsight/mediation/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/VASTPlayer;Landroid/content/Context;I)V
    .registers 7
    .param p2, "vastPlayer"    # Lcom/upsight/mediation/vast/VASTPlayer;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "downloadTimeout"    # I

    .prologue
    .line 457
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    .line 459
    iput-object p3, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->context:Landroid/content/Context;

    .line 460
    if-lez p4, :cond_f

    int-to-long v0, p4

    :goto_c
    iput-wide v0, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->downloadTimeout:J

    .line 461
    return-void

    .line 460
    :cond_f
    const-wide/16 v0, 0x7530

    goto :goto_c
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 28
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 465
    const/4 v15, 0x0

    .line 466
    .local v15, "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 467
    .local v16, "output":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 468
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 470
    .local v9, "file":Ljava/io/File;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 471
    .local v18, "startTime":J
    new-instance v20, Ljava/net/URL;

    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 472
    .local v20, "url":Ljava/net/URL;
    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x0

    aget-object v22, p1, v22

    const/16 v23, 0x2f

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 473
    .local v14, "filename":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 475
    const/16 v21, 0x1388

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 476
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 477
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 481
    .local v13, "fileSize":I
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_93

    .line 482
    # getter for: Lcom/upsight/mediation/vast/model/VASTModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/mediation/vast/model/VASTModel;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Server returned HTTP "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 483
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 482
    invoke-static/range {v21 .. v22}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/16 v21, 0x191

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_82
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_82} :catch_240
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_82} :catch_200
    .catchall {:try_start_5 .. :try_end_82} :catchall_218

    move-result-object v21

    .line 548
    if-eqz v16, :cond_88

    .line 549
    :try_start_85
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_88
    if-eqz v15, :cond_8d

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8d} :catch_257

    .line 557
    :cond_8d
    :goto_8d
    if-eqz v3, :cond_92

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 562
    .end local v13    # "fileSize":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v20    # "url":Ljava/net/URL;
    :cond_92
    :goto_92
    return-object v21

    .line 494
    .restart local v13    # "fileSize":I
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v18    # "startTime":J
    .restart local v20    # "url":Ljava/net/URL;
    :cond_93
    :try_start_93
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v21

    const-string v22, "fuse_vast_cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .local v2, "cacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_ca

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v21

    if-nez v21, :cond_ca

    .line 496
    const/16 v21, 0x191

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_93 .. :try_end_b9} :catch_240
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b9} :catch_200
    .catchall {:try_start_93 .. :try_end_b9} :catchall_218

    move-result-object v21

    .line 548
    if-eqz v16, :cond_bf

    .line 549
    :try_start_bc
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_bf
    if-eqz v15, :cond_c4

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c4} :catch_254

    .line 557
    :cond_c4
    :goto_c4
    if-eqz v3, :cond_92

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_92

    .line 498
    :cond_ca
    :try_start_ca
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/net/SocketTimeoutException; {:try_start_ca .. :try_end_cf} :catch_240
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cf} :catch_200
    .catchall {:try_start_ca .. :try_end_cf} :catchall_218

    .line 501
    .end local v9    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    :try_start_cf
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_104

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v22

    int-to-long v0, v13

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-nez v21, :cond_104

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    # setter for: Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/upsight/mediation/vast/model/VASTModel;->access$002(Lcom/upsight/mediation/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_f2
    .catch Ljava/net/SocketTimeoutException; {:try_start_cf .. :try_end_f2} :catch_243
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_f2} :catch_235
    .catchall {:try_start_cf .. :try_end_f2} :catchall_22b

    move-result-object v21

    .line 548
    if-eqz v16, :cond_f8

    .line 549
    :try_start_f5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_f8
    if-eqz v15, :cond_fd

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fd} :catch_251

    .line 557
    :cond_fd
    :goto_fd
    if-eqz v3, :cond_102

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_102
    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_92

    .line 507
    .end local v9    # "file":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    :cond_104
    int-to-long v0, v13

    move-wide/from16 v22, v0

    :try_start_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/upsight/mediation/vast/VASTPlayer;->getMaxFileSize()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-lez v21, :cond_12d

    .line 508
    const/16 v21, 0x190

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11a
    .catch Ljava/net/SocketTimeoutException; {:try_start_107 .. :try_end_11a} :catch_243
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11a} :catch_235
    .catchall {:try_start_107 .. :try_end_11a} :catchall_22b

    move-result-object v21

    .line 548
    if-eqz v16, :cond_120

    .line 549
    :try_start_11d
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_120
    if-eqz v15, :cond_125

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_125} :catch_24e

    .line 557
    :cond_125
    :goto_125
    if-eqz v3, :cond_12a

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12a
    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto/16 :goto_92

    .line 512
    .end local v9    # "file":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    :cond_12d
    :try_start_12d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 513
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_138
    .catch Ljava/net/SocketTimeoutException; {:try_start_12d .. :try_end_138} :catch_243
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_138} :catch_235
    .catchall {:try_start_12d .. :try_end_138} :catchall_22b

    .line 515
    .end local v16    # "output":Ljava/io/OutputStream;
    .local v17, "output":Ljava/io/OutputStream;
    const/16 v21, 0x1000

    :try_start_13a
    move/from16 v0, v21

    new-array v5, v0, [B

    .line 519
    .local v5, "data":[B
    :goto_13e
    invoke-virtual {v15, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_1ae

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 521
    .local v10, "endTime":J
    sub-long v22, v10, v18

    const-wide/32 v24, 0xf4240

    div-long v6, v22, v24

    .line 523
    .local v6, "duration":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->downloadTimeout:J

    move-wide/from16 v22, v0

    cmp-long v21, v6, v22

    if-ltz v21, :cond_166

    .line 524
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->cancel(Z)Z

    .line 527
    :cond_166
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_189

    .line 528
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 530
    const/16 v21, 0x192

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_174
    .catch Ljava/net/SocketTimeoutException; {:try_start_13a .. :try_end_174} :catch_193
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_174} :catch_238
    .catchall {:try_start_13a .. :try_end_174} :catchall_22e

    move-result-object v21

    .line 548
    if-eqz v17, :cond_17a

    .line 549
    :try_start_177
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_17a
    if-eqz v15, :cond_17f

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17f} :catch_24b

    .line 557
    :cond_17f
    :goto_17f
    if-eqz v3, :cond_184

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_184
    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto/16 :goto_92

    .line 533
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :cond_189
    const/16 v21, 0x0

    :try_start_18b
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_192
    .catch Ljava/net/SocketTimeoutException; {:try_start_18b .. :try_end_192} :catch_193
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_192} :catch_238
    .catchall {:try_start_18b .. :try_end_192} :catchall_22e

    goto :goto_13e

    .line 541
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v6    # "duration":J
    .end local v10    # "endTime":J
    :catch_193
    move-exception v8

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .line 542
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v13    # "fileSize":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v17    # "output":Ljava/io/OutputStream;
    .end local v18    # "startTime":J
    .end local v20    # "url":Ljava/net/URL;
    .local v8, "e":Ljava/net/SocketTimeoutException;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :goto_197
    const/16 v21, 0x192

    :try_start_199
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_218

    move-result-object v21

    .line 548
    if-eqz v16, :cond_1a2

    .line 549
    :try_start_19f
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_1a2
    if-eqz v15, :cond_1a7

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a7} :catch_23d

    .line 557
    :cond_1a7
    :goto_1a7
    if-eqz v3, :cond_92

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_92

    .line 538
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v2    # "cacheDir":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "fileSize":I
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v17    # "output":Ljava/io/OutputStream;
    .restart local v18    # "startTime":J
    .restart local v20    # "url":Ljava/net/URL;
    :cond_1ae
    :try_start_1ae
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1bf

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v22

    int-to-long v0, v13

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_1d9

    .line 539
    :cond_1bf
    const/16 v21, 0x190

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1ae .. :try_end_1c4} :catch_193
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1c4} :catch_238
    .catchall {:try_start_1ae .. :try_end_1c4} :catchall_22e

    move-result-object v21

    .line 548
    if-eqz v17, :cond_1ca

    .line 549
    :try_start_1c7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_1ca
    if-eqz v15, :cond_1cf

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1cf} :catch_249

    .line 557
    :cond_1cf
    :goto_1cf
    if-eqz v3, :cond_1d4

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1d4
    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto/16 :goto_92

    .line 548
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :cond_1d9
    if-eqz v17, :cond_1de

    .line 549
    :try_start_1db
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_1de
    if-eqz v15, :cond_1e3

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1e3} :catch_247

    .line 557
    :cond_1e3
    :goto_1e3
    if-eqz v3, :cond_1e8

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 561
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    # setter for: Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/upsight/mediation/vast/model/VASTModel;->access$002(Lcom/upsight/mediation/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto/16 :goto_92

    .line 543
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v13    # "fileSize":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v20    # "url":Ljava/net/URL;
    :catch_200
    move-exception v8

    .line 545
    .local v8, "e":Ljava/lang/Exception;
    :goto_201
    const/16 v21, 0x190

    :try_start_203
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_218

    move-result-object v21

    .line 548
    if-eqz v16, :cond_20c

    .line 549
    :try_start_209
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_20c
    if-eqz v15, :cond_211

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_211} :catch_233

    .line 557
    :cond_211
    :goto_211
    if-eqz v3, :cond_92

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_92

    .line 547
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_218
    move-exception v21

    .line 548
    :goto_219
    if-eqz v16, :cond_21e

    .line 549
    :try_start_21b
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 551
    :cond_21e
    if-eqz v15, :cond_223

    .line 552
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_223} :catch_229

    .line 557
    :cond_223
    :goto_223
    if-eqz v3, :cond_228

    .line 558
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_228
    throw v21

    .line 554
    :catch_229
    move-exception v22

    goto :goto_223

    .line 547
    .end local v9    # "file":Ljava/io/File;
    .restart local v2    # "cacheDir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "fileSize":I
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v18    # "startTime":J
    .restart local v20    # "url":Ljava/net/URL;
    :catchall_22b
    move-exception v21

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_219

    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catchall_22e
    move-exception v21

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto :goto_219

    .line 554
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v13    # "fileSize":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v20    # "url":Ljava/net/URL;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_233
    move-exception v22

    goto :goto_211

    .line 543
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "file":Ljava/io/File;
    .restart local v2    # "cacheDir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "fileSize":I
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v18    # "startTime":J
    .restart local v20    # "url":Ljava/net/URL;
    :catch_235
    move-exception v8

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_201

    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catch_238
    move-exception v8

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto :goto_201

    .line 554
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v13    # "fileSize":I
    .end local v14    # "filename":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v20    # "url":Ljava/net/URL;
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :catch_23d
    move-exception v22

    goto/16 :goto_1a7

    .line 541
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_240
    move-exception v8

    goto/16 :goto_197

    .end local v9    # "file":Ljava/io/File;
    .restart local v2    # "cacheDir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "fileSize":I
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v18    # "startTime":J
    .restart local v20    # "url":Ljava/net/URL;
    :catch_243
    move-exception v8

    move-object v9, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto/16 :goto_197

    .line 554
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v12    # "file":Ljava/io/File;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catch_247
    move-exception v21

    goto :goto_1e3

    :catch_249
    move-exception v22

    goto :goto_1cf

    .restart local v6    # "duration":J
    .restart local v10    # "endTime":J
    :catch_24b
    move-exception v22

    goto/16 :goto_17f

    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v6    # "duration":J
    .end local v10    # "endTime":J
    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_24e
    move-exception v22

    goto/16 :goto_125

    :catch_251
    move-exception v22

    goto/16 :goto_fd

    .end local v12    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :catch_254
    move-exception v22

    goto/16 :goto_c4

    .end local v2    # "cacheDir":Ljava/io/File;
    :catch_257
    move-exception v22

    goto/16 :goto_8d
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 451
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x192

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 580
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Integer;

    .prologue
    .line 567
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_12

    .line 568
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 573
    :goto_11
    return-void

    .line 570
    :cond_12
    # getter for: Lcom/upsight/mediation/vast/model/VASTModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/mediation/vast/model/VASTModel;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on execute complete"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer;->setLoaded(Z)V

    goto :goto_11
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 451
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
