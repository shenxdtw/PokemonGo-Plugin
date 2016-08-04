.class public Lcom/nianticlabs/pokemongoplus/util/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CTR/NoPadding"

.field private static final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/util/Crypt;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptNonce([B[B)[B
    .registers 12
    .param p0, "key"    # [B
    .param p1, "nonce"    # [B

    .prologue
    const/4 v9, 0x0

    .line 47
    const/16 v6, 0x10

    :try_start_3
    new-array v4, v6, [B

    .line 48
    .local v4, "iv":[B
    sget-object v6, Lcom/nianticlabs/pokemongoplus/util/Crypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 49
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, p0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "AES/CTR/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 53
    .local v3, "encrypted":[B
    array-length v6, v4

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v1, v6, [B

    .line 55
    .local v1, "combined":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    const/4 v6, 0x0

    array-length v7, v4

    array-length v8, v3

    invoke-static {v3, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_35} :catch_36

    .line 62
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "combined":[B
    .end local v3    # "encrypted":[B
    .end local v4    # "iv":[B
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_35
    return-object v1

    .line 59
    :catch_36
    move-exception v2

    .line 60
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 62
    new-array v1, v9, [B

    goto :goto_35
.end method

.method public static generateNonce()[B
    .registers 2

    .prologue
    .line 20
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 21
    .local v0, "nonce":[B
    sget-object v1, Lcom/nianticlabs/pokemongoplus/util/Crypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    return-object v0
.end method

.method public static getPersistedByteArray(Ljava/lang/String;)[B
    .registers 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/util/Crypt;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "encoded":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 75
    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 78
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v4, [B

    goto :goto_10
.end method

.method private static getPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 83
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    const-string v1, "pgp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static persistByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 66
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/util/Crypt;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public static unencryptNonce([B[B)[B
    .registers 12
    .param p0, "key"    # [B
    .param p1, "encrypted"    # [B

    .prologue
    const/4 v9, 0x0

    .line 27
    array-length v6, p1

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3c

    .line 29
    :try_start_6
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, p0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const/16 v6, 0x10

    new-array v3, v6, [B

    .line 31
    .local v3, "iv":[B
    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 32
    .local v4, "nonce":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {p1, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {p1, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    const-string v6, "AES/CTR/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 35
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 36
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_36} :catch_38

    move-result-object v1

    .line 42
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "iv":[B
    .end local v4    # "nonce":[B
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_37
    return-object v1

    .line 38
    :catch_38
    move-exception v2

    .line 39
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 42
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_3c
    new-array v1, v9, [B

    goto :goto_37
.end method
