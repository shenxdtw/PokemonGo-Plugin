.class public Lcom/upsight/android/unity/UpsightPlugin;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Upsight-Unity"


# instance fields
.field private mExtensions:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/unity/IUpsightExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    .line 56
    :try_start_b
    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 59
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    sget-object v4, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 61
    new-instance v2, Lcom/upsight/android/unity/UpsightPlugin$1;

    invoke-direct {v2, p0, v0}, Lcom/upsight/android/unity/UpsightPlugin$1;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Landroid/app/Activity;)V

    invoke-static {v2}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    .line 73
    return-void

    .line 69
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_2f
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Upsight-Unity"

    const-string v3, "Critical Error: Exception thrown while initializing. Upsight will NOT work!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    throw v1
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    return-object v0
.end method

.method private static publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .registers 9
    .param p0, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 426
    new-instance v4, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v4}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 428
    .local v4, "pubData":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_39

    .line 430
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    .local v2, "jObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_22} :catch_35

    .line 436
    .local v3, "key":Ljava/lang/String;
    :try_start_22
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 437
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3e

    .line 438
    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v3, v5}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_16

    .line 448
    :catch_30
    move-exception v0

    .line 449
    .local v0, "e":Lorg/json/JSONException;
    :try_start_31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_16

    .line 452
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 453
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 457
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_39
    invoke-virtual {v4}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v6

    return-object v6

    .line 439
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3e
    :try_start_3e
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_4c

    .line 440
    check-cast v5, Ljava/lang/Float;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;F)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_16

    .line 441
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4c
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5a

    .line 442
    check-cast v5, Ljava/lang/Double;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;D)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_16

    .line 443
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_5a
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_68

    .line 444
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;J)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_16

    .line 445
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_68
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_16

    .line 446
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_75} :catch_30

    goto :goto_16
.end method


# virtual methods
.method public getAppToken()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManagedBool(Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "val":Z
    :try_start_1
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    move-result-object v1

    .line 325
    .local v1, "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    if-eqz v1, :cond_14

    .line 326
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 333
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :goto_13
    return v2

    .line 328
    .restart local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :cond_14
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed bool, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_13

    .line 330
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :catch_33
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getManagedFloat(Ljava/lang/String;)F
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "val":F
    :try_start_1
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    move-result-object v1

    .line 295
    .local v1, "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    if-eqz v1, :cond_14

    .line 296
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 303
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :goto_13
    return v2

    .line 298
    .restart local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :cond_14
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed float, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_13

    .line 300
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :catch_33
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getManagedInt(Ljava/lang/String;)I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "val":I
    :try_start_1
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    move-result-object v1

    .line 310
    .local v1, "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    if-eqz v1, :cond_14

    .line 311
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 318
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :goto_13
    return v2

    .line 313
    .restart local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :cond_14
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed int, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_13

    .line 315
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :catch_33
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getManagedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 277
    const/4 v3, 0x0

    .line 279
    .local v3, "val":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    move-result-object v2

    .line 280
    .local v2, "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    if-eqz v2, :cond_12

    .line 281
    invoke-virtual {v2}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 288
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :goto_11
    return-object v3

    .line 283
    .restart local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :cond_12
    const-string v4, "Upsight-Unity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for managed string, please check your UXM schema"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_11

    .line 285
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :catch_31
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getOptOutStatus()Z
    .registers 3

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 125
    :goto_6
    return v1

    .line 122
    :catch_7
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPluginVersion()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSdkPlugin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttributesBool(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 246
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_11

    .line 247
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 253
    .end local v1    # "value":Ljava/lang/Boolean;
    :goto_c
    return v2

    .line 249
    :catch_d
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getUserAttributesDatetime(Ljava/lang/String;)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDatetime(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 259
    .local v3, "value":Ljava/util/Date;
    if-eqz v3, :cond_19

    .line 260
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 261
    .local v0, "datetimeMs":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-wide v4

    .line 267
    .end local v0    # "datetimeMs":J
    .end local v3    # "value":Ljava/util/Date;
    :goto_14
    return-wide v4

    .line 263
    :catch_15
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_19
    const-wide/16 v4, 0x0

    goto :goto_14
.end method

.method public getUserAttributesFloat(Ljava/lang/String;)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 220
    .local v1, "value":Ljava/lang/Float;
    if-eqz v1, :cond_11

    .line 221
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 227
    .end local v1    # "value":Ljava/lang/Float;
    :goto_c
    return v2

    .line 223
    :catch_d
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getUserAttributesInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInteger(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 233
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_11

    .line 234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 240
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_c
    return v2

    .line 236
    :catch_d
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getUserAttributesString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 214
    :goto_6
    return-object v1

    .line 210
    :catch_7
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onApplicationPaused()V
    .registers 4

    .prologue
    .line 462
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/unity/IUpsightExtensionManager;

    .line 463
    .local v0, "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    invoke-interface {v0}, Lcom/upsight/android/unity/IUpsightExtensionManager;->onApplicationPaused()V

    goto :goto_6

    .line 465
    .end local v0    # "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    :cond_16
    return-void
.end method

.method public onApplicationResumed()V
    .registers 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/unity/IUpsightExtensionManager;

    .line 469
    .local v0, "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    invoke-interface {v0}, Lcom/upsight/android/unity/IUpsightExtensionManager;->onApplicationResumed()V

    goto :goto_6

    .line 471
    .end local v0    # "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    :cond_16
    return-void
.end method

.method public purgeLocation()V
    .registers 2

    .prologue
    .line 147
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$3;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UpsightPlugin$3;-><init>(Lcom/upsight/android/unity/UpsightPlugin;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public recordAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$9;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public recordAttributionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "campaign"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "creative"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 411
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/unity/UpsightPlugin$13;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public recordGooglePlayPurchase(ILjava/lang/String;DDLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "reponseCode"    # I
    .param p9, "inAppPurchaseData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "inAppDataSignature"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$12;

    move-object v1, p0

    move-object/from16 v2, p11

    move/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/upsight/android/unity/UpsightPlugin$12;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public recordMilestoneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$10;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public recordMonetizationEvent(DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
    .registers 21
    .param p1, "totalPrice"    # D
    .param p3, "currency"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "product"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "price"    # D
    .param p7, "resolution"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "quantity"    # I
    .param p9, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 365
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$11;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p9

    move-object v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/upsight/android/unity/UpsightPlugin$11;-><init>(Lcom/upsight/android/unity/UpsightPlugin;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method public registerExtension(Lcom/upsight/android/unity/IUpsightExtensionManager;)V
    .registers 4
    .param p1, "extension"    # Lcom/upsight/android/unity/IUpsightExtensionManager;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    .local v0, "successful":Z
    if-eqz v0, :cond_d

    .line 78
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {p1, v1}, Lcom/upsight/android/unity/IUpsightExtensionManager;->init(Lcom/upsight/android/UpsightContext;)V

    .line 80
    :cond_d
    return-void
.end method

.method public setLocation(DD)V
    .registers 12
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 137
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/unity/UpsightPlugin$2;-><init>(Lcom/upsight/android/unity/UpsightPlugin;DD)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;)V
    .registers 6
    .param p1, "logLevel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 104
    const-string v1, "Upsight-Unity"

    const-string v2, "enabling verbose logs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, ".*"

    const-class v3, Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 112
    :goto_24
    return-void

    .line 107
    :cond_25
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    invoke-static {p1}, Lcom/upsight/android/logger/UpsightLogger$Level;->valueOf(Ljava/lang/String;)Lcom/upsight/android/logger/UpsightLogger$Level;

    move-result-object v3

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_24

    .line 109
    :catch_39
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public setOptOutStatus(Z)V
    .registers 4
    .param p1, "optOutStatus"    # Z

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Lcom/upsight/android/UpsightContext;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 134
    :goto_5
    return-void

    .line 131
    :catch_6
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setUserAttributesBool(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 188
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$7;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public setUserAttributesDatetime(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 197
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/upsight/android/unity/UpsightPlugin$8;-><init>(Lcom/upsight/android/unity/UpsightPlugin;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public setUserAttributesFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 170
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$5;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;F)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public setUserAttributesInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 179
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$6;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public setUserAttributesString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$4;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
