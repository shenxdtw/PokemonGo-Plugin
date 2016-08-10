.class Lcom/upsight/mediation/util/InAppBillingConnection$1;
.super Ljava/lang/Object;
.source "InAppBillingConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/util/InAppBillingConnection;->initConnection(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/util/InAppBillingConnection;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/util/InAppBillingConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/util/InAppBillingConnection;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    iget-object v2, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    # getter for: Lcom/upsight/mediation/util/InAppBillingConnection;->asInterfaceMethod:Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/upsight/mediation/util/InAppBillingConnection;->access$100(Lcom/upsight/mediation/util/InAppBillingConnection;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # setter for: Lcom/upsight/mediation/util/InAppBillingConnection;->iabService:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/upsight/mediation/util/InAppBillingConnection;->access$002(Lcom/upsight/mediation/util/InAppBillingConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    sget-object v2, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Connected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    # setter for: Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    invoke-static {v1, v2}, Lcom/upsight/mediation/util/InAppBillingConnection;->access$202(Lcom/upsight/mediation/util/InAppBillingConnection;Lcom/upsight/mediation/util/InAppBillingConnection$Status;)Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 78
    :goto_1d
    return-void

    .line 73
    :catch_1e
    move-exception v0

    .line 74
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Fuse-InAppBillingConnection"

    const-string v2, "Exception thrown while attempting to retrieve IInAppBillingService"

    invoke-static {v1, v2, v0}, Lcom/upsight/mediation/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    invoke-virtual {v1}, Lcom/upsight/mediation/util/InAppBillingConnection;->closeConnection()V

    .line 76
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    sget-object v2, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Unavailable:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    # setter for: Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    invoke-static {v1, v2}, Lcom/upsight/mediation/util/InAppBillingConnection;->access$202(Lcom/upsight/mediation/util/InAppBillingConnection;Lcom/upsight/mediation/util/InAppBillingConnection$Status;)Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    goto :goto_1d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection$1;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    invoke-virtual {v0}, Lcom/upsight/mediation/util/InAppBillingConnection;->closeConnection()V

    .line 66
    return-void
.end method
