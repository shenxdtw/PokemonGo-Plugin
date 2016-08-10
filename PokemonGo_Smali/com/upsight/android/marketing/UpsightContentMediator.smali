.class public abstract Lcom/upsight/android/marketing/UpsightContentMediator;
.super Ljava/lang/Object;
.source "UpsightContentMediator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    .local p0, "this":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightContentMediator;)V
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "contentMediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 38
    const-string v1, "com.upsight.extension.marketing"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightMarketingExtension;

    .line 39
    .local v0, "extension":Lcom/upsight/android/UpsightMarketingExtension;
    if-eqz v0, :cond_12

    .line 40
    invoke-virtual {v0}, Lcom/upsight/android/UpsightMarketingExtension;->getApi()Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/marketing/UpsightMarketingApi;->registerContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)V

    .line 44
    :goto_11
    return-void

    .line 42
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.marketing must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method


# virtual methods
.method public abstract buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            "Lcom/google/gson/JsonObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getContentProvider()Ljava/lang/String;
.end method

.method public getDimensions(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<TT;>;"
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getPresentationStyle(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;)",
            "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<TT;>;"
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    sget-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    return-object v0
.end method

.method public abstract hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<TT;>;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation
.end method
