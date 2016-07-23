.class public Lcom/google/android/gms/ads/internal/formats/zzg;
.super Lcom/google/android/gms/ads/internal/formats/zzh;


# instance fields
.field private zzpd:Ljava/lang/Object;

.field private zzwD:Lcom/google/android/gms/internal/zzeq;

.field private zzwE:Lcom/google/android/gms/internal/zzer;

.field private final zzwF:Lcom/google/android/gms/ads/internal/zzn;

.field private zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzwH:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzan;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzeq;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzan;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .registers 4

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->recordImpression()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_35

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->recordImpression()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2d} :catch_2e
    .catchall {:try_start_1c .. :try_end_2d} :catchall_35

    goto :goto_15

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->recordImpression()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_49} :catch_2e
    .catchall {:try_start_38 .. :try_end_49} :catchall_35

    goto :goto_15
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwF:Lcom/google/android/gms/ads/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->onAdClicked()V

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_4a

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzc(Lcom/google/android/gms/dynamic/zzd;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzer;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzc(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_42} :catch_43
    .catchall {:try_start_18 .. :try_end_42} :catchall_4a

    goto :goto_11

    :catch_43
    move-exception v0

    :try_start_44
    const-string v2, "Failed to call performClick"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwG:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzdB()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzdC()Lcom/google/android/gms/internal/zziz;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzh(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2d

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwD:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeq;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_26
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    :cond_13
    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwH:Z

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzwE:Lcom/google/android/gms/internal/zzer;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzer;->zzd(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_2d

    goto :goto_13

    :catch_26
    move-exception v0

    :try_start_27
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2d

    throw v0
.end method
