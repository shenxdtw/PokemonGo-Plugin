.class public Lcom/nianticproject/holoholo/sfida/SfidaMessage;
.super Ljava/lang/Object;
.source "SfidaMessage.java"


# static fields
.field public static final ACTIVITY_BYTE_LENGTH:I = 0x3

.field public static final SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_1:Ljava/lang/String; = "4010"

.field public static final SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_2:Ljava/lang/String; = "5000"

.field public static final SFIDA_RESPONSE_CERTIFICATION_COMPLETE:Ljava/lang/String; = "4020"

.field public static final SFIDA_RESPONSE_CERTIFICATION_NOTIFY:Ljava/lang/String; = "3000"

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

.field public static final UUID_BATTERY_SERVICE:Ljava/util/UUID;

.field public static final UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

.field public static final UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

.field public static final UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

.field public static final UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

.field public static final UUID_FW_UPDATE_REQUEST_CHAR:Ljava/util/UUID;

.field public static final UUID_FW_UPDATE_SERVICE:Ljava/util/UUID;

.field public static final UUID_FW_VERSION_CHAR:Ljava/util/UUID;

.field public static final UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

.field public static final UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

.field public static final UUID_SFIDA_TO_CENTRAL_CHAR:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_UPDATE_SERVICE:Ljava/util/UUID;

    .line 18
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aeb"

    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    .line 20
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aec"

    .line 21
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 22
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aed"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

    .line 24
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aef"

    .line 25
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_UPDATE_REQUEST_CHAR:Ljava/util/UUID;

    .line 26
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939af0"

    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_FW_VERSION_CHAR:Ljava/util/UUID;

    .line 29
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e37"

    .line 30
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

    .line 31
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e38"

    .line 32
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

    .line 33
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e39"

    .line 34
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

    .line 35
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e3a"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_SFIDA_TO_CENTRAL_CHAR:Ljava/util/UUID;

    .line 38
    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    .line 39
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BATTERY_SERVICE:Ljava/util/UUID;

    .line 40
    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    .line 41
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlinkRed()[B
    .registers 1

    .prologue
    .line 1006
    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xdt
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
        0x1t
        0x0t
        0x0t
        0x1t
        0xft
        0x70t
    .end array-data
.end method

.method public static getCancelPattern()[B
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getCaptureSucceed()[B
    .registers 1

    .prologue
    .line 921
    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x2t
        0x0t
        -0x1t
        0x1t
        0x0t
        -0x71t
    .end array-data
.end method

.method public static getDonePattern()[B
    .registers 1

    .prologue
    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x4t
        0x3t
        0x0t
        0x0t
        0x2t
        0x0t
        0x70t
        0x1t
        0x0t
        0x0t
        0x2t
        0x0t
        0x70t
    .end array-data
.end method

.method public static getDowserCancel()[B
    .registers 1

    .prologue
    .line 767
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x18t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static getDowserProximity1()[B
    .registers 1

    .prologue
    .line 640
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x5t
        0xat
        -0x1t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0xat
        -0x1t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getDowserProximity2()[B
    .registers 1

    .prologue
    .line 664
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xat
        0x2t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x4t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getDowserProximity3()[B
    .registers 1

    .prologue
    .line 696
    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x7t
        0x2t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x4t
        -0x1t
        -0x71t
    .end array-data
.end method

.method public static getDowserProximity4()[B
    .registers 1

    .prologue
    .line 724
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x5t
        0x2t
        -0x1t
        -0x71t
        0x1t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x1t
        -0x1t
        -0x1t
        0x4t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getDowserProximity5()[B
    .registers 1

    .prologue
    .line 748
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x2t
        0x1t
        -0x1t
        -0x1t
        0x11t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getDowserVisible()[B
    .registers 1

    .prologue
    .line 608
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xat
        0x6t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x6t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x6t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x6t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x6t
        -0x1t
        -0x1t
        0x3t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getError()[B
    .registers 1

    .prologue
    .line 787
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x18t
        0xft
        -0x10t
    .end array-data
.end method

.method public static getIncorrectMorseGameEffect()[B
    .registers 1

    .prologue
    .line 967
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x3t
        0x2t
        0x8t
        -0x10t
        0x4t
        0x0t
        0x0t
        0xat
        0x8t
        -0x10t
    .end array-data
.end method

.method public static getManualPattern(IIIIIII)[B
    .registers 21
    .param p0, "playtime"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "vibrationStrength"    # I
    .param p5, "repeat"    # I
    .param p6, "interval"    # I

    .prologue
    .line 817
    const/4 v4, 0x3

    .line 818
    .local v4, "activitySize":I
    const/4 v11, 0x3

    new-array v1, v11, [B

    const/4 v11, 0x0

    int-to-byte v12, p0

    aput-byte v12, v1, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    const/4 v11, 0x2

    const/16 v12, -0x80

    aput-byte v12, v1, v11

    .line 819
    .local v1, "activity":[B
    const/4 v11, 0x3

    new-array v8, v11, [B

    const/4 v11, 0x0

    move/from16 v0, p6

    int-to-byte v12, v0

    aput-byte v12, v8, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v8, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-byte v12, v8, v11

    .line 821
    .local v8, "intervalActivity":[B
    const/4 v11, 0x0

    aget-byte v12, v1, v11

    or-int/2addr v12, p0

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 822
    const/4 v11, 0x1

    aget-byte v12, v1, v11

    shl-int/lit8 v13, p2, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 823
    const/4 v11, 0x1

    aget-byte v12, v1, v11

    or-int/2addr v12, p1

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 824
    const/4 v11, 0x2

    aget-byte v12, v1, v11

    or-int v12, v12, p3

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 825
    const/4 v11, 0x2

    aget-byte v12, v1, v11

    shl-int/lit8 v13, p4, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 827
    add-int/lit8 v11, p5, 0x1

    mul-int/lit8 v3, v11, 0x6

    .line 828
    .local v3, "activityLength":I
    add-int/lit8 v11, v3, 0x4

    new-array v10, v11, [B

    .line 830
    .local v10, "pattern":[B
    const/4 v6, 0x0

    .line 832
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget-byte v11, v10, v6

    or-int/lit8 v11, v11, 0x0

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    .line 835
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v10, v7

    or-int/lit8 v11, v11, 0x0

    int-to-byte v11, v11

    aput-byte v11, v10, v7

    .line 836
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aget-byte v11, v10, v6

    or-int/lit8 v11, v11, 0x0

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    .line 838
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v10, v7

    add-int/lit8 v12, p5, 0x1

    int-to-byte v12, v12

    mul-int/lit8 v12, v12, 0x2

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v7

    .line 841
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_7c
    add-int/lit8 v11, p5, 0x1

    if-ge v5, v11, :cond_9f

    .line 843
    const/4 v2, 0x0

    .local v2, "activityByteCount":I
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_82
    if-ge v2, v4, :cond_8e

    .line 844
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v1, v2

    aput-byte v11, v10, v7

    .line 843
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_82

    .line 848
    :cond_8e
    const/4 v9, 0x0

    .local v9, "intervalByteCount":I
    :goto_8f
    if-ge v9, v4, :cond_9b

    .line 849
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v8, v9

    aput-byte v11, v10, v7

    .line 848
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_8f

    .line 841
    :cond_9b
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_7c

    .line 853
    .end local v2    # "activityByteCount":I
    .end local v9    # "intervalByteCount":I
    :cond_9f
    return-object v10
.end method

.method public static getMorseGame1()[B
    .registers 1

    .prologue
    .line 862
    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x38t
        -0x2t
        -0x2t
        0xbt
        0x6t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x6t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
    .end array-data
.end method

.method public static getMorseGame2()[B
    .registers 1

    .prologue
    .line 891
    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x38t
        -0x2t
        -0x2t
        0xdt
        0x6t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x6t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x6t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
        0x7t
        0x0t
        0x0t
        0x2t
        0xft
        0x70t
    .end array-data
.end method

.method public static getNoPokeball()[B
    .registers 1

    .prologue
    .line 585
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x6t
        0x2t
        0xft
        -0x10t
        0xat
        0x0t
        -0x80t
        0x2t
        0xft
        -0x10t
        0xat
        0x0t
        -0x80t
        0x2t
        0xft
        -0x10t
        0xat
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getNotify()[B
    .registers 1

    .prologue
    .line 987
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        -0x38t
        -0x2t
        -0x2t
        0x1t
        0x2t
        0x8t
        -0x10t
    .end array-data
.end method

.method public static getPokeballNoShake()[B
    .registers 1

    .prologue
    .line 520
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x6t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getPokeballShakeOnce()[B
    .registers 1

    .prologue
    .line 491
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x8t
        0x3t
        -0x1t
        -0x1t
        0x19t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getPokeballShakeThree()[B
    .registers 1

    .prologue
    .line 427
    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xct
        0x3t
        -0x1t
        -0x1t
        0x19t
        0x0t
        -0x80t
        0x3t
        -0x1t
        -0x1t
        0x18t
        0x0t
        -0x80t
        0x3t
        -0x1t
        -0x1t
        0x18t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getPokeballShakeTwice()[B
    .registers 1

    .prologue
    .line 460
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xat
        0x3t
        -0x1t
        -0x1t
        0x19t
        0x0t
        -0x80t
        0x3t
        -0x1t
        -0x1t
        0x18t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
        0x1t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getPokemonCaught()[B
    .registers 1

    .prologue
    .line 546
    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x15t
        0x3t
        -0x1t
        -0x1t
        0x19t
        0x0t
        -0x80t
        0x3t
        -0x1t
        -0x1t
        0x18t
        0x0t
        -0x80t
        0x3t
        -0x1t
        -0x1t
        0x18t
        0x0t
        -0x80t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x3t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x3t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x3t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x3t
        0x0t
        -0x71t
        0x3t
        0x8t
        -0x10t
        0x3t
        -0x10t
        -0x10t
        0x3t
        0x0t
        -0x71t
    .end array-data
.end method

.method public static getReachedPokestop()[B
    .registers 1

    .prologue
    .line 111
    const/16 v0, 0x55

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1bt
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x4t
        0x0t
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x8t
        0x0t
        -0x1t
        0xat
        0x0t
        -0x80t
        0x2t
        0x0t
        -0x71t
        -0x1t
        0x0t
        -0x71t
        -0x15t
        0x0t
        -0x71t
    .end array-data
.end method

.method public static getReadyForThrowPokeball()[B
    .registers 1

    .prologue
    .line 370
    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x12t
        0x2t
        -0x10t
        -0x10t
        0xbt
        -0x10t
        -0x80t
        0xdt
        0x0t
        -0x80t
        0x2t
        -0x10t
        -0x10t
        0xbt
        -0x10t
        -0x80t
        0xdt
        0x0t
        -0x80t
        0x2t
        -0x10t
        -0x10t
        0xbt
        -0x10t
        -0x80t
        0xdt
        0x0t
        -0x80t
        0x2t
        -0x10t
        -0x10t
        0xbt
        -0x10t
        -0x80t
        0xdt
        0x0t
        -0x80t
        0x2t
        -0x10t
        -0x10t
        0xbt
        -0x10t
        -0x80t
        0xdt
        0x0t
        -0x80t
        0x2t
        -0x10t
        -0x80t
        -0x1t
        -0x10t
        -0x80t
        -0x2bt
        -0x10t
        -0x80t
    .end array-data
.end method

.method private static getRewardItemActivity(I)[B
    .registers 9
    .param p0, "vibrateCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x6

    .line 183
    if-ne p0, v7, :cond_c

    .line 184
    const/16 v4, 0x9

    new-array v3, v4, [B

    fill-array-data v3, :array_4a

    .line 220
    :cond_b
    :goto_b
    return-object v3

    .line 189
    :cond_c
    const/4 v4, 0x2

    if-ne p0, v4, :cond_17

    .line 190
    const/16 v4, 0xf

    new-array v3, v4, [B

    fill-array-data v3, :array_54

    goto :goto_b

    .line 197
    :cond_17
    const/4 v4, 0x3

    if-lt p0, v4, :cond_44

    .line 198
    const/4 v1, 0x6

    .line 199
    .local v1, "activityLength":I
    mul-int v4, p0, v1

    new-array v3, v4, [B

    .line 200
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_20
    if-ge v2, p0, :cond_b

    .line 202
    rem-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_34

    .line 204
    new-array v0, v6, [B

    fill-array-data v0, :array_60

    .line 218
    .local v0, "activity":[B
    :goto_2b
    const/4 v4, 0x0

    mul-int v5, v1, v2

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 207
    .end local v0    # "activity":[B
    :cond_34
    rem-int/lit8 v4, v2, 0x3

    if-ne v4, v7, :cond_3e

    .line 209
    new-array v0, v6, [B

    fill-array-data v0, :array_68

    .restart local v0    # "activity":[B
    goto :goto_2b

    .line 214
    .end local v0    # "activity":[B
    :cond_3e
    new-array v0, v6, [B

    fill-array-data v0, :array_70

    .restart local v0    # "activity":[B
    goto :goto_2b

    .line 222
    .end local v0    # "activity":[B
    .end local v1    # "activityLength":I
    .end local v2    # "count":I
    .end local v3    # "result":[B
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 184
    :array_4a
    .array-data 1
        0x2t
        -0x10t
        -0x80t
        0x2t
        0xft
        -0x10t
        0x2t
        0x0t
        -0x71t
    .end array-data

    .line 190
    nop

    :array_54
    .array-data 1
        0x2t
        -0x10t
        -0x10t
        0x1t
        -0x10t
        -0x80t
        0x2t
        0xft
        -0x10t
        0x1t
        0xft
        -0x80t
        0x3t
        0x0t
        -0x71t
    .end array-data

    .line 204
    :array_60
    .array-data 1
        0x2t
        0x0t
        -0x8t
        0x2t
        0x0t
        -0x71t
    .end array-data

    .line 209
    nop

    :array_68
    .array-data 1
        0x2t
        -0x80t
        -0x10t
        0x2t
        -0x10t
        -0x80t
    .end array-data

    .line 214
    nop

    :array_70
    .array-data 1
        0x2t
        0x8t
        -0x10t
        0x2t
        0xft
        -0x80t
    .end array-data
.end method

.method public static getRewardItems(I)[B
    .registers 8
    .param p0, "itemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 162
    const/4 v4, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_2c

    .line 170
    .local v2, "afterActivity":[B
    invoke-static {p0}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getRewardItemActivity(I)[B

    move-result-object v0

    .line 172
    .local v0, "activities":[B
    const/4 v4, 0x1

    new-array v1, v4, [B

    array-length v4, v0

    div-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 174
    .local v1, "activityCount":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 175
    .local v3, "result":[B
    array-length v4, v2

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v4, v2

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length v4, v2

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    return-object v3

    .line 162
    :array_2c
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getSecurityResponseForDebug()[B
    .registers 1

    .prologue
    .line 1045
    const-string v0, "0400000000000000000000000000000000000000"

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityResponseForDebug2()[B
    .registers 1

    .prologue
    .line 1052
    const-string v0, "050000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityResponseForDebug3()[B
    .registers 1

    .prologue
    .line 1059
    const-string v0, "0300000001"

    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSpawnedLegendaryPokemon()[B
    .registers 1

    .prologue
    .line 301
    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1et
        0x10t
        0xft
        -0x1t
        0x8t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x8t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x6t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x3t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x2t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
        0x10t
        0xft
        -0x1t
        0x1t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getSpawnedPokemon()[B
    .registers 1

    .prologue
    .line 231
    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xft
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x10t
        0x8t
        0x0t
        0x0t
        0x10t
        -0x10t
        -0x80t
        -0x1t
        -0x10t
        -0x80t
        -0x51t
        -0x10t
        -0x80t
    .end array-data
.end method

.method public static getSpawnedUncaughtPokemon()[B
    .registers 1

    .prologue
    .line 265
    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xft
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0xet
        -0x1t
        -0x10t
        0x2t
        0x0t
        0x0t
        0x40t
        -0x1t
        -0x80t
        -0x1t
        -0x1t
        -0x80t
        -0x51t
        -0x1t
        -0x80t
    .end array-data
.end method

.method public static getThrewPokeball()[B
    .registers 1

    .prologue
    .line 407
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x2t
        0x14t
        0x0t
        -0x10t
        0x4t
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getUpdateRequest()[B
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 1036
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    return-object v0
.end method
