.class public final Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightMarketingExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightMarketingExtension;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDefaultContentMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarketingContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarketingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->$assertionsDisabled:Z

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
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mMarketingProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingApi;>;"
    .local p2, "mMarketingContentFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;>;"
    .local p3, "mDefaultContentMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mMarketingProvider:Ljavax/inject/Provider;

    .line 28
    sget-boolean v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mMarketingContentFactoryProvider:Ljavax/inject/Provider;

    .line 30
    sget-boolean v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mDefaultContentMediatorProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "mMarketingProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingApi;>;"
    .local p1, "mMarketingContentFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;>;"
    .local p2, "mDefaultContentMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;>;"
    new-instance v0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMDefaultContentMediator(Lcom/upsight/android/UpsightMarketingExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightMarketingExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "mDefaultContentMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    iput-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension;->mDefaultContentMediator:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .line 67
    return-void
.end method

.method public static injectMMarketing(Lcom/upsight/android/UpsightMarketingExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightMarketingExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "mMarketingProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingApi;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightMarketingApi;

    iput-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension;->mMarketing:Lcom/upsight/android/marketing/UpsightMarketingApi;

    .line 55
    return-void
.end method

.method public static injectMMarketingContentFactory(Lcom/upsight/android/UpsightMarketingExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightMarketingExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "mMarketingContentFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    iput-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension;->mMarketingContentFactory:Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    .line 61
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightMarketingExtension;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/UpsightMarketingExtension;

    .prologue
    .line 44
    if-nez p1, :cond_a

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mMarketingProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightMarketingApi;

    iput-object v0, p1, Lcom/upsight/android/UpsightMarketingExtension;->mMarketing:Lcom/upsight/android/marketing/UpsightMarketingApi;

    .line 48
    iget-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mMarketingContentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    iput-object v0, p1, Lcom/upsight/android/UpsightMarketingExtension;->mMarketingContentFactory:Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    .line 49
    iget-object v0, p0, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->mDefaultContentMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    iput-object v0, p1, Lcom/upsight/android/UpsightMarketingExtension;->mDefaultContentMediator:Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    .line 50
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 10
    check-cast p1, Lcom/upsight/android/UpsightMarketingExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightMarketingExtension;)V

    return-void
.end method
