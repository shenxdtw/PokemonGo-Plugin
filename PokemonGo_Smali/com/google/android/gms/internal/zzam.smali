.class public Lcom/google/android/gms/internal/zzam;
.super Lcom/google/android/gms/internal/zzal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzam$zzb;,
        Lcom/google/android/gms/internal/zzam$zza;
    }
.end annotation


# static fields
.field private static zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private static zznr:Ljava/util/concurrent/CountDownLatch;

.field private static volatile zzns:Z


# instance fields
.field private zznt:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzam;->zznr:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;Lcom/google/android/gms/internal/zzaq;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;Lcom/google/android/gms/internal/zzaq;)V

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzam;->zznt:Z

    return-void
.end method

.method static synthetic zzZ()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzam;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzah;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzam;->zza(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)V

    if-eqz p2, :cond_1f

    const-class v1, Lcom/google/android/gms/internal/zzam;

    monitor-enter v1

    :try_start_d
    sget-object v2, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/gms/internal/zzam$zzb;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzam$zzb;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_2c

    :cond_1f
    new-instance v1, Lcom/google/android/gms/internal/zzam;

    new-instance v2, Lcom/google/android/gms/internal/zzas;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzas;-><init>(I)V

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/google/android/gms/internal/zzam;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;Lcom/google/android/gms/internal/zzaq;Z)V

    return-object v1

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static synthetic zza(Z)Z
    .registers 1

    sput-boolean p0, Lcom/google/android/gms/internal/zzam;->zzns:Z

    return p0
.end method

.method static synthetic zzaa()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzam;->zznr:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method zzY()Lcom/google/android/gms/internal/zzam$zza;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zznr:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/zzam$zza;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzam$zza;-><init>(Lcom/google/android/gms/internal/zzam;Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzam$zza;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/android/gms/internal/zzam$zza;-><init>(Lcom/google/android/gms/internal/zzam;Ljava/lang/String;Z)V

    goto :goto_15

    :cond_1d
    const-class v1, Lcom/google/android/gms/internal/zzam;

    monitor-enter v1

    :try_start_20
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/zzam$zza;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/zzam$zza;-><init>(Lcom/google/android/gms/internal/zzam;Ljava/lang/String;Z)V

    monitor-exit v1

    goto :goto_15

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    sget-object v0, Lcom/google/android/gms/internal/zzam;->zznq:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzam;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzam$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzam$zza;-><init>(Lcom/google/android/gms/internal/zzam;Ljava/lang/String;Z)V

    goto :goto_15
.end method

.method protected zzc(Landroid/content/Context;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzal;->zzc(Landroid/content/Context;)V

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/zzam;->zzns:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzam;->zznt:Z

    if-nez v0, :cond_15

    :cond_b
    const/16 v0, 0x18

    invoke-static {p1}, Lcom/google/android/gms/internal/zzam;->zze(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzam;->zza(ILjava/lang/String;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzam;->zzY()Lcom/google/android/gms/internal/zzam$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzam$zza;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const/16 v3, 0x1c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzam$zza;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x1

    :goto_29
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/zzam;->zza(IJ)V

    const/16 v0, 0x1a

    const-wide/16 v4, 0x5

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/gms/internal/zzam;->zza(IJ)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzam;->zza(ILjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_38} :catch_39
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_3 .. :try_end_38} :catch_3e

    goto :goto_14

    :catch_39
    move-exception v0

    goto :goto_14

    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_29

    :catch_3e
    move-exception v0

    goto :goto_14
.end method
