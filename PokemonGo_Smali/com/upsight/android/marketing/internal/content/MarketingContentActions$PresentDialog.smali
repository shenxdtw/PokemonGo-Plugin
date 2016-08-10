.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresentDialog"
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

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 547
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 536
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 12
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 554
    .local v6, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "title":Ljava/lang/String;
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "message":Ljava/lang/String;
    const-string v1, "buttons"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 557
    .local v8, "buttons":Lcom/google/gson/JsonArray;
    const-string v1, "dismiss_trigger"

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, "dismissTrigger":Ljava/lang/String;
    const/4 v4, 0x0

    .line 560
    .local v4, "serializedButtons":Ljava/lang/String;
    if-eqz v8, :cond_25

    .line 561
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 564
    :cond_25
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentDialog;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v7, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 565
    .local v7, "bus":Lcom/squareup/otto/Bus;
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .local v0, "pendingDialog":Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
    new-instance v9, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V

    .line 568
    .local v9, "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    invoke-virtual {v7, v9}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 572
    return-void
.end method
