.class public final Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "PushIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mGcmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsightProvider:Ljavax/inject/Provider;
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
    .line 9
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->$assertionsDisabled:Z

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
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "mGcmProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/android/gms/gcm/GoogleCloudMessaging;>;"
    .local p2, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mGcmProvider:Ljavax/inject/Provider;

    .line 22
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "mGcmProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/android/gms/gcm/GoogleCloudMessaging;>;"
    .local p1, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMGcm(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "mGcmProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/android/gms/gcm/GoogleCloudMessaging;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 43
    return-void
.end method

.method public static injectMUpsight(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 48
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .prologue
    .line 33
    if-nez p1, :cond_a

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mGcmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    iput-object v0, p1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 37
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iput-object v0, p1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 38
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMembers(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V

    return-void
.end method
