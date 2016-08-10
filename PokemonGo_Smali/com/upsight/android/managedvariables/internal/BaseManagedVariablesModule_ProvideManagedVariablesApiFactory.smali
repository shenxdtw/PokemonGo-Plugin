.class public final Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;
.super Ljava/lang/Object;
.source "BaseManagedVariablesModule_ProvideManagedVariablesApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managedVariableManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

.field private final userExperienceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p3, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 29
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    .line 31
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->userExperienceProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p2, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;-><init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .registers 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->userExperienceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .line 38
    invoke-virtual {v2, v0, v1}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;->provideManagedVariablesApi(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->get()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    return-object v0
.end method
