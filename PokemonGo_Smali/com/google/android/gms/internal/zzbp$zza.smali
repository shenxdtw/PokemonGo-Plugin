.class public Lcom/google/android/gms/internal/zzbp$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field final value:J

.field final zzsx:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbp$zza;->zzsx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/google/android/gms/internal/zzbp$zza;

    if-nez v1, :cond_8

    .end local p1    # "other":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lcom/google/android/gms/internal/zzbp$zza;

    .end local p1    # "other":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    long-to-int v0, v0

    return v0
.end method
