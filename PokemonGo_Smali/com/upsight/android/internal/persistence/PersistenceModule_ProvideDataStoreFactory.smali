.class public final Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;
.super Ljava/lang/Object;
.source "PersistenceModule_ProvideDataStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/persistence/UpsightDataStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final idFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final infoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/internal/persistence/PersistenceModule;

.field private final observeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 9
    .param p1, "module"    # Lcom/upsight/android/internal/persistence/PersistenceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/PersistenceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p4, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p5, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p6, "observeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p7, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 43
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    .line 45
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_47
    iput-object p5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_55

    if-nez p6, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_55
    iput-object p6, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->observeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_63

    if-nez p7, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_63
    iput-object p7, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    .line 55
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 15
    .param p0, "module"    # Lcom/upsight/android/internal/persistence/PersistenceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/PersistenceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p3, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p4, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p5, "observeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p6, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;-><init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 8

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Scheduler;

    iget-object v5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->observeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Scheduler;

    iget-object v6, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/otto/Bus;

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/PersistenceModule;->provideDataStore(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 59
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->get()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    return-object v0
.end method
