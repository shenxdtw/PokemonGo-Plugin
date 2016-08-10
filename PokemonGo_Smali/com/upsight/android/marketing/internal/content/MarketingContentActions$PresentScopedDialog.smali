.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresentScopedDialog"
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
.field public static final BUTTONS:Ljava/lang/String; = "buttons"

.field public static final DISMISS_TRIGGER:Ljava/lang/String; = "dismiss_trigger"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final SCOPE_LIST:Ljava/lang/String; = "scope_list"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 466
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 14
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 486
    .local v6, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    const-string v0, "scope_list"

    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v9

    .line 487
    .local v9, "scopeList":Lcom/google/gson/JsonArray;
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "title":Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "message":Ljava/lang/String;
    const-string v0, "buttons"

    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 490
    .local v7, "buttons":Lcom/google/gson/JsonArray;
    const-string v0, "dismiss_trigger"

    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "dismissTrigger":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v10, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 494
    .local v8, "scope":Lcom/google/gson/JsonElement;
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 495
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 499
    .end local v8    # "scope":Lcom/google/gson/JsonElement;
    :cond_51
    const/4 v4, 0x0

    .line 500
    .local v4, "serializedButtons":Ljava/lang/String;
    if-eqz v7, :cond_58

    .line 501
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    :cond_58
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->addPendingDialog(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V

    .line 506
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedDialog;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v1, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v11, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->presentScopedContent(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 509
    iget-object v0, v6, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 510
    return-void
.end method
