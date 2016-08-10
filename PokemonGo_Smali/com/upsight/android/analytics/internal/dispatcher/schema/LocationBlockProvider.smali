.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "LocationBlockProvider.java"


# static fields
.field private static final DATETIME_FORMAT_ISO_8601:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSSZ"

.field public static final LATITUDE_KEY:Ljava/lang/String; = "location.lat"

.field public static final LONGITUDE_KEY:Ljava/lang/String; = "location.lon"

.field public static final TIME_ZONE_KEY:Ljava/lang/String; = "location.tz"

.field private static final TIME_ZONE_OFFSET_LENGTH:I = 0x5

.field private static final TIME_ZONE_OFFSET_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCurrentTimeZone:Ljava/util/TimeZone;

.field private mTimeZoneOffset:Ljava/lang/String;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "[+-][0-9]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->TIME_ZONE_OFFSET_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mCurrentTimeZone:Ljava/util/TimeZone;

    .line 73
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mTimeZoneOffset:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 82
    return-void
.end method

.method private fetchCurrentTimeZone()Ljava/lang/String;
    .registers 8

    .prologue
    .line 128
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 129
    .local v3, "latestTimeZone":Ljava/util/TimeZone;
    if-eqz v3, :cond_3c

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mCurrentTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 131
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 132
    .local v1, "datetimeFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "datetime":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 136
    .local v4, "length":I
    const/4 v5, 0x5

    if-le v4, v5, :cond_3c

    .line 138
    add-int/lit8 v5, v4, -0x5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "latestOffset":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->isTimeZoneOffsetValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 141
    iput-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mCurrentTimeZone:Ljava/util/TimeZone;

    .line 142
    iput-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mTimeZoneOffset:Ljava/lang/String;

    .line 147
    .end local v0    # "datetime":Ljava/lang/String;
    .end local v1    # "datetimeFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "latestOffset":Ljava/lang/String;
    .end local v4    # "length":I
    :cond_3c
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mTimeZoneOffset:Ljava/lang/String;

    return-object v5
.end method

.method private fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    const-class v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    .line 119
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
    .line 106
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
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    monitor-enter p0

    const/4 v3, -0x1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5a

    :cond_b
    move v2, v3

    :goto_c
    packed-switch v2, :pswitch_data_68

    .line 99
    invoke-super {p0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_57

    move-result-object v1

    :cond_13
    :goto_13
    monitor-exit p0

    return-object v1

    .line 86
    :sswitch_15
    :try_start_15
    const-string v4, "location.tz"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_c

    :sswitch_1e
    const-string v2, "location.lat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :sswitch_28
    const-string v2, "location.lon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    goto :goto_c

    .line 88
    :pswitch_32
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->fetchCurrentTimeZone()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 91
    :pswitch_37
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    move-result-object v0

    .line 92
    .local v0, "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLatitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 95
    .end local v0    # "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :pswitch_47
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->fetchLatestLocation()Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    move-result-object v0

    .line 96
    .restart local v0    # "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLongitude()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_57

    move-result-object v1

    goto :goto_13

    .line 86
    .end local v0    # "latestLocation":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1

    :sswitch_data_5a
    .sparse-switch
        -0x38ab81a -> :sswitch_1e
        -0x38ab66e -> :sswitch_28
        0x20eb035f -> :sswitch_15
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_32
        :pswitch_37
        :pswitch_47
    .end packed-switch
.end method

.method isTimeZoneOffsetValid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "timeZoneOffset"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;->TIME_ZONE_OFFSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
