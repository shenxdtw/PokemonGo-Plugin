.class public final Lcom/upsight/android/marketing/internal/Marketing_Factory;
.super Ljava/lang/Object;
.source "Marketing_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/internal/Marketing;",
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

.field private final marketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 24
    .local p1, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p2, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    .local p3, "contentMediatorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 27
    sget-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    .line 29
    sget-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->contentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/upsight/android/marketing/internal/Marketing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p1, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    .local p2, "contentMediatorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/marketing/internal/Marketing_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/internal/Marketing;
    .registers 5

    .prologue
    .line 35
    new-instance v3, Lcom/upsight/android/marketing/internal/Marketing;

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboardManager;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->contentMediatorManagerProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/upsight/android/marketing/internal/Marketing;-><init>(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/Marketing_Factory;->get()Lcom/upsight/android/marketing/internal/Marketing;

    move-result-object v0

    return-object v0
.end method
