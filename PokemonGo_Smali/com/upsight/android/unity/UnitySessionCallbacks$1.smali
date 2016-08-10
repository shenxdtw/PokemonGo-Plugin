.class Lcom/upsight/android/unity/UnitySessionCallbacks$1;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UnitySessionCallbacks;->onStart(Lcom/upsight/android/UpsightContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/unity/UnitySessionCallbacks;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;->this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive()Z
    .registers 2

    .prologue
    .line 37
    # getter for: Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z
    invoke-static {}, Lcom/upsight/android/unity/UnitySessionCallbacks;->access$000()Z

    move-result v0

    return v0
.end method

.method public onSynchronize(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UnitySessionCallbacks"

    const-string v3, "onSynchronize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 45
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    .line 48
    .end local v1    # "t":Ljava/lang/String;
    :cond_20
    const-string v2, "managedVariablesDidSynchronize"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
