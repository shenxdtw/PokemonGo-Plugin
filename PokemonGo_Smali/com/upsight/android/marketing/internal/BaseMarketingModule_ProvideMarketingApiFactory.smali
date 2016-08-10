.class public final Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;
.super Ljava/lang/Object;
.source "BaseMarketingModule_ProvideMarketingApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/UpsightMarketingApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final billboardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contentMediatorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 6
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p3, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    .local p4, "contentMediatorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 33
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 35
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->contentStoreProvider:Ljavax/inject/Provider;

    .line 37
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->contentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 5
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p2, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    .local p3, "contentMediatorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;-><init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/UpsightMarketingApi;
    .registers 5

    .prologue
    .line 43
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboardManager;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->contentStoreProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->contentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    .line 44
    invoke-virtual {v3, v0, v1, v2}, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->provideMarketingApi(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;)Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightMarketingApi;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->get()Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v0

    return-object v0
.end method
