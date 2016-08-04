.class public final enum Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;
.super Ljava/lang/Enum;
.source "SfidaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BluetoothError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum AlreadyAdvertising:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum ConnectionFailed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum ConnectionTimeout:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum InvalidHandle:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum InvalidParameters:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum NotConnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum OperationCancelled:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum OutOfSpace:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum PeripheralDisconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum UUIDNotAllowed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

.field public static final enum Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 54
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 55
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "InvalidParameters"

    invoke-direct {v0, v1, v4, v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->InvalidParameters:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 56
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "InvalidHandle"

    invoke-direct {v0, v1, v5, v6}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->InvalidHandle:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 57
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "NotConnected"

    invoke-direct {v0, v1, v6, v7}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->NotConnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 58
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "OutOfSpace"

    invoke-direct {v0, v1, v7, v8}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->OutOfSpace:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 59
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "OperationCancelled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->OperationCancelled:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 60
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "ConnectionTimeout"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->ConnectionTimeout:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 61
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "PeripheralDisconnected"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->PeripheralDisconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 62
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "UUIDNotAllowed"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->UUIDNotAllowed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 63
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "AlreadyAdvertising"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->AlreadyAdvertising:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 64
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const-string v1, "ConnectionFailed"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->ConnectionFailed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .line 53
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->InvalidParameters:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->InvalidHandle:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->NotConnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->OutOfSpace:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->OperationCancelled:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->ConnectionTimeout:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->PeripheralDisconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->UUIDNotAllowed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->AlreadyAdvertising:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->ConnectionFailed:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->id:I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->id:I

    return v0
.end method
