.class Lcom/google/android/gms/internal/zzii$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzii;->zzgN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJj:Lcom/google/android/gms/internal/zzii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzii;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$1;->zzJj:Lcom/google/android/gms/internal/zzii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzJj:Lcom/google/android/gms/internal/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzii;->zza(Lcom/google/android/gms/internal/zzii;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    const-string v0, "Suspending the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzJj:Lcom/google/android/gms/internal/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzii;->zzb(Lcom/google/android/gms/internal/zzii;)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2a

    move-result v0

    if-nez v0, :cond_2d

    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzJj:Lcom/google/android/gms/internal/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzii;->zza(Lcom/google/android/gms/internal/zzii;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v0, "Looper thread resumed"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_22} :catch_23
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    goto :goto_c

    :catch_23
    move-exception v0

    :try_start_24
    const-string v0, "Looper thread interrupted."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    return-void
.end method
