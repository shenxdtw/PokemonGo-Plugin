.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyPurchases"
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
.field public static final PURCHASES:Ljava/lang/String; = "purchases"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 822
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gson/JsonObject;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .registers 2

    .prologue
    .line 817
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 15
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 827
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v7, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    const-string v9, "purchases"

    invoke-virtual {p0, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;->optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 831
    .local v8, "purchasesJson":Lcom/google/gson/JsonElement;
    if-eqz v8, :cond_5d

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 832
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    .line 833
    .local v1, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 834
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 835
    const/4 v6, 0x0

    .line 837
    .local v6, "purchaseJson":Lcom/google/gson/JsonElement;
    :try_start_26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/google/gson/JsonElement;

    move-object v6, v0

    .line 838
    iget-object v9, v1, Lcom/upsight/android/analytics/internal/action/ActionContext;->mGson:Lcom/google/gson/Gson;

    invoke-static {v6, v9}, Lcom/upsight/android/marketing/internal/content/Purchase;->from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/UpsightPurchase;

    move-result-object v5

    .line 839
    .local v5, "purchase":Lcom/upsight/android/marketing/UpsightPurchase;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_1f

    .line 840
    .end local v5    # "purchase":Lcom/upsight/android/marketing/UpsightPurchase;
    :catch_38
    move-exception v3

    .line 841
    .local v3, "e":Ljava/io/IOException;
    iget-object v9, v1, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse Purchase purchaseJson="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v3, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 846
    .end local v1    # "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .end local v6    # "purchaseJson":Lcom/google/gson/JsonElement;
    :cond_5d
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v9

    check-cast v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v2, v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 847
    .local v2, "bus":Lcom/squareup/otto/Bus;
    new-instance v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v7, v11}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {v2, v9}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 850
    invoke-virtual {p1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 851
    return-void
.end method
