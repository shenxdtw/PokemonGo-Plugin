.class Lcom/upsight/android/unity/UpsightPushManager$2;
.super Ljava/lang/Object;
.source "UpsightPushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPushManager;->registerForPushNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPushManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPushManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPushManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPushManager$2;->this$0:Lcom/upsight/android/unity/UpsightPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "Upsight-UnityPush"

    const-string v1, "registering for push notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPushManager$2;->this$0:Lcom/upsight/android/unity/UpsightPushManager;

    # getter for: Lcom/upsight/android/unity/UpsightPushManager;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v0}, Lcom/upsight/android/unity/UpsightPushManager;->access$000(Lcom/upsight/android/unity/UpsightPushManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/unity/UpsightPushManager$2$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/unity/UpsightPushManager$2$1;-><init>(Lcom/upsight/android/unity/UpsightPushManager$2;)V

    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices;->register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V

    .line 84
    return-void
.end method
