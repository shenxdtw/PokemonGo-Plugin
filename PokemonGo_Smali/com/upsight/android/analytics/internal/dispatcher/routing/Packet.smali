.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    }
.end annotation


# instance fields
.field private final mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

.field private final mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

.field private mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field private mTriedOnCurrentStep:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V
    .registers 4
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "route"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 44
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 45
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .line 46
    return-void
.end method


# virtual methods
.method public failAndRoute(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packet could not be failed because it was already delivered successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_12
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->failedOnCurrentStep(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 82
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->moveToNextStep()V

    .line 84
    :cond_27
    return-void
.end method

.method public getDeliveryHistory()Ljava/lang/String;
    .registers 8

    .prologue
    .line 112
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getRoutingStack()[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "stack":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_1d

    aget-object v2, v1, v3

    .line 116
    .local v2, "stackItem":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 119
    .end local v2    # "stackItem":Ljava/lang/String;
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    return-object v0
.end method

.method public getState()Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    return-object v0
.end method

.method public hasMoreOptionsToTry()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public markDelivered()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 60
    return-void
.end method

.method public markTrashed()V
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 67
    return-void
.end method

.method public routeToNext()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getCurrentQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->enqueuePacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 106
    return-void
.end method
