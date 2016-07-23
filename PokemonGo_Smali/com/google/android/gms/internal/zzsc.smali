.class public final Lcom/google/android/gms/internal/zzsc;
.super Ljava/lang/Object;


# static fields
.field public static final zzbiu:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsc;->zzbiu:Ljava/lang/Object;

    return-void
.end method

.method public static equals([F[F)Z
    .registers 3
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([I[I)Z
    .registers 3
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([J[J)Z
    .registers 3
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_14

    move v7, v1

    :goto_5
    if-nez p1, :cond_17

    move v0, v1

    :goto_8
    move v3, v1

    move v6, v1

    :goto_a
    if-ge v6, v7, :cond_45

    aget-object v4, p0, v6

    if-nez v4, :cond_45

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    :cond_14
    array-length v0, p0

    move v7, v0

    goto :goto_5

    :cond_17
    array-length v0, p1

    goto :goto_8

    :goto_19
    if-ge v5, v0, :cond_23

    aget-object v3, p1, v5

    if-nez v3, :cond_23

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_19

    :cond_23
    if-lt v6, v7, :cond_2f

    move v4, v2

    :goto_26
    if-lt v5, v0, :cond_31

    move v3, v2

    :goto_29
    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    move v1, v2

    :cond_2e
    return v1

    :cond_2f
    move v4, v1

    goto :goto_26

    :cond_31
    move v3, v1

    goto :goto_29

    :cond_33
    if-ne v4, v3, :cond_2e

    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v5, 0x1

    move v6, v4

    goto :goto_a

    :cond_45
    move v5, v3

    goto :goto_19
.end method

.method public static hashCode([F)I
    .registers 2
    .param p0, "field"    # [F

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([I)I
    .registers 2
    .param p0, "field"    # [I

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([J)I
    .registers 2
    .param p0, "field"    # [J

    .prologue
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 5
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_15

    move v0, v1

    :goto_4
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_17

    aget-object v3, p0, v2

    if-eqz v3, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    array-length v0, p0

    goto :goto_4

    :cond_17
    return v1
.end method

.method public static zza([[B)I
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_15

    move v0, v1

    :goto_4
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_17

    aget-object v3, p0, v2

    if-eqz v3, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    array-length v0, p0

    goto :goto_4

    :cond_17
    return v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzry;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->zzFH()Lcom/google/android/gms/internal/zzsa;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    :cond_c
    return-void
.end method

.method public static zza([[B[[B)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_14

    move v7, v1

    :goto_5
    if-nez p1, :cond_17

    move v0, v1

    :goto_8
    move v3, v1

    move v6, v1

    :goto_a
    if-ge v6, v7, :cond_45

    aget-object v4, p0, v6

    if-nez v4, :cond_45

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    :cond_14
    array-length v0, p0

    move v7, v0

    goto :goto_5

    :cond_17
    array-length v0, p1

    goto :goto_8

    :goto_19
    if-ge v5, v0, :cond_23

    aget-object v3, p1, v5

    if-nez v3, :cond_23

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_19

    :cond_23
    if-lt v6, v7, :cond_2f

    move v4, v2

    :goto_26
    if-lt v5, v0, :cond_31

    move v3, v2

    :goto_29
    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    move v1, v2

    :cond_2e
    return v1

    :cond_2f
    move v4, v1

    goto :goto_26

    :cond_31
    move v3, v1

    goto :goto_29

    :cond_33
    if-ne v4, v3, :cond_2e

    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v5, 0x1

    move v6, v4

    goto :goto_a

    :cond_45
    move v5, v3

    goto :goto_19
.end method
