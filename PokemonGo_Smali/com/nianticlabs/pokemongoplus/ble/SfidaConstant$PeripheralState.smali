.class public final enum Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
.super Ljava/lang/Enum;
.source "SfidaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeripheralState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

.field public static final enum Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

.field public static final enum Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

.field public static final enum Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 79
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v3, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 80
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v4, v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->id:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->id:I

    return v0
.end method
