.class Lcom/google/android/gms/internal/zzdz$zzd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz$zzd;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyG:Lcom/google/android/gms/internal/zzdz$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$zzd$3;->zzyG:Lcom/google/android/gms/internal/zzdz$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$zzd$3;->zzyG:Lcom/google/android/gms/internal/zzdz$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdz$zzd;->zza(Lcom/google/android/gms/internal/zzdz$zzd;)Lcom/google/android/gms/internal/zzdz$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zze;->zzdQ()V

    return-void
.end method
