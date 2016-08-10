.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyUxmValuesSynchronized"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAGS:Ljava/lang/String; = "tags"


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 360
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 360
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .registers 9
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "synchronizedTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "tags"

    invoke-virtual {p0, v4}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 372
    .local v3, "tagNodes":Lcom/google/gson/JsonArray;
    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->shouldApplyBundle()Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v3, :cond_3b

    .line 373
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 374
    .local v2, "tagNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 375
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 380
    .end local v2    # "tagNode":Lcom/google/gson/JsonElement;
    :cond_3b
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$NotifyUxmValuesSynchronized;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v0, v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 381
    .local v0, "bus":Lcom/squareup/otto/Bus;
    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 385
    return-void
.end method
