.class Lcom/upsight/android/googlepushservices/internal/PushConfigManager$1;
.super Ljava/lang/Object;
.source "PushConfigManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->fetchCurrentConfigObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$1;->this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "config"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .prologue
    .line 73
    if-eqz p1, :cond_e

    # invokes: Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->isValid()Z
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->access$000(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 70
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$1;->call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
