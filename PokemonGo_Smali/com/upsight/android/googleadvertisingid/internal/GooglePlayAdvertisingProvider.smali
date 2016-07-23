.class public final Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "GooglePlayAdvertisingProvider.java"


# static fields
.field public static final AID_KEY:Ljava/lang/String; = "ids.aid"

.field public static final LIMITED_AD_TRACKING_KEY:Ljava/lang/String; = "device.limit_ad_tracking"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 42
    return-void
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ids.aid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device.limit_ad_tracking"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 46
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_6e

    :cond_c
    move v3, v4

    :goto_d
    packed-switch v3, :pswitch_data_78

    .line 66
    invoke-super {p0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_48

    move-result-object v2

    :cond_14
    :goto_14
    monitor-exit p0

    return-object v2

    .line 46
    :sswitch_16
    :try_start_16
    const-string v5, "ids.aid"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_d

    :sswitch_1f
    const-string v3, "device.limit_ad_tracking"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_48

    move-result v3

    if-eqz v3, :cond_c

    move v3, v5

    goto :goto_d

    .line 48
    :pswitch_29
    const/4 v1, 0x0

    .line 50
    .local v1, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_2a
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_37
    .catchall {:try_start_2a .. :try_end_2f} :catchall_48

    move-result-object v1

    .line 54
    :goto_30
    if-eqz v1, :cond_14

    :try_start_32
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 51
    :catch_37
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to resolve Google Advertising ID"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_48

    goto :goto_30

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    :pswitch_4b
    const/4 v1, 0x0

    .line 59
    .restart local v1    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_4c
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_5d
    .catchall {:try_start_4c .. :try_end_51} :catchall_48

    move-result-object v1

    .line 63
    :goto_52
    if-eqz v1, :cond_14

    :try_start_54
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_14

    .line 60
    :catch_5d
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to resolve Google limited ad tracking status"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_48

    goto :goto_52

    .line 46
    :sswitch_data_6e
    .sparse-switch
        0x637ddd06 -> :sswitch_16
        0x76373b37 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_29
        :pswitch_4b
    .end packed-switch
.end method
