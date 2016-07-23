.class public Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzp$zza;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzQd:Landroid/accounts/Account;

.field zzaeG:I


# direct methods
.method public static zzb(Lcom/google/android/gms/common/internal/zzp;)Landroid/accounts/Account;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzp;->getAccount()Landroid/accounts/Account;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_f
    .catchall {:try_start_7 .. :try_end_a} :catchall_1b

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_e
    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    :try_start_10
    const-string v1, "AccountAccessor"

    const-string v4, "Remote account accessor probably died"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_1b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :goto_3
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zza;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    check-cast p1, Lcom/google/android/gms/common/internal/zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zza;->zzaeG:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    :goto_a
    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zza;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zze(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v0, p0, Lcom/google/android/gms/common/internal/zza;->zzaeG:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
