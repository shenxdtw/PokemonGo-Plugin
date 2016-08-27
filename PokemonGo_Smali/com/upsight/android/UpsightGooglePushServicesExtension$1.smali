.class Lcom/upsight/android/UpsightGooglePushServicesExtension$1;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesExtension.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/UpsightGooglePushServicesExtension;->onPostCreate(Lcom/upsight/android/UpsightContext;)V
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
        "Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/UpsightGooglePushServicesExtension;

.field final synthetic val$upsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->this$0:Lcom/upsight/android/UpsightGooglePushServicesExtension;

    iput-object p2, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->val$upsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)V
    .registers 6
    .param p1, "config"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .prologue
    .line 69
    iget-boolean v0, p1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->autoRegister:Z

    if-eqz v0, :cond_11

    .line 70
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->this$0:Lcom/upsight/android/UpsightGooglePushServicesExtension;

    iget-object v0, v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    new-instance v1, Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;-><init>(Lcom/upsight/android/UpsightGooglePushServicesExtension$1;)V

    invoke-interface {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;->register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V

    .line 85
    :goto_10
    return-void

    .line 83
    :cond_11
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->val$upsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    # getter for: Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping auto-registration of push notifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 66
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)V

    return-void
.end method
