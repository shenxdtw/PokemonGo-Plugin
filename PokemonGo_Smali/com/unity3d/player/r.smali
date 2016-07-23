.class final Lcom/unity3d/player/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private c:Landroid/location/Location;

.field private d:F

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/r;->d:F

    iput-boolean v1, p0, Lcom/unity3d/player/r;->e:Z

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    iput-boolean v1, p0, Lcom/unity3d/player/r;->g:Z

    iput v1, p0, Lcom/unity3d/player/r;->h:I

    iput-object p1, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method private a(I)V
    .registers 3

    iput p1, p0, Lcom/unity3d/player/r;->h:I

    iget-object v0, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .registers 12

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/unity3d/player/r;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iget-object v1, p0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocation(FFFFDF)V

    goto :goto_2
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2b

    move v3, v1

    :goto_16
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2d

    move v0, v1

    :goto_1e
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2f

    move v6, v1

    :goto_25
    if-nez v3, :cond_4

    if-eqz v0, :cond_31

    move v1, v2

    goto :goto_4

    :cond_2b
    move v3, v2

    goto :goto_16

    :cond_2d
    move v0, v2

    goto :goto_1e

    :cond_2f
    move v6, v2

    goto :goto_25

    :cond_31
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_6b

    move v5, v1

    :goto_3e
    if-gez v0, :cond_6d

    move v4, v1

    :goto_41
    const/16 v3, 0xc8

    if-le v0, v3, :cond_6f

    move v0, v1

    :goto_46
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_71

    move v3, v1

    :goto_50
    or-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/unity3d/player/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v4, :cond_4

    if-eqz v6, :cond_63

    if-eqz v5, :cond_4

    :cond_63
    if-eqz v6, :cond_69

    if-nez v0, :cond_69

    if-nez v3, :cond_4

    :cond_69
    move v1, v2

    goto :goto_4

    :cond_6b
    move v5, v2

    goto :goto_3e

    :cond_6d
    move v4, v2

    goto :goto_41

    :cond_6f
    move v0, v2

    goto :goto_46

    :cond_71
    move v3, v2

    goto :goto_50
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public final a(F)V
    .registers 2

    iput p1, p0, Lcom/unity3d/player/r;->d:F

    return-void
.end method

.method public final a()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final b()V
    .registers 11

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/r;->g:Z

    iget-boolean v0, p0, Lcom/unity3d/player/r;->e:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x5

    const-string v1, "Location_StartUpdatingLocation already started!"

    invoke-static {v0, v1}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/unity3d/player/r;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    goto :goto_10

    :cond_1b
    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v9}, Lcom/unity3d/player/r;->a(I)V

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    goto :goto_10

    :cond_36
    const/4 v2, 0x0

    iget v1, p0, Lcom/unity3d/player/r;->f:I

    if-ne v1, v6, :cond_8a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v5

    if-ne v5, v6, :cond_3f

    move-object v7, v1

    :goto_56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5a
    :goto_5a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v7, :cond_72

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-eq v2, v9, :cond_5a

    :cond_72
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/unity3d/player/r;->d:F

    iget-object v5, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, p0, Lcom/unity3d/player/r;->e:Z

    goto :goto_5a

    :cond_8a
    move-object v7, v2

    goto :goto_56
.end method

.method public final b(F)V
    .registers 4

    const/4 v1, 0x1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    :goto_9
    return-void

    :cond_a
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    iput v1, p0, Lcom/unity3d/player/r;->f:I

    goto :goto_9

    :cond_13
    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/r;->f:I

    goto :goto_9
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/r;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/unity3d/player/r;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/unity3d/player/r;->a(I)V

    return-void
.end method

.method public final d()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/unity3d/player/r;->h:I

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/unity3d/player/r;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    :cond_a
    iput-boolean v2, p0, Lcom/unity3d/player/r;->g:Z

    invoke-virtual {p0}, Lcom/unity3d/player/r;->c()V

    :cond_f
    return-void
.end method

.method public final e()V
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/r;->g:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/unity3d/player/r;->b()V

    :cond_7
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/r;->a(I)V

    invoke-direct {p0, p1}, Lcom/unity3d/player/r;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/r;->c:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
