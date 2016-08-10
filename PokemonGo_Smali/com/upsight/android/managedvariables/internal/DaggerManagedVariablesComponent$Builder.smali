.class public final Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerManagedVariablesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

.field private resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

.field private userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

.field private uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/ResourceModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    return-object v0
.end method


# virtual methods
.method public baseManagedVariablesModule(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 3
    .param p1, "baseManagedVariablesModule"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .prologue
    .line 222
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 223
    return-object p0
.end method

.method public build()Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    if-nez v0, :cond_23

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 182
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

    .line 184
    :cond_23
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    if-nez v0, :cond_2e

    .line 185
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 187
    :cond_2e
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    if-nez v0, :cond_39

    .line 188
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ResourceModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/ResourceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .line 190
    :cond_39
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    if-nez v0, :cond_44

    .line 191
    new-instance v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .line 193
    :cond_44
    new-instance v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V

    return-object v0
.end method

.method public managedVariablesModule(Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 2
    .param p1, "managedVariablesModule"    # Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object p0
.end method

.method public resourceModule(Lcom/upsight/android/managedvariables/internal/ResourceModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 3
    .param p1, "resourceModule"    # Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .prologue
    .line 206
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/ResourceModule;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .line 207
    return-object p0
.end method

.method public userExperienceModule(Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 3
    .param p1, "userExperienceModule"    # Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .prologue
    .line 216
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .line 217
    return-object p0
.end method

.method public uxmModule(Lcom/upsight/android/managedvariables/internal/type/UxmModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .registers 3
    .param p1, "uxmModule"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .prologue
    .line 211
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 212
    return-object p0
.end method
