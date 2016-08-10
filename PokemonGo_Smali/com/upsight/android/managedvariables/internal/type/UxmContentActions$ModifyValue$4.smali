.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

.field final synthetic val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

.field final synthetic val$dataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field final synthetic val$gson:Lcom/google/gson/Gson;

.field final synthetic val$logger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/google/gson/Gson;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .registers 8
    .param p1, "this$0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$dataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$gson:Lcom/google/gson/Gson;

    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$clazz:Ljava/lang/Class;

    iput-object p5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iput-object p6, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    iput-object p7, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/gson/JsonObject;)V
    .registers 7
    .param p1, "modelNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$dataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->storeObservable(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v2, v2, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 319
    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v2, v2, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 320
    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;Lcom/google/gson/JsonObject;)V

    new-instance v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;

    invoke-direct {v3, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;)V

    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;

    invoke-direct {v4, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;)V

    .line 321
    invoke-virtual {v1, v2, v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    :try_end_40
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_40} :catch_41

    .line 344
    :goto_40
    return-void

    .line 340
    :catch_41
    move-exception v0

    .line 341
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse managed variable of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v2, v2, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    goto :goto_40
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 314
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->call(Lcom/google/gson/JsonObject;)V

    return-void
.end method
