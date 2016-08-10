.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Lcom/android/volley/toolbox/Authenticator;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mNotifyAuthFailure:Z


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyAuthFailure"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccountManager:Landroid/accounts/AccountManager;

    .line 64
    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 65
    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyAuthFailure"    # Z

    .prologue
    .line 57
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 91
    .local v8, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_e
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_37

    .line 95
    .local v10, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 96
    .local v6, "authToken":Ljava/lang/String;
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_46

    .line 97
    const-string v0, "intent"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 98
    const-string v0, "intent"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 99
    .local v9, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/volley/AuthFailureError;

    invoke-direct {v0, v9}, Lcom/android/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v0

    .line 92
    .end local v6    # "authToken":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "result":Landroid/os/Bundle;
    :catch_37
    move-exception v7

    .line 93
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/android/volley/AuthFailureError;

    const-string v1, "Error while retrieving auth token"

    invoke-direct {v0, v1, v7}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 101
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "authToken":Ljava/lang/String;
    .restart local v10    # "result":Landroid/os/Bundle;
    :cond_40
    const-string v0, "authtoken"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    :cond_46
    if-nez v6, :cond_66

    .line 104
    new-instance v1, Lcom/android/volley/AuthFailureError;

    const-string v2, "Got null auth token for type: "

    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5c
    invoke-direct {v1, v0}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    .line 107
    :cond_66
    return-object v6
.end method

.method public getAuthTokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
