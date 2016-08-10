.class public final Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/AnalyticsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activityLifecycleTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/AnalyticsContext;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private configParserProvider:Ljavax/inject/Provider;

.field private configParserProvider2:Ljavax/inject/Provider;

.field private configurationResponseParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
            ">;"
        }
    .end annotation
.end field

.field private dispatcherServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            ">;"
        }
    .end annotation
.end field

.field private locationTrackerProvider:Ljavax/inject/Provider;

.field private managerConfigParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;",
            ">;"
        }
    .end annotation
.end field

.field private manualTrackerProvider:Ljavax/inject/Provider;

.field private optOutStatusProvider:Ljavax/inject/Provider;

.field private provideAssociationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideGooglePlayHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideManualTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideQueueBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideResponseVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private provideRouterBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideSchedulingExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideSendingExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;
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

.field private provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
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

.field private provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private providesOptOutStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;",
            ">;"
        }
    .end annotation
.end field

.field private providesSessionManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private providesSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private providesUpsightUserAttributesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private responseParserProvider:Ljavax/inject/Provider;

.field private upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            ">;"
        }
    .end annotation
.end field

.field private userAttributesProvider:Ljavax/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 154
    :cond_f
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->initialize(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .registers 2

    .prologue
    .line 158
    new-instance v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V
    .registers 11
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 164
    .line 167
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    .line 171
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 170
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 176
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 175
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/ConfigGsonModule_ProvideConfigGsonFactory;->create(Lcom/upsight/android/analytics/internal/ConfigGsonModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 174
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    .line 178
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configParserProvider:Ljavax/inject/Provider;

    .line 182
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideClockFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    .line 187
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configParserProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    .line 186
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerImplFactory;->create(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerImplProvider:Ljavax/inject/Provider;

    .line 195
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerImplProvider:Ljavax/inject/Provider;

    .line 194
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->create(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    .line 200
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 199
    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 198
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->manualTrackerProvider:Ljavax/inject/Provider;

    .line 207
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$400(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->manualTrackerProvider:Ljavax/inject/Provider;

    .line 206
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->create(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideManualTrackerProvider:Ljavax/inject/Provider;

    .line 212
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$500(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 211
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule_ProvideSchemaSelectorBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    .line 217
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/association/AssociationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    .line 216
    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->create(Lcom/upsight/android/analytics/internal/association/AssociationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    .line 222
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 221
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/OptOutStatus_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 220
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->optOutStatusProvider:Ljavax/inject/Provider;

    .line 227
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->optOutStatusProvider:Ljavax/inject/Provider;

    .line 226
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesOptOutStatusFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 225
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesOptOutStatusProvider:Ljavax/inject/Provider;

    .line 232
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 231
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 230
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 237
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 236
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;

    .line 242
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 241
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/UserAttributes_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->userAttributesProvider:Ljavax/inject/Provider;

    .line 247
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->userAttributesProvider:Ljavax/inject/Provider;

    .line 246
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightUserAttributesFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 245
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightUserAttributesProvider:Ljavax/inject/Provider;

    .line 252
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 251
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideGooglePlayHelperProvider:Ljavax/inject/Provider;

    .line 254
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideManualTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesOptOutStatusProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightUserAttributesProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideGooglePlayHelperProvider:Ljavax/inject/Provider;

    .line 256
    invoke-static/range {v0 .. v8}, Lcom/upsight/android/analytics/internal/Analytics_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 255
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsProvider:Ljavax/inject/Provider;

    .line 270
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$800(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsProvider:Ljavax/inject/Provider;

    .line 269
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 268
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;

    .line 272
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->manualTrackerProvider:Ljavax/inject/Provider;

    .line 273
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->activityLifecycleTrackerProvider:Ljavax/inject/Provider;

    .line 278
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$400(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->activityLifecycleTrackerProvider:Ljavax/inject/Provider;

    .line 277
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory;->create(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 276
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    .line 280
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    .line 281
    invoke-static {v0, v1, v2, v3, v4}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;

    .line 288
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    .line 290
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 289
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configurationResponseParserProvider:Ljavax/inject/Provider;

    .line 293
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    .line 294
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->managerConfigParserProvider:Ljavax/inject/Provider;

    .line 299
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$900(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configurationResponseParserProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->managerConfigParserProvider:Ljavax/inject/Provider;

    .line 298
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->create(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 297
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 306
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 305
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/AnalyticsContext_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsContextProvider:Ljavax/inject/Provider;

    .line 308
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    .line 310
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 309
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configParserProvider2:Ljavax/inject/Provider;

    .line 316
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule_ProvideSendingExecutorFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 314
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSendingExecutorProvider:Ljavax/inject/Provider;

    .line 321
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule_ProvideSchedulingExecutorFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 319
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchedulingExecutorProvider:Ljavax/inject/Provider;

    .line 326
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 325
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideResponseVerifierFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 324
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideResponseVerifierProvider:Ljavax/inject/Provider;

    .line 328
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigGsonProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->responseParserProvider:Ljavax/inject/Provider;

    .line 333
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSendingExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchedulingExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideResponseVerifierProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->responseParserProvider:Ljavax/inject/Provider;

    .line 332
    invoke-static/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 331
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideQueueBuilderProvider:Ljavax/inject/Provider;

    .line 344
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideQueueBuilderProvider:Ljavax/inject/Provider;

    .line 343
    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule_ProvideRouterBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 342
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideRouterBuilderProvider:Ljavax/inject/Provider;

    .line 349
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configParserProvider2:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideRouterBuilderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    .line 348
    invoke-static/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideDispatcherProvider:Ljavax/inject/Provider;

    .line 357
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigurationManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideDispatcherProvider:Ljavax/inject/Provider;

    .line 358
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->dispatcherServiceMembersInjector:Ldagger/MembersInjector;

    .line 360
    return-void
.end method


# virtual methods
.method public clock()Lcom/upsight/android/analytics/internal/session/Clock;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/Clock;

    return-object v0
.end method

.method public inject(Lcom/upsight/android/UpsightAnalyticsExtension;)V
    .registers 3
    .param p1, "arg0"    # Lcom/upsight/android/UpsightAnalyticsExtension;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .registers 2

    .prologue
    .line 68
    check-cast p1, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->inject(Lcom/upsight/android/UpsightAnalyticsExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .registers 3
    .param p1, "dispatcherService"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->dispatcherServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    return-object v0
.end method
