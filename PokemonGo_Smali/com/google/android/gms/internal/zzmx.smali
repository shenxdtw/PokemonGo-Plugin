.class public final Lcom/google/android/gms/internal/zzmx;
.super Ljava/lang/Object;


# direct methods
.method public static isAtLeastL()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqD()Z

    move-result v0

    return v0
.end method

.method private static zzcd(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static zzqA()Z
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqB()Z
    .registers 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqC()Z
    .registers 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqD()Z
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqE()Z
    .registers 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqu()Z
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqv()Z
    .registers 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqw()Z
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqx()Z
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqy()Z
    .registers 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method

.method public static zzqz()Z
    .registers 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmx;->zzcd(I)Z

    move-result v0

    return v0
.end method
