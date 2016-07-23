.class public Lcom/google/android/gms/internal/zzdz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdz$zza;,
        Lcom/google/android/gms/internal/zzdz$zzd;,
        Lcom/google/android/gms/internal/zzdz$zze;,
        Lcom/google/android/gms/internal/zzdz$zzc;,
        Lcom/google/android/gms/internal/zzdz$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpd:Ljava/lang/Object;

.field private final zzyo:Ljava/lang/String;

.field private zzyp:Lcom/google/android/gms/internal/zzdz$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzyq:Lcom/google/android/gms/internal/zzdz$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;"
        }
    .end annotation
.end field

.field private zzyr:Lcom/google/android/gms/internal/zzdz$zze;

.field private zzys:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzpd:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdz;->zzyo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdz;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdz$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyp:Lcom/google/android/gms/internal/zzdz$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdz$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyq:Lcom/google/android/gms/internal/zzdz$zzb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdz$zzb;Lcom/google/android/gms/internal/zzdz$zzb;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;",
            "Lcom/google/android/gms/internal/zzdz$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzbb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdz;->zzyp:Lcom/google/android/gms/internal/zzdz$zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdz;->zzyq:Lcom/google/android/gms/internal/zzdz$zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdz;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdz;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)Lcom/google/android/gms/internal/zzdz$zze;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzpd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzdz$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyp:Lcom/google/android/gms/internal/zzdz$zzb;

    return-object v0
.end method

.method private zzdM()Lcom/google/android/gms/internal/zzdz$zze;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzyq:Lcom/google/android/gms/internal/zzdz$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdz$zze;-><init>(Lcom/google/android/gms/internal/zzdz$zzb;)V

    new-instance v1, Lcom/google/android/gms/internal/zzdz$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdz$1;-><init>(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzid;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzdz;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzdz;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzdz$zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzbb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzbd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-object v0
.end method

.method protected zzdN()Lcom/google/android/gms/internal/zzdz$zze;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdz;->zzdM()Lcom/google/android/gms/internal/zzdz$zze;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdz$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdz$2;-><init>(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdz$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdz$3;-><init>(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdz$zze;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdz$zze;->zza(Lcom/google/android/gms/internal/zzis$zzc;Lcom/google/android/gms/internal/zzis$zza;)V

    return-object v0
.end method

.method public zzdO()Lcom/google/android/gms/internal/zzdz$zzd;
    .registers 5

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_22

    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdz;->zzdN()Lcom/google/android/gms/internal/zzdz$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    monitor-exit v1

    :goto_21
    return-object v0

    :cond_22
    iget v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iget v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdz;->zzdN()Lcom/google/android/gms/internal/zzdz$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :cond_44
    iget v0, p0, Lcom/google/android/gms/internal/zzdz;->zzys:I

    if-ne v0, v3, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzyr:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_2e

    goto :goto_21
.end method
