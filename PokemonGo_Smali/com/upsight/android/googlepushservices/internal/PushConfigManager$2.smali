.class Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;
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
        "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
        "Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;",
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
    .line 64
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;->this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    .registers 4
    .param p1, "upsightConfiguration"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;->this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->access$100(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 64
    check-cast p1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;->call(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    move-result-object v0

    return-object v0
.end method
