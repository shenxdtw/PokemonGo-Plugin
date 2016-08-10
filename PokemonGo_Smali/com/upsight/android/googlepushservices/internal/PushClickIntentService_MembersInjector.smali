.class public final Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "PushClickIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "mSessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->mSessionManagerProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "mSessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;

    invoke-direct {v0, p0}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMSessionManager(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "mSessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 37
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .prologue
    .line 28
    if-nez p1, :cond_a

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->mSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    iput-object v0, p1, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 32
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->injectMembers(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    return-void
.end method
