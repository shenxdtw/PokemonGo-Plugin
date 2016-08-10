.class public Lcom/upsight/android/UpsightManagedVariablesExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightManagedVariablesExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.managedvariables"

.field private static final UPSIGHT_ACTION_MAP:Ljava/lang/String; = "upsight.action_map"


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mJsonParser:Lcom/google/gson/JsonParser;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field mManagedVariables:Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUxmBlockProvider:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUxmContentFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mManagedVariables:Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mGson:Lcom/google/gson/Gson;

    .line 66
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->jsonParser()Lcom/google/gson/JsonParser;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 67
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 69
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmBlockProvider:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    invoke-static {p1, v0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 70
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 71
    return-void
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightManagedVariablesExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;
    .registers 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 58
    invoke-static {}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->builder()Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->build()Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;

    move-result-object v0

    return-object v0
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .registers 11
    .param p1, "endpointResponse"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 80
    const-string v4, "upsight.action_map"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 97
    :cond_c
    :goto_c
    return-void

    .line 85
    :cond_d
    :try_start_d
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 86
    .local v3, "response":Lcom/google/gson/JsonElement;
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .line 88
    .local v0, "actionMapResponse":Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
    const-string v4, "datastore_factory"

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionFactory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 89
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmContentFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;

    invoke-virtual {v4, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->create(Lcom/upsight/android/analytics/internal/action/ActionMapResponse;)Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    move-result-object v1

    .line 90
    .local v1, "content":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    if-eqz v1, :cond_c

    .line 91
    const-string v4, "content_received"

    invoke-virtual {v1, v4}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->executeActions(Ljava/lang/String;)V
    :try_end_3a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_c

    .line 94
    .end local v0    # "actionMapResponse":Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
    .end local v1    # "content":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .end local v3    # "response":Lcom/google/gson/JsonElement;
    :catch_3b
    move-exception v2

    .line 95
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Upsight"

    const-string v6, "Unable to parse action map"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c
.end method
