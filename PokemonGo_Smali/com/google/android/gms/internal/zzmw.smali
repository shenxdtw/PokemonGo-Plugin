.class public Lcom/google/android/gms/internal/zzmw;
.super Ljava/lang/Object;


# direct methods
.method public static zza([BIII)I
    .registers 10

    const v5, 0x1b873593

    const v4, -0x3361d2af    # -8.2930312E7f

    and-int/lit8 v0, p2, -0x4

    add-int v2, p1, v0

    move v1, p3

    :goto_b
    if-ge p1, v2, :cond_40

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    mul-int/2addr v0, v4

    shl-int/lit8 v3, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v3

    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xd

    ushr-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x4

    goto :goto_b

    :cond_40
    const/4 v0, 0x0

    and-int/lit8 v3, p2, 0x3

    packed-switch v3, :pswitch_data_7a

    move v0, v1

    :goto_47
    xor-int/2addr v0, p2

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0

    :pswitch_5a
    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :pswitch_62
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    :pswitch_6b
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    mul-int/2addr v0, v4

    shl-int/lit8 v2, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v2

    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    goto :goto_47

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_62
        :pswitch_5a
    .end packed-switch
.end method
