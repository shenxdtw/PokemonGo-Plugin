.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifyValue"
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
.field private static final MATCH:Ljava/lang/String; = "match"

.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final OPERATOR_SET:Ljava/lang/String; = "set"

.field private static final PROPERTY_NAME:Ljava/lang/String; = "property_name"

.field private static final PROPERTY_VALUE:Ljava/lang/String; = "property_value"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VALUES:Ljava/lang/String; = "values"


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V
    .registers 29
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .param p3, "matchers"    # Lcom/google/gson/JsonArray;
    .param p4, "values"    # Lcom/google/gson/JsonArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gson/JsonArray;",
            "Lcom/google/gson/JsonArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v8

    check-cast v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 259
    .local v8, "actionContext":Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    iget-object v6, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mGson:Lcom/google/gson/Gson;

    .line 260
    .local v6, "gson":Lcom/google/gson/Gson;
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v9

    .line 261
    .local v9, "logger":Lcom/upsight/android/logger/UpsightLogger;
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v5

    .line 264
    .local v5, "dataStore":Lcom/upsight/android/persistence/UpsightDataStore;
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$1;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/google/gson/Gson;)V

    .line 265
    invoke-virtual {v3, v4}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    .line 271
    invoke-virtual {v3, v4}, Lrx/Observable;->cast(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v16

    .line 274
    .local v16, "fetchObservable":Lrx/Observable;, "Lrx/Observable<Lcom/google/gson/JsonObject;>;"
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 275
    .local v21, "seedNode":Lcom/google/gson/JsonObject;
    invoke-virtual/range {p3 .. p3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/gson/JsonElement;

    .line 276
    .local v17, "matcher":Lcom/google/gson/JsonElement;
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v7, "property_name"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 277
    .local v19, "propertyName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v7, "property_value"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    .line 280
    .local v20, "propertyValue":Lcom/google/gson/JsonElement;
    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    .line 288
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_34

    .line 292
    .end local v17    # "matcher":Lcom/google/gson/JsonElement;
    .end local v19    # "propertyName":Ljava/lang/String;
    .end local v20    # "propertyValue":Lcom/google/gson/JsonElement;
    :cond_73
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v16

    .line 295
    invoke-virtual/range {p4 .. p4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7f
    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/gson/JsonElement;

    .line 296
    .local v22, "value":Lcom/google/gson/JsonElement;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v7, "operator"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    .line 297
    .local v18, "operator":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v7, "property_name"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 298
    .restart local v19    # "propertyName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v7, "property_value"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    .line 300
    .restart local v20    # "propertyValue":Lcom/google/gson/JsonElement;
    const-string v4, "set"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 301
    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$3;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    goto :goto_7f

    .line 312
    .end local v18    # "operator":Ljava/lang/String;
    .end local v19    # "propertyName":Ljava/lang/String;
    .end local v20    # "propertyValue":Lcom/google/gson/JsonElement;
    .end local v22    # "value":Lcom/google/gson/JsonElement;
    :cond_cd
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    iget-object v4, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 313
    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v23

    new-instance v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/google/gson/Gson;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    new-instance v10, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;)V

    .line 314
    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v10}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 352
    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 198
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .registers 12
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 220
    const/4 v2, 0x1

    .line 221
    .local v2, "isSync":Z
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    .line 222
    .local v0, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->shouldApplyBundle()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 223
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "type":Ljava/lang/String;
    const-string v6, "match"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 225
    .local v3, "matchers":Lcom/google/gson/JsonArray;
    const-string v6, "values"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 227
    .local v5, "values":Lcom/google/gson/JsonArray;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    if-eqz v3, :cond_38

    if-eqz v5, :cond_38

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.upsight.uxm.string"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 230
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;

    .line 239
    :cond_32
    :goto_32
    if-eqz v1, :cond_61

    .line 240
    invoke-direct {p0, p1, v1, v3, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V

    .line 241
    const/4 v2, 0x0

    .line 251
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "matchers":Lcom/google/gson/JsonArray;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "values":Lcom/google/gson/JsonArray;
    :cond_38
    :goto_38
    if-eqz v2, :cond_3f

    .line 252
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 254
    :cond_3f
    return-void

    .line 231
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "matchers":Lcom/google/gson/JsonArray;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "values":Lcom/google/gson/JsonArray;
    :cond_40
    const-string v6, "com.upsight.uxm.boolean"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 232
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;

    goto :goto_32

    .line 233
    :cond_4b
    const-string v6, "com.upsight.uxm.integer"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 234
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;

    goto :goto_32

    .line 235
    :cond_56
    const-string v6, "com.upsight.uxm.float"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 236
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;

    goto :goto_32

    .line 243
    :cond_61
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to execute action_modify_value due to unknown managed variable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38
.end method
