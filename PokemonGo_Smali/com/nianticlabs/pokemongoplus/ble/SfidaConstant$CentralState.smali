.class public final enum Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;
.super Ljava/lang/Enum;
.source "SfidaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CentralState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum Resetting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum Unauthorized:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

.field public static final enum Unsupported:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 96
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "Resetting"

    invoke-direct {v0, v1, v5, v5}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Resetting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 97
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1, v6, v6}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unsupported:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 98
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "Unauthorized"

    invoke-direct {v0, v1, v7, v7}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unauthorized:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 99
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "PoweredOff"

    invoke-direct {v0, v1, v8, v8}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 100
    new-instance v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    const-string v1, "PoweredOn"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Resetting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unsupported:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unauthorized:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->id:I

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->id:I

    return v0
.end method
