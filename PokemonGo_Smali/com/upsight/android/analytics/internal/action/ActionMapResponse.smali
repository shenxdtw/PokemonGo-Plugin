.class public final Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
.super Ljava/lang/Object;
.source "ActionMapResponse.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.action_map"
.end annotation


# instance fields
.field actionFactory:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_factory"
    .end annotation
.end field

.field actionMap:Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_map"
    .end annotation
.end field

.field actionMapId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_5

    .line 72
    :cond_4
    :goto_4
    return v1

    .line 62
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 63
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .line 68
    .local v0, "that":Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    .line 69
    goto :goto_4

    .line 68
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getActionFactory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->actionFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getActionMap()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->actionMap:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getActionMapId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->actionMapId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
