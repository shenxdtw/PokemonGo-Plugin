.class public Lcom/google/android/gms/location/places/PlacesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final ACCESS_NOT_CONFIGURED:I = 0x232b

.field public static final DEVICE_RATE_LIMIT_EXCEEDED:I = 0x232e

.field public static final INVALID_APP:I = 0x2330

.field public static final INVALID_ARGUMENT:I = 0x232c

.field public static final KEY_EXPIRED:I = 0x232f

.field public static final KEY_INVALID:I = 0x232a

.field public static final RATE_LIMIT_EXCEEDED:I = 0x232d

.field public static final USAGE_LIMIT_EXCEEDED:I = 0x2329


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "statusCode"    # I

    .prologue
    sparse-switch p0, :sswitch_data_2a

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :sswitch_8
    const-string v0, "PLACES_API_QUOTA_FAILED"

    goto :goto_7

    :sswitch_b
    const-string v0, "PLACES_API_USAGE_LIMIT_EXCEEDED"

    goto :goto_7

    :sswitch_e
    const-string v0, "PLACES_API_KEY_INVALID"

    goto :goto_7

    :sswitch_11
    const-string v0, "PLACES_API_ACCESS_NOT_CONFIGURED"

    goto :goto_7

    :sswitch_14
    const-string v0, "PLACES_API_INVALID_ARGUMENT"

    goto :goto_7

    :sswitch_17
    const-string v0, "PLACES_API_RATE_LIMIT_EXCEEDED"

    goto :goto_7

    :sswitch_1a
    const-string v0, "PLACES_API_DEVICE_RATE_LIMIT_EXCEEDED"

    goto :goto_7

    :sswitch_1d
    const-string v0, "PLACES_API_KEY_EXPIRED"

    goto :goto_7

    :sswitch_20
    const-string v0, "PLACE_PROXIMITY_UNKNOWN"

    goto :goto_7

    :sswitch_23
    const-string v0, "NEARBY_ALERTS_NOT_AVAILABLE"

    goto :goto_7

    :sswitch_26
    const-string v0, "PLACES_API_INVALID_APP"

    goto :goto_7

    nop

    :sswitch_data_2a
    .sparse-switch
        0x2328 -> :sswitch_8
        0x2329 -> :sswitch_b
        0x232a -> :sswitch_e
        0x232b -> :sswitch_11
        0x232c -> :sswitch_14
        0x232d -> :sswitch_17
        0x232e -> :sswitch_1a
        0x232f -> :sswitch_1d
        0x2330 -> :sswitch_26
        0x238d -> :sswitch_20
        0x238e -> :sswitch_23
    .end sparse-switch
.end method

.method public static zzhp(I)Lcom/google/android/gms/common/api/Status;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->zzk(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public static zzk(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
