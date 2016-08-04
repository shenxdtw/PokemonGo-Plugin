.class public Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;
.super Ljava/lang/Object;
.source "SfidaConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;,
        Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;,
        Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;
    }
.end annotation


# static fields
.field public static final PERIPHERAL_NAME:Ljava/lang/String; = "Pokemon GO Plus"

.field public static final SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_1:Ljava/lang/String; = "4010"

.field public static final SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_2:Ljava/lang/String; = "5000"

.field public static final SFIDA_RESPONSE_CERTIFICATION_COMPLETE:Ljava/lang/String; = "4020"

.field public static final SFIDA_RESPONSE_CERTIFICATION_NOTIFY:Ljava/lang/String; = "3000"

.field public static final UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

.field public static final UUID_BATTERY_SERVICE:Ljava/util/UUID;

.field public static final UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

.field public static final UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

.field public static final UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

.field public static final UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

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
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    .line 13
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_FW_UPDATE_SERVICE:Ljava/util/UUID;

    .line 15
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aeb"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_DEVICE_CONTROL_SERVICE:Ljava/util/UUID;

    .line 17
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aec"

    .line 18
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_LED_VIBRATE_CTRL_CHAR:Ljava/util/UUID;

    .line 19
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aed"

    .line 20
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_BUTTON_NOTIF_CHAR:Ljava/util/UUID;

    .line 21
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939aef"

    .line 22
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_FW_UPDATE_REQUEST_CHAR:Ljava/util/UUID;

    .line 23
    const-string v0, "21c50462-67cb-63a3-5c4c-82b5b9939af0"

    .line 24
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_FW_VERSION_CHAR:Ljava/util/UUID;

    .line 26
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e37"

    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CERTIFICATE_SERVICE:Ljava/util/UUID;

    .line 28
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e38"

    .line 29
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CENTRAL_TO_SFIDA_CHAR:Ljava/util/UUID;

    .line 30
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e39"

    .line 31
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_SFIDA_COMMANDS_CHAR:Ljava/util/UUID;

    .line 32
    const-string v0, "bbe87709-5b89-4433-ab7f-8b8eef0d8e3a"

    .line 33
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_SFIDA_TO_CENTRAL_CHAR:Ljava/util/UUID;

    .line 35
    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_BATTERY_SERVICE:Ljava/util/UUID;

    .line 37
    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    .line 38
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_BATTERY_LEVEL_CHAR:Ljava/util/UUID;

    .line 44
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 45
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
