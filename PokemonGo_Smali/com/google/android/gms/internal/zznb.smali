.class public Lcom/google/android/gms/internal/zznb;
.super Ljava/lang/Object;


# static fields
.field private static final zzaio:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\$\\{(.*?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zznb;->zzaio:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzcA(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    sget-object v0, Lcom/google/android/gms/common/internal/zze;->zzaeL:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zze;->zzb(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
