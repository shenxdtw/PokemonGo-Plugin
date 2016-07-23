.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzgV(I)I
    .registers 3

    const/4 v0, 0x1

    if-ltz p0, :cond_5

    if-le p0, v0, :cond_d

    :cond_5
    const/16 v1, 0x3e8

    if-gt v1, p0, :cond_e

    const/16 v1, 0x3ea

    if-gt p0, v1, :cond_e

    :cond_d
    :goto_d
    return p0

    :cond_e
    move p0, v0

    goto :goto_d
.end method

.method public static zzgW(I)Lcom/google/android/gms/common/api/Status;
    .registers 2

    packed-switch p0, :pswitch_data_c

    :goto_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object v0

    :pswitch_9
    const/16 p0, 0xd

    goto :goto_3

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
