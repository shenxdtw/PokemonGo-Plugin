.class public final Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;
.super Ljava/lang/Object;
.source "UxmContentFactory.java"


# static fields
.field private static final ACTION_MODIFY_VALUE:Ljava/lang/String; = "action_modify_value"

.field private static final ACTION_SET_BUNDLE_ID:Ljava/lang/String; = "action_set_bundle_id"

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field private static final sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;


# instance fields
.field private mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

.field private mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V
    .registers 3
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 35
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .line 36
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/analytics/internal/action/ActionMapResponse;)Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .registers 15
    .param p1, "actionMapResponse"    # Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .prologue
    .line 39
    const/4 v8, 0x0

    .line 40
    .local v8, "uxmContent":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMapId()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9d

    const-string v9, "datastore_factory"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionFactory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 43
    const/4 v5, 0x0

    .line 44
    .local v5, "shouldApplyBundle":Z
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMap()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 45
    .local v1, "actionMapNode":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 46
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 47
    .local v6, "triggersNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "actions"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 48
    .local v3, "actionsNode":Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_8a

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 49
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 50
    .local v2, "actionNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const-string v12, "action_type"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 51
    .local v7, "typeNode":Lcom/google/gson/JsonElement;
    const-string v11, "action_set_bundle_id"

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_80

    const-string v11, "action_modify_value"

    .line 52
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 54
    :cond_80
    iget-object v10, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    invoke-virtual {v10}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->getHandler()Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    move-result-object v10

    invoke-interface {v10}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;->onReceive()Z

    move-result v5

    .line 59
    .end local v2    # "actionNode":Lcom/google/gson/JsonElement;
    .end local v7    # "typeNode":Lcom/google/gson/JsonElement;
    :cond_8a
    if-eqz v5, :cond_2c

    .line 65
    .end local v3    # "actionsNode":Lcom/google/gson/JsonElement;
    .end local v6    # "triggersNode":Lcom/google/gson/JsonElement;
    :cond_8c
    new-instance v0, Lcom/upsight/android/analytics/internal/action/ActionMap;

    sget-object v9, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    iget-object v10, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 66
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/upsight/android/analytics/internal/action/ActionMap;-><init>(Lcom/upsight/android/analytics/internal/action/ActionFactory;Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/google/gson/JsonArray;)V

    .line 67
    .local v0, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    invoke-static {v4, v0, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;Z)Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    move-result-object v8

    .line 70
    .end local v0    # "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    .end local v1    # "actionMapNode":Lcom/google/gson/JsonElement;
    .end local v5    # "shouldApplyBundle":Z
    :cond_9d
    return-object v8
.end method
