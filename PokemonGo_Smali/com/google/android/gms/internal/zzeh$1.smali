.class Lcom/google/android/gms/internal/zzeh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeh;->zza(JJ)Lcom/google/android/gms/internal/zzei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzr:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzzs:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzeg;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zzb(Lcom/google/android/gms/internal/zzeh;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeh;->zzc(Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzen;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzen;)Lcom/google/android/gms/internal/zzen;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeh;->zzd(Lcom/google/android/gms/internal/zzeh;)Lcom/google/android/gms/internal/zzen;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zzq(I)V

    monitor-exit v1

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzei$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzs:Lcom/google/android/gms/internal/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeh$1;->zzzr:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzeg;)V

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_2d

    goto :goto_11
.end method
