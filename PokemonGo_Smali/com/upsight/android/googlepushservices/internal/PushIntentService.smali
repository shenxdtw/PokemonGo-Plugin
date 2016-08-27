.class public final Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.super Landroid/app/IntentService;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    }
.end annotation


# static fields
.field private static final ACTION_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ACTION_CONTENT_UNIT:Ljava/lang/String; = "content_id"

.field private static final ACTION_PLACEMENT:Ljava/lang/String; = "placement"

.field private static final INVALID_MSG_ID:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_BUILDER_FACTORY_KEY_NAME:Ljava/lang/String; = "com.upsight.notification_builder_factory"

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushIntentService"

.field private static final URI_HOST:Ljava/lang/String; = "com.playhaven.android"

.field private static final URI_SCHEME:Ljava/lang/String; = "playhaven"


# instance fields
.field mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

.field mUpsight:Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "UpsightGcmPushIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private interpretPushEvent(Landroid/os/Bundle;)V
    .registers 21
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const/16 v17, 0x0

    .line 127
    .local v17, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, "uriString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 129
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 132
    :cond_18
    if-eqz v17, :cond_72

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v15

    .line 135
    .local v15, "logger":Lcom/upsight/android/logger/UpsightLogger;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v15}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-result-object v14

    .line 136
    .local v14, "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    const/4 v4, 0x0

    .line 137
    .local v4, "messageIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 138
    .local v5, "isDispatchFromForeground":Z
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;->$SwitchMap$com$upsight$android$googlepushservices$internal$PushIntentService$UriTypes:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_c0

    .line 164
    :goto_41
    if-eqz v4, :cond_72

    .line 165
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "title":Ljava/lang/String;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "text":Ljava/lang/String;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->image_url:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "imageUrl":Ljava/lang/String;
    iget-object v6, v14, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    iget-object v7, v14, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->messageId:Ljava/lang/Integer;

    iget-object v8, v14, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->contentId:Ljava/lang/Integer;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->showNotification(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v4    # "messageIntent":Landroid/content/Intent;
    .end local v5    # "isDispatchFromForeground":Z
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "imageUrl":Ljava/lang/String;
    .end local v14    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .end local v15    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    :cond_72
    return-void

    .line 140
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    .restart local v5    # "isDispatchFromForeground":Z
    .restart local v14    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .restart local v15    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    :pswitch_73
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "messageIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    .line 142
    goto :goto_41

    .line 145
    :pswitch_7e
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 146
    const/4 v5, 0x0

    .line 147
    goto :goto_41

    .line 151
    :pswitch_8c
    :try_start_8c
    const-string v3, "activity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 152
    .local v12, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8c .. :try_end_a1} :catch_a5

    .line 153
    .end local v4    # "messageIntent":Landroid/content/Intent;
    .local v16, "messageIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    move-object/from16 v4, v16

    .line 156
    .end local v16    # "messageIntent":Landroid/content/Intent;
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    goto :goto_41

    .line 154
    .end local v12    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_a5
    move-exception v13

    .line 155
    .local v13, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Could not parse class name"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v15, v3, v13, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    .line 159
    .end local v13    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_b1
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 160
    const/4 v5, 0x0

    goto :goto_41

    .line 138
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_73
        :pswitch_7e
        :pswitch_8c
        :pswitch_b1
    .end packed-switch
.end method

.method private static parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;
    .registers 10
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    move-object v1, p1

    .line 68
    .local v1, "integerValue":Ljava/lang/Integer;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 70
    :try_start_f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v1

    .line 79
    :cond_17
    :goto_17
    return-object v1

    .line 71
    :catch_18
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-nez p1, :cond_2d

    .line 73
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to null."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 75
    :cond_2d
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method private showNotification(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "isDispatchFromForeground"    # Z
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "messageId"    # Ljava/lang/Integer;
    .param p5, "contentId"    # Ljava/lang/Integer;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 292
    invoke-static/range {p0 .. p5}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->newIntent(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 291
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 296
    .local v2, "notifyIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    if-nez v3, :cond_18

    .line 297
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->loadNotificationBuilderFactory()Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    .line 300
    :cond_18
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 301
    invoke-interface {v3, v4, p6, p7, p8}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;->getNotificationBuilder(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 302
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 303
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 305
    .local v0, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 306
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    return-void
.end method


# virtual methods
.method public checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    .registers 12
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 186
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 190
    :cond_16
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid URI, host or scheme is null or empty: %s."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 217
    :goto_29
    return-object v5

    .line 194
    :cond_2a
    const-string v5, "playhaven"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "com.playhaven.android"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 195
    const-string v5, "activity"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 196
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 198
    :cond_45
    const-string v5, "placement"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 199
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 201
    :cond_50
    const-string v5, "content_id"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 202
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 204
    :cond_5b
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 210
    :cond_5e
    :try_start_5e
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 211
    .local v4, "testIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_75

    move-result-object v2

    .line 217
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_8a

    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 212
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "testIntent":Landroid/content/Intent;
    :catch_75
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Nothing registered for %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "testIntent":Landroid/content/Intent;
    :cond_8a
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_29
.end method

.method loadNotificationBuilderFactory()Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 229
    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    .line 233
    .local v4, "logger":Lcom/upsight/android/logger/UpsightLogger;
    :try_start_8
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 234
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 238
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_55

    const-string v5, "com.upsight.notification_builder_factory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 241
    const-string v5, "com.upsight.notification_builder_factory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_27} :catch_7b

    move-result-object v2

    .line 245
    .local v2, "customBuilderClassName":Ljava/lang/String;
    :try_start_28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 248
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 249
    const-string v5, "Upsight"

    const-string v6, "Class %s must implement %s!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 250
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 249
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_55} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_55} :catch_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_55} :catch_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_55} :catch_7b

    .line 272
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "customBuilderClassName":Ljava/lang/String;
    :cond_55
    :goto_55
    new-instance v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    invoke-direct {v5}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;-><init>()V

    :goto_5a
    return-object v5

    .line 253
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "customBuilderClassName":Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_61} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_5b .. :try_end_61} :catch_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_5b .. :try_end_61} :catch_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_61} :catch_7b

    goto :goto_5a

    .line 256
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_62
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_63
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s was not found."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_7a} :catch_7b

    goto :goto_55

    .line 267
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "customBuilderClassName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_7b
    move-exception v3

    .line 268
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Package name missing!?"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_55

    .line 259
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "customBuilderClassName":Ljava/lang/String;
    :catch_88
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/InstantiationException;
    :try_start_89
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s does not have public access."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_55

    .line 262
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_a1
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s could not be instantiated."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_b9} :catch_7b

    goto :goto_55
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    const-string v4, "com.upsight.extension.googlepushservices"

    .line 85
    invoke-virtual {v3, v4}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 86
    .local v0, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v0, :cond_45

    .line 87
    invoke-virtual {v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    invoke-interface {v3, p0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V

    .line 89
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "messageType":Ljava/lang/String;
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 94
    invoke-direct {p0, v1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->interpretPushEvent(Landroid/os/Bundle;)V

    .line 97
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_42
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/PushBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 99
    .end local v2    # "messageType":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v5, 0x0

    .line 112
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    invoke-static {v0, v1, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    .local v2, "messageId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v3

    .line 118
    .local v3, "campaignId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    .local v4, "contentId":Ljava/lang/Integer;
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;-><init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;)V

    return-object v0
.end method
