.class synthetic Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

.field static final synthetic $SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 249
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->values()[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

    :try_start_9
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->STOP:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    .line 201
    :goto_14
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->values()[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    :try_start_1d
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_50

    :goto_28
    :try_start_28
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOP_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    :catch_50
    move-exception v0

    goto :goto_28

    .line 249
    :catch_52
    move-exception v0

    goto :goto_14
.end method
