.class public final Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;
.super Ljava/lang/Object;
.source "ManualTracker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final manualTrackerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

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
    .line 10
    const-class v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "manualTrackerMembersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/analytics/internal/session/ManualTracker;>;"
    .local p2, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p3, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->manualTrackerMembersInjector:Ldagger/MembersInjector;

    .line 27
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 29
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "manualTrackerMembersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/analytics/internal/session/ManualTracker;>;"
    .local p1, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/session/ManualTracker;
    .registers 5

    .prologue
    .line 35
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->manualTrackerMembersInjector:Ldagger/MembersInjector;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    invoke-direct {v3, v0, v1}, Lcom/upsight/android/analytics/internal/session/ManualTracker;-><init>(Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/UpsightContext;)V

    .line 35
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->get()Lcom/upsight/android/analytics/internal/session/ManualTracker;

    move-result-object v0

    return-object v0
.end method
