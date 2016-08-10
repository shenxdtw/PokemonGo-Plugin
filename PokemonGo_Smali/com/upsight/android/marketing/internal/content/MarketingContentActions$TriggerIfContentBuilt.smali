.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerIfContentBuilt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONDITION_PARAMETERS:Ljava/lang/String; = "condition_parameters"

.field public static final CONTENT_MODEL:Ljava/lang/String; = "content_model"

.field public static final CONTENT_PROVIDER:Ljava/lang/String; = "content_provider"

.field public static final CONTENT_PROVIDER_NAME:Ljava/lang/String; = "name"

.field public static final ELSE_TRIGGER:Ljava/lang/String; = "else_trigger"

.field public static final THEN_TRIGGER:Ljava/lang/String; = "then_trigger"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 264
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 249
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 16
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 269
    const/4 v6, 0x0

    .line 271
    .local v6, "isContentBuilt":Z
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 274
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    const/4 v7, 0x0

    .line 275
    .local v7, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    const-string v10, "condition_parameters"

    invoke-virtual {p0, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "content_provider"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 276
    .local v2, "contentProvider":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_3a

    .line 277
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 278
    .local v3, "contentProviderName":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 279
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentMediatorManager:Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->getContentMediator(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v7

    .line 282
    .end local v3    # "contentProviderName":Lcom/google/gson/JsonElement;
    :cond_3a
    if-nez v7, :cond_42

    .line 283
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentMediatorManager:Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    invoke-virtual {v10}, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->getDefaultContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v7

    .line 285
    :cond_42
    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->setContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)V

    .line 288
    const/4 v8, 0x0

    .line 290
    .local v8, "model":Lcom/google/gson/JsonElement;
    :try_start_46
    const-string v10, "condition_parameters"

    invoke-virtual {p0, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "content_model"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    :try_end_51
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_51} :catch_97

    move-result-object v8

    .line 296
    :goto_52
    if-eqz v8, :cond_fb

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_fb

    .line 299
    :try_start_5a
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z

    .line 302
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v7, p1, v0, v10}, Lcom/upsight/android/marketing/UpsightContentMediator;->buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    .local v1, "contentModel":Ljava/lang/Object;
    if-eqz v1, :cond_c6

    const/4 v6, 0x1

    .line 304
    :goto_6e
    invoke-virtual {p1, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->setContentModel(Ljava/lang/Object;)V

    .line 305
    if-eqz v6, :cond_7a

    .line 307
    invoke-virtual {v7, p1, v0}, Lcom/upsight/android/marketing/UpsightContentMediator;->buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;

    move-result-object v4

    .line 308
    .local v4, "contentView":Landroid/view/View;
    invoke-virtual {p1, v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->setContentView(Landroid/view/View;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7a} :catch_c8

    .line 318
    .end local v1    # "contentModel":Ljava/lang/Object;
    .end local v4    # "contentView":Landroid/view/View;
    :cond_7a
    :goto_7a
    if-eqz v6, :cond_12e

    .line 319
    const-string v10, "then_trigger"

    invoke-virtual {p0, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "trigger":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 321
    invoke-virtual {p1, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 331
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v10

    check-cast v10, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v10, v10, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 332
    return-void

    .line 291
    .end local v9    # "trigger":Ljava/lang/String;
    :catch_97
    move-exception v5

    .line 292
    .local v5, "e":Ljava/lang/NullPointerException;
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action execution failed actionType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " invalid CONDITION_PARAMETERS"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v10, v11, v5, v12, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 303
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "contentModel":Ljava/lang/Object;
    :cond_c6
    const/4 v6, 0x0

    goto :goto_6e

    .line 310
    .end local v1    # "contentModel":Ljava/lang/Object;
    :catch_c8
    move-exception v5

    .line 311
    .local v5, "e":Ljava/lang/Exception;
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action execution failed actionType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " model="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v10, v11, v5, v12, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7a

    .line 314
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_fb
    iget-object v10, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action execution failed actionType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " model="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7a

    .line 324
    :cond_12e
    const-string v10, "else_trigger"

    invoke-virtual {p0, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 325
    .restart local v9    # "trigger":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 326
    invoke-virtual {p1, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    goto/16 :goto_8b
.end method
