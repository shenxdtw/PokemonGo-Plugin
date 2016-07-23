.class final Lcom/google/android/gms/internal/zzam$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private zznx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzam$zzb;->zznx:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzam$zzb;->zznx:Landroid/content/Context;

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/google/android/gms/internal/zzam$zzb;->zznx:Landroid/content/Context;

    :cond_f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-class v1, Lcom/google/android/gms/internal/zzam;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzZ()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzam$zzb;->zznx:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzam;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_16
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_3 .. :try_end_16} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_2f
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_3 .. :try_end_16} :catch_38
    .catchall {:try_start_3 .. :try_end_16} :catchall_41

    :cond_16
    :try_start_16
    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzaa()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2c

    return-void

    :catch_1f
    move-exception v0

    const/4 v0, 0x1

    :try_start_21
    invoke-static {v0}, Lcom/google/android/gms/internal/zzam;->zza(Z)Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41

    :try_start_24
    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzaa()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw v0

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzaa()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_38
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzaa()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catchall_41
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzaa()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_2c
.end method
