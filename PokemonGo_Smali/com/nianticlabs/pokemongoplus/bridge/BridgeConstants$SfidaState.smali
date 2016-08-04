.class public final enum Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
.super Ljava/lang/Enum;
.source "BridgeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SfidaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Certified:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Connected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Discovered:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum Failed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field public static final enum SoftwareUpdate:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Discovered"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Discovered:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Certified"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Certified:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "SoftwareUpdate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->SoftwareUpdate:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "Failed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Failed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    const-string v1, "BadValue"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Discovered:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Certified:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->SoftwareUpdate:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Failed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 22
    :goto_6
    return-object v1

    .line 21
    :catch_7
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    return-object v0
.end method
