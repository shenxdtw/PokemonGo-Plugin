.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "LocationBlockProvider.java"


# static fields
.field public static final LATITUDE_KEY:Ljava/lang/String; = "location.lat"

.field public static final LONGITUDE_KEY:Ljava/lang/String; = "location.lon"

.field public static final TIME_ZONE_KEY:Ljava/lang/String; = "location.tz"


# instance fields
.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .registers 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 52
    return-void
.end method

.method private fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    const-class v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    return-object v0
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
    .line 82
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "location.tz"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "location.lat"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "location.lon"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_52

    move-result-object v0

    .line 64
    .local v0, "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    if-nez v0, :cond_b

    .line 65
    const/4 v1, 0x0

    .line 76
    :goto_9
    monitor-exit p0

    return-object v1

    .line 68
    :cond_b
    const/4 v2, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_56

    :cond_13
    move v1, v2

    :goto_14
    packed-switch v1, :pswitch_data_64

    .line 76
    invoke-super {p0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    .line 68
    :sswitch_1c
    const-string v3, "location.tz"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_14

    :sswitch_25
    const-string v1, "location.lat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :sswitch_2f
    const-string v1, "location.lon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    goto :goto_14

    .line 70
    :pswitch_39
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 72
    :pswitch_3e
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLatitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 74
    :pswitch_48
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLongitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_52

    move-result-object v1

    goto :goto_9

    .line 63
    .end local v0    # "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    .line 68
    nop

    :sswitch_data_56
    .sparse-switch
        -0x38ab81a -> :sswitch_25
        -0x38ab66e -> :sswitch_2f
        0x20eb035f -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_39
        :pswitch_3e
        :pswitch_48
    .end packed-switch
.end method
