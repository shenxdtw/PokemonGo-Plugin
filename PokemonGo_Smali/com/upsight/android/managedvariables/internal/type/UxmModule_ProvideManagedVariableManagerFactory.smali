.class public final Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;
.super Ljava/lang/Object;
.source "UxmModule_ProvideManagedVariableManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
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

.field private final uxmSchemaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 6
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p4, "uxmSchemaProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmSchema;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 31
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 33
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 35
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->uxmSchemaProvider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 5
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p3, "uxmSchemaProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmSchema;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .registers 5

    .prologue
    .line 41
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->uxmSchemaProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .line 42
    invoke-virtual {v3, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmModule;->provideManagedVariableManager(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->get()Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    move-result-object v0

    return-object v0
.end method
