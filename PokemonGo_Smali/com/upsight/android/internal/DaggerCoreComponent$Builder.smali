.class public final Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextModule:Lcom/upsight/android/internal/ContextModule;

.field private jsonModule:Lcom/upsight/android/internal/JsonModule;

.field private loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

.field private persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

.field private propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

.field private schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

.field private storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

.field private upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$1;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/JsonModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->jsonModule:Lcom/upsight/android/internal/JsonModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/storable/StorableModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/logger/LoggerModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/UpsightContextModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/internal/CoreComponent;
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    if-nez v0, :cond_23

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/internal/ContextModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_23
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->jsonModule:Lcom/upsight/android/internal/JsonModule;

    if-nez v0, :cond_2e

    .line 231
    new-instance v0, Lcom/upsight/android/internal/JsonModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/JsonModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->jsonModule:Lcom/upsight/android/internal/JsonModule;

    .line 233
    :cond_2e
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    if-nez v0, :cond_39

    .line 234
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/storable/StorableModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .line 236
    :cond_39
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    if-nez v0, :cond_44

    .line 237
    new-instance v0, Lcom/upsight/android/internal/SchedulersModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/SchedulersModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    .line 239
    :cond_44
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    if-nez v0, :cond_4f

    .line 240
    new-instance v0, Lcom/upsight/android/internal/persistence/PersistenceModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/PersistenceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 242
    :cond_4f
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    if-nez v0, :cond_5a

    .line 243
    new-instance v0, Lcom/upsight/android/internal/logger/LoggerModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/logger/LoggerModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    .line 245
    :cond_5a
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    if-nez v0, :cond_65

    .line 246
    new-instance v0, Lcom/upsight/android/internal/PropertiesModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/PropertiesModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    .line 248
    :cond_65
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    if-nez v0, :cond_70

    .line 249
    new-instance v0, Lcom/upsight/android/internal/UpsightContextModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/UpsightContextModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    .line 251
    :cond_70
    new-instance v0, Lcom/upsight/android/internal/DaggerCoreComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/internal/DaggerCoreComponent;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;Lcom/upsight/android/internal/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public contextModule(Lcom/upsight/android/internal/ContextModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "contextModule"    # Lcom/upsight/android/internal/ContextModule;

    .prologue
    .line 269
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/ContextModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    .line 270
    return-object p0
.end method

.method public coreModule(Lcom/upsight/android/internal/CoreModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 2
    .param p1, "coreModule"    # Lcom/upsight/android/internal/CoreModule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object p0
.end method

.method public jsonModule(Lcom/upsight/android/internal/JsonModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "jsonModule"    # Lcom/upsight/android/internal/JsonModule;

    .prologue
    .line 279
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/JsonModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->jsonModule:Lcom/upsight/android/internal/JsonModule;

    .line 280
    return-object p0
.end method

.method public loggerModule(Lcom/upsight/android/internal/logger/LoggerModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "loggerModule"    # Lcom/upsight/android/internal/logger/LoggerModule;

    .prologue
    .line 299
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/logger/LoggerModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    .line 300
    return-object p0
.end method

.method public persistenceModule(Lcom/upsight/android/internal/persistence/PersistenceModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "persistenceModule"    # Lcom/upsight/android/internal/persistence/PersistenceModule;

    .prologue
    .line 294
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/persistence/PersistenceModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 295
    return-object p0
.end method

.method public propertiesModule(Lcom/upsight/android/internal/PropertiesModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "propertiesModule"    # Lcom/upsight/android/internal/PropertiesModule;

    .prologue
    .line 274
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/PropertiesModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    .line 275
    return-object p0
.end method

.method public schedulersModule(Lcom/upsight/android/internal/SchedulersModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "schedulersModule"    # Lcom/upsight/android/internal/SchedulersModule;

    .prologue
    .line 284
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/SchedulersModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    .line 285
    return-object p0
.end method

.method public storableModule(Lcom/upsight/android/internal/persistence/storable/StorableModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "storableModule"    # Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .prologue
    .line 289
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/persistence/storable/StorableModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .line 290
    return-object p0
.end method

.method public upsightContextModule(Lcom/upsight/android/internal/UpsightContextModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .registers 3
    .param p1, "upsightContextModule"    # Lcom/upsight/android/internal/UpsightContextModule;

    .prologue
    .line 264
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/UpsightContextModule;

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    .line 265
    return-object p0
.end method
