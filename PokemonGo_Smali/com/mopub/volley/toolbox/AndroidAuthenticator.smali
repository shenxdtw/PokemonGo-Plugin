.class public Lcom/mopub/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/Authenticator;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotifyAuthFailure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyAuthFailure"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 59
    iput-object p3, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v1, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 75
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 79
    .local v8, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_12
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_3b

    .line 83
    .local v10, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 84
    .local v6, "authToken":Ljava/lang/String;
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 85
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 86
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 87
    .local v9, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/mopub/volley/AuthFailureError;

    invoke-direct {v1, v9}, Lcom/mopub/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v1

    .line 80
    .end local v6    # "authToken":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "result":Landroid/os/Bundle;
    :catch_3b
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/mopub/volley/AuthFailureError;

    const-string v2, "Error while retrieving auth token"

    invoke-direct {v1, v2, v7}, Lcom/mopub/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 89
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "authToken":Ljava/lang/String;
    .restart local v10    # "result":Landroid/os/Bundle;
    :cond_44
    const-string v1, "authtoken"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    :cond_4a
    if-nez v6, :cond_67

    .line 92
    new-instance v1, Lcom/mopub/volley/AuthFailureError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null auth token for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_67
    return-object v6
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
