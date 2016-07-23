.class Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;


# instance fields
.field private final zzJI:Ljava/lang/Object;

.field private final zzJJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzJK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzJL:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJI:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJJ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJK:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzJL:Z

    return-void
.end method

.method private zze(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzic;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zziq;

    return-void
.end method

.method private zzf(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzJI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzJL:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzir;->zze(Ljava/lang/Runnable;)V

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzd(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzJI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzJL:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzir;->zzf(Ljava/lang/Runnable;)V

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJK:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzgV()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzir;->zzJI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzJL:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzir;->zze(Ljava/lang/Runnable;)V

    goto :goto_f

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzir;->zzf(Ljava/lang/Runnable;)V

    goto :goto_28

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzJK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzJL:Z

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_1f

    goto :goto_8
.end method
