.class public final Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightAnalyticsExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightAnalyticsExtension;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnalyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssociationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "mUncaughtExceptionHandlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/util/Opt<Ljava/lang/Thread$UncaughtExceptionHandler;>;>;"
    .local p2, "mAnalyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;"
    .local p3, "mClockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p4, "mUpsightLifeCycleCallbacksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    .local p5, "mAssociationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    .line 36
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAnalyticsProvider:Ljavax/inject/Provider;

    .line 38
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mClockProvider:Ljavax/inject/Provider;

    .line 40
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    .line 42
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_47
    iput-object p5, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAssociationManagerProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "mUncaughtExceptionHandlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/util/Opt<Ljava/lang/Thread$UncaughtExceptionHandler;>;>;"
    .local p1, "mAnalyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;"
    .local p2, "mClockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p3, "mUpsightLifeCycleCallbacksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    .local p4, "mAssociationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    new-instance v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMAnalytics(Lcom/upsight/android/UpsightAnalyticsExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "mAnalyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    iput-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .line 81
    return-void
.end method

.method public static injectMAssociationManager(Lcom/upsight/android/UpsightAnalyticsExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "mAssociationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/association/AssociationManager;

    iput-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 98
    return-void
.end method

.method public static injectMClock(Lcom/upsight/android/UpsightAnalyticsExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "mClockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/Clock;

    iput-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 86
    return-void
.end method

.method public static injectMUncaughtExceptionHandler(Lcom/upsight/android/UpsightAnalyticsExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "mUncaughtExceptionHandlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/util/Opt<Ljava/lang/Thread$UncaughtExceptionHandler;>;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/util/Opt;

    iput-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;

    .line 76
    return-void
.end method

.method public static injectMUpsightLifeCycleCallbacks(Lcom/upsight/android/UpsightAnalyticsExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "mUpsightLifeCycleCallbacksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mUpsightLifeCycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 92
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightAnalyticsExtension;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;

    .prologue
    .line 62
    if-nez p1, :cond_a

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/util/Opt;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;

    .line 66
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAnalyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .line 67
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/Clock;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 68
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mUpsightLifeCycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 69
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAssociationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/association/AssociationManager;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 70
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 12
    check-cast p1, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightAnalyticsExtension;)V

    return-void
.end method
