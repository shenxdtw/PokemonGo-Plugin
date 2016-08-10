.class synthetic Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;
.super Ljava/lang/Object;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

.field static final synthetic $SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 470
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    :try_start_9
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_a0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_9e

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_9c

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Certified:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_9a

    .line 305
    :goto_35
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->values()[Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    :try_start_3e
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Started:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_98

    :goto_49
    :try_start_49
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Resumed:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_96

    :goto_54
    :try_start_54
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Initialized:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_94

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Paused:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_92

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Stopped:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_90

    :goto_75
    :try_start_75
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->BadValue:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_8e

    :goto_80
    :try_start_80
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Unknown:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_8c

    :goto_8b
    return-void

    :catch_8c
    move-exception v0

    goto :goto_8b

    :catch_8e
    move-exception v0

    goto :goto_80

    :catch_90
    move-exception v0

    goto :goto_75

    :catch_92
    move-exception v0

    goto :goto_6a

    :catch_94
    move-exception v0

    goto :goto_5f

    :catch_96
    move-exception v0

    goto :goto_54

    :catch_98
    move-exception v0

    goto :goto_49

    .line 470
    :catch_9a
    move-exception v0

    goto :goto_35

    :catch_9c
    move-exception v0

    goto :goto_2a

    :catch_9e
    move-exception v0

    goto :goto_1f

    :catch_a0
    move-exception v0

    goto/16 :goto_14
.end method
