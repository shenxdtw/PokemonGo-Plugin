.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UxmEnumerate"
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


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 143
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .registers 11
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    .line 152
    .local v0, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    iget-object v5, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v6, "com.upsight.extension.managedvariables"

    .line 154
    invoke-virtual {v5, v6}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .line 157
    .local v2, "extension":Lcom/upsight/android/UpsightManagedVariablesExtension;
    if-eqz v2, :cond_2a

    .line 158
    invoke-virtual {v2}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;

    invoke-interface {v5}, Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;->uxmSchema()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    move-result-object v5

    iget-object v4, v5, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 161
    .local v4, "uxmSchemaString":Ljava/lang/String;
    :try_start_1c
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "uxmSchema":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;->createBuilder(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5, v6}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2a} :catch_30

    .line 169
    .end local v3    # "uxmSchema":Lorg/json/JSONArray;
    .end local v4    # "uxmSchemaString":Ljava/lang/String;
    :cond_2a
    :goto_2a
    iget-object v5, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 170
    return-void

    .line 163
    .restart local v4    # "uxmSchemaString":Ljava/lang/String;
    :catch_30
    move-exception v1

    .line 164
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v5

    const-string v6, "Upsight"

    const-string v7, "Failed to send UXM enumerate event"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v1, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method
