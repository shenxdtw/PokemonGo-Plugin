.class public final Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;
.super Ljava/lang/Object;
.source "DaggerGooglePushServicesComponent.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private googlePushServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;"
        }
    .end annotation
.end field

.field private provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;"
        }
    .end annotation
.end field

.field private provideGooglePushServicesApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;"
        }
    .end annotation
.end field

.field private providePushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
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

.field private pushClickIntentServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
            ">;"
        }
    .end annotation
.end field

.field private pushIntentServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
            ">;"
        }
    .end annotation
.end field

.field private upsightGooglePushServicesExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_f
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->initialize(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 51
    .line 52
    # getter for: Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 57
    # getter for: Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 56
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 59
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 60
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->googlePushServicesProvider:Ljavax/inject/Provider;

    .line 67
    # getter for: Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->googlePushServicesProvider:Ljavax/inject/Provider;

    .line 66
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGooglePushServicesApiProvider:Ljavax/inject/Provider;

    .line 69
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGooglePushServicesApiProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 70
    invoke-static {v0, v1}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->upsightGooglePushServicesExtensionMembersInjector:Ldagger/MembersInjector;

    .line 76
    # getter for: Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$200(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 75
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->create(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;

    .line 78
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 79
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->pushIntentServiceMembersInjector:Ldagger/MembersInjector;

    .line 85
    # getter for: Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 84
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideSessionManagerFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideSessionManagerProvider:Ljavax/inject/Provider;

    .line 87
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideSessionManagerProvider:Ljavax/inject/Provider;

    .line 88
    invoke-static {v0}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->pushClickIntentServiceMembersInjector:Ldagger/MembersInjector;

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->inject(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V
    .registers 3
    .param p1, "arg0"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->upsightGooglePushServicesExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V
    .registers 3
    .param p1, "pushClickIntentService"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->pushClickIntentServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public inject(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V
    .registers 3
    .param p1, "pushIntentService"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->pushIntentServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
