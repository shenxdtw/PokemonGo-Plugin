.class public final Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;
.super Ljava/lang/Object;
.source "DaggerMarketingComponent.java"

# interfaces
.implements Lcom/upsight/android/marketing/internal/MarketingComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private billboardDialogFragmentMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;",
            ">;"
        }
    .end annotation
.end field

.field private billboardManagementActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;",
            ">;"
        }
    .end annotation
.end field

.field private provideBillboardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultContentMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingContentMediatorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

.field private provideMarketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-boolean v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_f
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->initialize(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V
    .registers 8
    .param p1, "builder"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 83
    .line 85
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 90
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 89
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreImplFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    .line 95
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    .line 94
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 100
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$300(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 99
    invoke-static {v0, v1, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->create(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 98
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideBillboardManagerProvider:Ljavax/inject/Provider;

    .line 107
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    .line 106
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideUpsightMarketingContentStoreFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 111
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideDefaultContentMediatorFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 110
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideDefaultContentMediatorProvider:Ljavax/inject/Provider;

    .line 116
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideDefaultContentMediatorProvider:Ljavax/inject/Provider;

    .line 115
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentMediatorManagerFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 121
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideBillboardManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 120
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingApiProvider:Ljavax/inject/Provider;

    .line 128
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    .line 133
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$400(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/WebViewModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 132
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory;->create(Lcom/upsight/android/marketing/internal/content/WebViewModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    .line 138
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentMediatorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentFactoryProvider:Ljavax/inject/Provider;

    .line 145
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingApiProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideDefaultContentMediatorProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;

    .line 151
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 152
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->billboardManagementActivityMembersInjector:Ldagger/MembersInjector;

    .line 155
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 156
    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->billboardDialogFragmentMembersInjector:Ldagger/MembersInjector;

    .line 158
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .registers 2

    .prologue
    .line 36
    check-cast p1, Lcom/upsight/android/UpsightMarketingExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->inject(Lcom/upsight/android/UpsightMarketingExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightMarketingExtension;)V
    .registers 3
    .param p1, "arg0"    # Lcom/upsight/android/UpsightMarketingExtension;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public inject(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;)V
    .registers 3
    .param p1, "fragment"    # Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->billboardDialogFragmentMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public inject(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->billboardManagementActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
