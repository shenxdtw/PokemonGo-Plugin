.class public final Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;
.super Ljava/lang/Object;
.source "DaggerManagedVariablesComponent.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private provideMainSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideManagedVariableManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideManagedVariablesApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
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

.field private provideUserExperienceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmBlockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaJsonParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaResourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightManagedVariablesExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_f
    invoke-direct {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->initialize(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 2

    .prologue
    .line 69
    new-instance v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V
    .registers 7
    .param p1, "builder"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 75
    .line 78
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 83
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideMainSchedulerFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 81
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    .line 88
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 87
    invoke-static {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaGsonFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaGsonProvider:Ljavax/inject/Provider;

    .line 93
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 92
    invoke-static {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaJsonParserFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaJsonParserProvider:Ljavax/inject/Provider;

    .line 97
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$300(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/ResourceModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->create(Lcom/upsight/android/managedvariables/internal/ResourceModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaResourceProvider:Ljavax/inject/Provider;

    .line 102
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaResourceProvider:Ljavax/inject/Provider;

    .line 101
    invoke-static {v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaRawStringFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    .line 109
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaGsonProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaJsonParserProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    .line 108
    invoke-static {v0, v1, v2, v3, v4}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    .line 118
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    .line 117
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariableManagerProvider:Ljavax/inject/Provider;

    .line 126
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$400(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 125
    invoke-static {v0, v1}, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule_ProvideUserExperienceFactory;->create(Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    .line 131
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariableManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    .line 130
    invoke-static {v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 129
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariablesApiProvider:Ljavax/inject/Provider;

    .line 138
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmContentFactoryFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmContentFactoryProvider:Ljavax/inject/Provider;

    .line 146
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    .line 145
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmBlockProviderFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmBlockProvider:Ljavax/inject/Provider;

    .line 151
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariablesApiProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmContentFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmBlockProvider:Ljavax/inject/Provider;

    .line 152
    invoke-static {v0, v1, v2}, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;

    .line 156
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Lcom/upsight/android/UpsightManagedVariablesExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->inject(Lcom/upsight/android/UpsightManagedVariablesExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightManagedVariablesExtension;)V
    .registers 3
    .param p1, "arg0"    # Lcom/upsight/android/UpsightManagedVariablesExtension;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public uxmSchema()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    return-object v0
.end method
