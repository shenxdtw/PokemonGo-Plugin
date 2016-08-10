.class public final Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;
.super Ljava/lang/Object;
.source "DispatcherService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/analytics/internal/DispatcherService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "mConfigurationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;>;"
    .local p2, "mDispatcherProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mDispatcherProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "mConfigurationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;>;"
    .local p1, "mDispatcherProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMConfigurationManager(Lcom/upsight/android/analytics/internal/DispatcherService;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "mConfigurationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .line 46
    return-void
.end method

.method public static injectMDispatcher(Lcom/upsight/android/analytics/internal/DispatcherService;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mDispatcherProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .line 51
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 36
    if-nez p1, :cond_a

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mConfigurationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    iput-object v0, p1, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .line 40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iput-object v0, p1, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .line 41
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->injectMembers(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    return-void
.end method
