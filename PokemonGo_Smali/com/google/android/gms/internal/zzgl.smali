.class public Lcom/google/android/gms/internal/zzgl;
.super Lcom/google/android/gms/internal/zzhz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzDB:Lcom/google/android/gms/internal/zzgm;

.field private zzDC:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzDd:Lcom/google/android/gms/internal/zzgg$zza;

.field private final zzDe:Lcom/google/android/gms/internal/zzhs$zza;

.field private final zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzgg$zza;)V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    new-instance v4, Lcom/google/android/gms/internal/zzih;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzih;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgm;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzhs$zza;)V

    invoke-direct {p0, p4, p6, v0}, Lcom/google/android/gms/internal/zzgl;-><init>(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzgg$zza;Lcom/google/android/gms/internal/zzgm;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzgg$zza;Lcom/google/android/gms/internal/zzgm;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhz;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgl;->zzDd:Lcom/google/android/gms/internal/zzgg$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgl;->zzDB:Lcom/google/android/gms/internal/zzgm;

    return-void
.end method

.method private zzB(I)Lcom/google/android/gms/internal/zzhs;
    .registers 33

    new-instance v2, Lcom/google/android/gms/internal/zzhs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEL:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzgg$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDd:Lcom/google/android/gms/internal/zzgg$zza;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDC:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDC:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzbn()V
    .registers 9

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzgl;->zzpd:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_6} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_44
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_6} :catch_48

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDB:Lcom/google/android/gms/internal/zzgm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzic;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDC:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2a

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzDC:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhs;
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_1c} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_1c} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1c} :catch_44
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_1c} :catch_48

    move v1, v2

    :goto_1d
    if-eqz v0, :cond_4c

    :goto_1f
    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzgl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgl$1;-><init>(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzhs;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_2d} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2c .. :try_end_2d} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2d} :catch_44
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_2d} :catch_48

    :catch_2d
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgl;->zzDC:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1d

    :catch_3e
    move-exception v0

    const/4 v0, 0x0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1d

    :catch_44
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1d

    :catch_48
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1d

    :cond_4c
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzgl;->zzB(I)Lcom/google/android/gms/internal/zzhs;

    move-result-object v0

    goto :goto_1f
.end method
