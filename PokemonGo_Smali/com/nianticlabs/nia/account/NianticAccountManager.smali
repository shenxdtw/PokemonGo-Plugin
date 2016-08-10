.class public Lcom/nianticlabs/nia/account/NianticAccountManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final TAG:Ljava/lang/String; = "NianticAccountManager"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/account/NianticAccountManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager;->instance:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 53
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager;->instance:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PREFS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sharedPrefsName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->prefs:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/account/NianticAccountManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/account/NianticAccountManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/account/NianticAccountManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/account/NianticAccountManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized clearAccount()V
    .registers 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/account/NianticAccountManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager;->instance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private native nativeAuthTokenCallback(ILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getAccount(Ljava/lang/String;)V
    .registers 13
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v7, 0x0

    .line 62
    .local v7, "useAccountsActivity":Z
    iget-object v8, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    .line 63
    .local v3, "resultCode":I
    if-eqz v3, :cond_2d

    .line 64
    const-string v8, "NianticAccountManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Google Play Services not available. Error code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v8, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v9, ""

    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccountName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2c
    :goto_2c
    return-void

    .line 71
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_92

    .line 73
    const-string v8, "NianticAccountManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Authenticating with account: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audience:server:client_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "scope":Ljava/lang/String;
    const-string v8, "NianticAccountManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scope: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v8, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;

    invoke-static {v8, v0, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "token":Ljava/lang/String;
    sget-object v8, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->OK:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    invoke-virtual {p0, v8, v5, v0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_2d .. :try_end_87} :catch_94
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_87} :catch_9e
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_2d .. :try_end_87} :catch_b2

    .line 95
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v4    # "scope":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :goto_87
    if-eqz v7, :cond_2c

    .line 96
    new-instance v8, Lcom/nianticlabs/nia/account/NianticAccountManager$1;

    invoke-direct {v8, p0, p1}, Lcom/nianticlabs/nia/account/NianticAccountManager$1;-><init>(Lcom/nianticlabs/nia/account/NianticAccountManager;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/nianticlabs/nia/account/NianticAccountManager;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 79
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_92
    const/4 v7, 0x1

    goto :goto_87

    .line 81
    .end local v0    # "accountName":Ljava/lang/String;
    :catch_94
    move-exception v2

    .line 82
    .local v2, "ex":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    const-string v8, "NianticAccountManager"

    const-string v9, "Use account activity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v7, 0x1

    .line 93
    goto :goto_87

    .line 85
    .end local v2    # "ex":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_9e
    move-exception v6

    .line 86
    .local v6, "transientEx":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "accountName":Ljava/lang/String;
    const-string v8, "NianticAccountManager"

    const-string v9, "Unable to get authToken at this time."

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    sget-object v8, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v9, ""

    invoke-virtual {p0, v8, v9, v0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 89
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v6    # "transientEx":Ljava/io/IOException;
    :catch_b2
    move-exception v1

    .line 90
    .local v1, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "accountName":Ljava/lang/String;
    const-string v8, "NianticAccountManager"

    const-string v9, "User cannot be authenticated."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    sget-object v8, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v9, ""

    invoke-virtual {p0, v8, v9, v0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87
.end method

.method public declared-synchronized getAccountName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "accountName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAccountName(Ljava/lang/String;)V
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "status"    # Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/nianticlabs/nia/account/NianticAccountManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_33

    .line 121
    :try_start_4
    const-string v0, "NianticAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->ordinal()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/nianticlabs/nia/account/NianticAccountManager;->nativeAuthTokenCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 120
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
