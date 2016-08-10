.class public Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;
.super Ljava/lang/Object;
.source "MarketingContentMediatorManager.java"


# instance fields
.field private mDefaultContentMediator:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

.field private mMediators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightContentMediator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;)V
    .registers 3
    .param p1, "defaultContentMediator"    # Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mMediators:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mDefaultContentMediator:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .line 34
    return-void
.end method


# virtual methods
.method getContentMediator(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightContentMediator;
    .registers 3
    .param p1, "contentProvider"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mMediators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightContentMediator;

    return-object v0
.end method

.method getContentProviders()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mMediators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDefaultContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mDefaultContentMediator:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    return-object v0
.end method

.method public register(Lcom/upsight/android/marketing/UpsightContentMediator;)V
    .registers 4
    .param p1, "contentMediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->mMediators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/UpsightContentMediator;->getContentProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
