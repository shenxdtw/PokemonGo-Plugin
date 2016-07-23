.class public final Lcrittercism/android/bc;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/Location;


# direct methods
.method public static declared-synchronized a()Landroid/location/Location;
    .registers 2

    .prologue
    .line 16
    const-class v0, Lcrittercism/android/bc;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/location/Location;)V
    .registers 3

    .prologue
    .line 13
    const-class v1, Lcrittercism/android/bc;

    monitor-enter v1

    if-nez p0, :cond_9

    :goto_5
    :try_start_5
    sput-object p0, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_10

    .line 14
    monitor-exit v1

    return-void

    .line 13
    :cond_9
    :try_start_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-object p0, v0

    goto :goto_5

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .registers 2

    .prologue
    .line 20
    const-class v1, Lcrittercism/android/bc;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
