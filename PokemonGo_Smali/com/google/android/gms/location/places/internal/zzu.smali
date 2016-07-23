.class public abstract Lcom/google/android/gms/location/places/internal/zzu;
.super Lcom/google/android/gms/common/data/zzc;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "SafeDataBufferRef"

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzu;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected zzF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzcg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_10
    return-object p2
.end method

.method protected zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzu;->zzc(Ljava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    goto :goto_7
.end method

.method protected zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzu;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object p3

    :cond_8
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzru;->zzz([B)Lcom/google/android/gms/internal/zzru;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/gms/internal/zzru;->zzbhW:[[B

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzru;->zzbhW:[[B

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzru;->zzbhW:[[B

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_2a

    aget-object v4, v2, v1

    invoke-static {v4, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Lcom/google/android/gms/internal/zzsd; {:try_start_8 .. :try_end_27} :catch_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2a
    move-object p3, v0

    goto :goto_7

    :catch_2c
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method protected zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzu;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object p2

    :cond_8
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzru;->zzz([B)Lcom/google/android/gms/internal/zzru;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/gms/internal/zzru;->zzbhV:[I

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzru;->zzbhV:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_19
    iget-object v3, v2, Lcom/google/android/gms/internal/zzru;->zzbhV:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2c

    iget-object v3, v2, Lcom/google/android/gms/internal/zzru;->zzbhV:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Lcom/google/android/gms/internal/zzsd; {:try_start_8 .. :try_end_29} :catch_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2c
    move-object p2, v0

    goto :goto_7

    :catch_2e
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method protected zzb(Ljava/lang/String;F)F
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzcg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->getFloat(Ljava/lang/String;)F

    move-result p2

    :cond_10
    return p2
.end method

.method protected zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzu;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object p2

    :cond_8
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzru;->zzz([B)Lcom/google/android/gms/internal/zzru;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzru;->zzbhU:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/zzru;->zzbhU:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_15
    .catch Lcom/google/android/gms/internal/zzsd; {:try_start_8 .. :try_end_15} :catch_17

    move-result-object p2

    goto :goto_7

    :catch_17
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method protected zzc(Ljava/lang/String;[B)[B
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzcg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    :cond_10
    return-object p2
.end method

.method protected zzh(Ljava/lang/String;Z)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzcg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_10
    return p2
.end method

.method protected zzz(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzcg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzu;->getInteger(Ljava/lang/String;)I

    move-result p2

    :cond_10
    return p2
.end method
