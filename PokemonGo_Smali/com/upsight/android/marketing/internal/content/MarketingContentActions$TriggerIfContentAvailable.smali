.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerIfContentAvailable"
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

.field public static final ELSE_TRIGGER:Ljava/lang/String; = "else_trigger"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final THEN_TRIGGER:Ljava/lang/String; = "then_trigger"

.field public static final TIMEOUT_MS:Ljava/lang/String; = "timeout_ms"


# instance fields
.field private isTriggerExecuted:Z

.field private mConditionalContentID:Ljava/lang/String;

.field private mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

.field private mSubscription:Lrx/Subscription;


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 5
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    return p1
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 341
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 14
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    const/4 v11, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 368
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 371
    const-wide/16 v4, 0x0

    .line 373
    .local v4, "timeoutMs":J
    :try_start_b
    const-string v7, "condition_parameters"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 374
    .local v2, "conditionalParameters":Lcom/google/gson/JsonObject;
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    .line 375
    const-string v7, "timeout_ms"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_2a} :catch_62

    move-result-wide v4

    .line 380
    .end local v2    # "conditionalParameters":Lcom/google/gson/JsonObject;
    :goto_2b
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    if-eqz v7, :cond_a6

    .line 381
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iget-object v8, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 382
    .local v1, "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isLoaded()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 383
    const-string v7, "then_trigger"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "trigger":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    iget-boolean v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v7, :cond_56

    .line 385
    invoke-virtual {p1, v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 386
    iput-boolean v11, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 411
    .end local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v6    # "trigger":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v7, v7, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 412
    return-void

    .line 376
    :catch_62
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/NullPointerException;
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action execution failed actionType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " invalid CONDITION_PARAMETERS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v3, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b

    .line 389
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_91
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v7, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 390
    iget-object v7, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mMainWorker:Lrx/Scheduler$Worker;

    new-instance v8, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;

    invoke-direct {v8, p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable$1;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v4, v5, v9}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v7

    iput-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mSubscription:Lrx/Subscription;

    goto :goto_56

    .line 403
    .end local v1    # "conditionalContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_a6
    const-string v7, "else_trigger"

    invoke-virtual {p0, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .restart local v6    # "trigger":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    iget-boolean v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v7, :cond_56

    .line 405
    invoke-virtual {p1, v6}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 406
    iput-boolean v11, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    goto :goto_56
.end method

.method public handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mConditionalContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 417
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mSubscription:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 418
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 420
    const-string v1, "then_trigger"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "trigger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    if-nez v1, :cond_34

    .line 422
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;->isTriggerExecuted:Z

    .line 426
    .end local v0    # "trigger":Ljava/lang/String;
    :cond_34
    return-void
.end method
