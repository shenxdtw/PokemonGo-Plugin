.class public final Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;
.super Ljava/lang/Object;
.source "BillboardModule_ProvideBillboardManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/UpsightBillboardManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 29
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 31
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->contentStoreProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/UpsightBillboardManager;
    .registers 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->contentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {v2, v0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;->provideBillboardManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;)Lcom/upsight/android/marketing/UpsightBillboardManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboardManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->get()Lcom/upsight/android/marketing/UpsightBillboardManager;

    move-result-object v0

    return-object v0
.end method
