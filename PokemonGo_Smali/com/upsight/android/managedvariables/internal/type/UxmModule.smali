.class public Lcom/upsight/android/managedvariables/internal/type/UxmModule;
.super Ljava/lang/Object;
.source "UxmModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final GSON_UXM_SCHEMA:Ljava/lang/String; = "gsonUxmSchema"

.field public static final JSON_PARSER_UXM_SCHEMA:Ljava/lang/String; = "jsonParserUxmSchema"

.field public static final STRING_RAW_UXM_SCHEMA:Ljava/lang/String; = "stringRawUxmSchema"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideManagedVariableManager(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .registers 6
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "scheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .param p3, "uxmSchema"    # Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;-><init>(Lrx/Scheduler;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)V

    return-object v0
.end method

.method provideUxmBlockProvider(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
    .registers 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "uxmSchemaRawString"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "stringRawUxmSchema"
        .end annotation
    .end param
    .param p3, "uxmSchema"    # Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)V

    return-object v0
.end method

.method provideUxmContentFactory(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;
    .registers 12
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "scheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .param p3, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v7

    .line 126
    .local v7, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v7}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    .line 127
    .local v2, "bus":Lcom/squareup/otto/Bus;
    invoke-interface {v7}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v3

    .line 128
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    .line 129
    .local v6, "logger":Lcom/upsight/android/logger/UpsightLogger;
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p1, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 130
    invoke-virtual {v1}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    .line 131
    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->clock()Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v4

    .line 133
    .local v4, "clock":Lcom/upsight/android/analytics/internal/session/Clock;
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 138
    invoke-virtual {p2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;-><init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 140
    .local v0, "actionContext":Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;

    invoke-direct {v1, v0, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V

    return-object v1
.end method

.method provideUxmSchema(Lcom/upsight/android/UpsightContext;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .registers 12
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "uxmSchemaGson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "gsonUxmSchema"
        .end annotation
    .end param
    .param p3, "uxmSchemaJsonParser"    # Lcom/google/gson/JsonParser;
        .annotation runtime Ljavax/inject/Named;
            value = "jsonParserUxmSchema"
        .end annotation
    .end param
    .param p4, "uxmSchemaString"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "stringRawUxmSchema"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    .line 86
    .local v1, "logger":Lcom/upsight/android/logger/UpsightLogger;
    const/4 v2, 0x0

    .line 87
    .local v2, "schema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 89
    :try_start_c
    invoke-static {p4, p2, p3, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->create(Ljava/lang/String;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_21

    move-result-object v2

    .line 95
    :cond_10
    :goto_10
    if-nez v2, :cond_20

    .line 97
    new-instance v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .end local v2    # "schema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    invoke-direct {v2, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;-><init>(Lcom/upsight/android/logger/UpsightLogger;)V

    .line 98
    .restart local v2    # "schema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    const-string v3, "Upsight"

    const-string v4, "Empty UXM schema used"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_20
    return-object v2

    .line 90
    :catch_21
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Upsight"

    const-string v4, "Failed to parse UXM schema"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method provideUxmSchemaGson(Lcom/upsight/android/UpsightContext;)Lcom/google/gson/Gson;
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "gsonUxmSchema"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method provideUxmSchemaJsonParser(Lcom/upsight/android/UpsightContext;)Lcom/google/gson/JsonParser;
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "jsonParserUxmSchema"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->jsonParser()Lcom/google/gson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method provideUxmSchemaRawString(Lcom/upsight/android/UpsightContext;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 11
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "uxmSchemaRes"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/inject/Named;
            value = "resUxmSchema"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "stringRawUxmSchema"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    .line 64
    .local v2, "logger":Lcom/upsight/android/logger/UpsightLogger;
    const-string v3, ""

    .line 66
    .local v3, "schemaString":Ljava/lang/String;
    :try_start_7
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 67
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1a

    .line 68
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_19
    return-object v3

    .line 70
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1a
    const-string v4, "Upsight"

    const-string v5, "Failed to find UXM schema file"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_24} :catch_25

    goto :goto_19

    .line 72
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_25
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Upsight"

    const-string v5, "Failed to read UXM schema file"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method
