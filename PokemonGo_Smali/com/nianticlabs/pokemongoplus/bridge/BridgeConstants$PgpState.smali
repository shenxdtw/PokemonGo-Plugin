.class public final enum Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
.super Ljava/lang/Enum;
.source "BridgeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PgpState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Initialized:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Paused:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Resumed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Started:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Stopped:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field public static final enum Unknown:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Unknown:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Initialized:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Started"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Started:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Resumed"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Resumed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Paused:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Stopped:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    const-string v1, "BadValue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Unknown:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Initialized:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Started:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Resumed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Paused:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Stopped:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 11
    :goto_6
    return-object v1

    .line 10
    :catch_7
    move-exception v0

    .line 11
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    return-object v0
.end method
