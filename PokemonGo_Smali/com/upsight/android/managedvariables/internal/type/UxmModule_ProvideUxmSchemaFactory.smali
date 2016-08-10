.class public final Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;
.super Ljava/lang/Object;
.source "UxmModule_ProvideUxmSchemaFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

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

.field private final uxmSchemaGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final uxmSchemaJsonParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;"
        }
    .end annotation
.end field

.field private final uxmSchemaStringProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 7
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
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "uxmSchemaGsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    .local p4, "uxmSchemaJsonParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/JsonParser;>;"
    .local p5, "uxmSchemaStringProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 34
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 36
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaGsonProvider:Ljavax/inject/Provider;

    .line 38
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaJsonParserProvider:Ljavax/inject/Provider;

    .line 40
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_47
    iput-object p5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaStringProvider:Ljavax/inject/Provider;

    .line 42
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 11
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
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "uxmSchemaGsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    .local p3, "uxmSchemaJsonParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/JsonParser;>;"
    .local p4, "uxmSchemaStringProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .registers 6

    .prologue
    .line 46
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaGsonProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaJsonParserProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonParser;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->uxmSchemaStringProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule;->provideUxmSchema(Lcom/upsight/android/UpsightContext;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->get()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    move-result-object v0

    return-object v0
.end method
