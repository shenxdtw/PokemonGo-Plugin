.class public Lcom/upsight/mediation/util/InAppBillingConnection;
.super Ljava/lang/Object;
.source "InAppBillingConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    }
.end annotation


# instance fields
.field private asInterfaceMethod:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private boundActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private connection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private getDetailsMethod:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private iabService:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->iabService:Ljava/lang/Object;

    .line 33
    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->asInterfaceMethod:Ljava/lang/reflect/Method;

    .line 34
    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->getDetailsMethod:Ljava/lang/reflect/Method;

    .line 36
    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    .line 37
    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    .line 38
    sget-object v3, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->NotConnected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    .line 43
    :try_start_12
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "iabServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getSkuDetails"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->getDetailsMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string v3, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "iabServiceStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->asInterfaceMethod:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_4d} :catch_4e

    .line 52
    .end local v0    # "iabServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "iabServiceStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4d
    return-void

    .line 48
    :catch_4e
    move-exception v2

    .line 49
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Fuse-InAppBillingConnection"

    const-string v4, "com.android.vending.billing.IInAppBillingService is NOT available"

    invoke-static {v3, v4, v2}, Lcom/upsight/mediation/log/FuseLog;->public_w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    sget-object v3, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Unavailable:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    iput-object v3, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    goto :goto_4d
.end method

.method static synthetic access$002(Lcom/upsight/mediation/util/InAppBillingConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/util/InAppBillingConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->iabService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/upsight/mediation/util/InAppBillingConnection;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/util/InAppBillingConnection;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->asInterfaceMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$202(Lcom/upsight/mediation/util/InAppBillingConnection;Lcom/upsight/mediation/util/InAppBillingConnection$Status;)Lcom/upsight/mediation/util/InAppBillingConnection$Status;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/util/InAppBillingConnection;
    .param p1, "x1"    # Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    return-object p1
.end method


# virtual methods
.method public closeConnection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 88
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 91
    :cond_10
    iput-object v2, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->iabService:Ljava/lang/Object;

    .line 92
    iput-object v2, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    .line 93
    iput-object v2, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    .line 94
    sget-object v0, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->NotConnected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    iput-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    .line 95
    return-void
.end method

.method public getLocalPriceForProductId(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "productId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 107
    iget-object v6, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    sget-object v8, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Connected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    if-ne v6, v8, :cond_10

    iget-object v6, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->getDetailsMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    if-nez v6, :cond_12

    :cond_10
    move-object v6, v7

    .line 131
    :goto_11
    return-object v6

    .line 111
    :cond_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "requestBundle":Landroid/os/Bundle;
    const-string v6, "ITEM_ID_LIST"

    new-instance v8, Lcom/upsight/mediation/util/InAppBillingConnection$2;

    invoke-direct {v8, p0, p1}, Lcom/upsight/mediation/util/InAppBillingConnection$2;-><init>(Lcom/upsight/mediation/util/InAppBillingConnection;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    :try_start_21
    iget-object v6, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->getDetailsMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->iabService:Ljava/lang/Object;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "inapp"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 117
    .local v3, "returnBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_88

    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_88

    .line 118
    const-string v6, "DETAILS_LIST"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v12, :cond_88

    .line 120
    new-instance v1, Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "itemDetails":Lorg/json/JSONObject;
    const-string v6, "productId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "sku":Ljava/lang/String;
    if-eqz v4, :cond_88

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 123
    const-string v6, "price"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_7e} :catch_80

    move-result-object v6

    goto :goto_11

    .line 127
    .end local v0    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "itemDetails":Lorg/json/JSONObject;
    .end local v3    # "returnBundle":Landroid/os/Bundle;
    .end local v4    # "sku":Ljava/lang/String;
    :catch_80
    move-exception v5

    .line 128
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "Fuse-InAppBillingConnection"

    const-string v8, "Exception thrown while getting SKU Details"

    invoke-static {v6, v8, v5}, Lcom/upsight/mediation/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_88
    move-object v6, v7

    .line 131
    goto :goto_11
.end method

.method public initConnection(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    sget-object v2, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->NotConnected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->asInterfaceMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_b

    .line 84
    :cond_a
    :goto_a
    return-void

    .line 59
    :cond_b
    sget-object v1, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Pending:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    iput-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    .line 60
    iput-object p1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    .line 62
    new-instance v1, Lcom/upsight/mediation/util/InAppBillingConnection$1;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/util/InAppBillingConnection$1;-><init>(Lcom/upsight/mediation/util/InAppBillingConnection;)V

    iput-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->boundActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_a
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    sget-object v1, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Connected:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPending()Z
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection;->status:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    sget-object v1, Lcom/upsight/mediation/util/InAppBillingConnection$Status;->Pending:Lcom/upsight/mediation/util/InAppBillingConnection$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
