.class Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzf([B)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzFf:Ljava/io/OutputStream;

.field final synthetic zzFg:[B

.field final synthetic zzFh:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/io/OutputStream;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFh:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFf:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFg:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFf:Ljava/io/OutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1f
    .catchall {:try_start_1 .. :try_end_8} :catchall_3a

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFg:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFg:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_4a
    .catchall {:try_start_8 .. :try_end_13} :catchall_48

    if-nez v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFf:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-static {v1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    goto :goto_1a

    :catch_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    :try_start_21
    const-string v2, "Error transporting the ad response"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzhu;->zzc(Ljava/lang/Throwable;Z)V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_48

    if-nez v1, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFf:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    goto :goto_1a

    :cond_36
    invoke-static {v1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    goto :goto_1a

    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_3c
    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzFf:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :goto_43
    throw v0

    :cond_44
    invoke-static {v1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    goto :goto_43

    :catchall_48
    move-exception v0

    goto :goto_3c

    :catch_4a
    move-exception v0

    goto :goto_21
.end method
