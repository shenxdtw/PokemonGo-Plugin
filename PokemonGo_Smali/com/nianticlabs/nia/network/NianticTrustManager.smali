.class public Lcom/nianticlabs/nia/network/NianticTrustManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 26
    return-void
.end method

.method public static getTrustManager(Ljava/lang/String;Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keystore"    # Ljava/security/KeyStore;

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 58
    .local v0, "factory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 60
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v4, :cond_1e

    aget-object v1, v3, v2

    .line 61
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    if-eqz v1, :cond_1a

    instance-of v5, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_1a

    .line 62
    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_20
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_19} :catch_1d

    .line 69
    .end local v0    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :goto_19
    return-object v1

    .line 60
    .restart local v0    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 66
    .end local v0    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_1d
    move-exception v2

    .line 69
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    goto :goto_19

    .line 65
    :catch_20
    move-exception v2

    goto :goto_1e
.end method

.method public static getTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .registers 2
    .param p0, "keystore"    # Ljava/security/KeyStore;

    .prologue
    .line 50
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nianticlabs/nia/network/NianticTrustManager;->getTrustManager(Ljava/lang/String;Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCheckClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method private native nativeCheckServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method private native nativeGetAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NianticTrustManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/network/NianticTrustManager;->nativeCheckServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 32
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NianticTrustManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/nia/network/NianticTrustManager;->nativeCheckServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NianticTrustManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_3
    invoke-direct {p0}, Lcom/nianticlabs/nia/network/NianticTrustManager;->nativeGetAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
