.class Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesExtension.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/UpsightGooglePushServicesExtension$1;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightGooglePushServicesExtension$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;->this$1:Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .registers 7
    .param p1, "e"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;->this$1:Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    iget-object v0, v0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->val$upsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    # getter for: Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to auto-register for push notifications"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1$1;->this$1:Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    iget-object v0, v0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->val$upsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    # getter for: Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-registered for push notifications with registrationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method
