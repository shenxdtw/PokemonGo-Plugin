.class public Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
.super Landroid/app/IntentService;
.source "PushClickIntentService.java"


# static fields
.field private static final BUNDLE_KEY_MESSAGE_INTENT:Ljava/lang/String; = "messageIntent"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_NAME:Ljava/lang/String; = "name"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PARAM_KEY_IS_DISPATCH_FROM_FOREGROUND:Ljava/lang/String; = "isDispatchFromForeground"

.field private static final PARAM_KEY_PUSH_CONTENT_ID:Ljava/lang/String; = "contentId"

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushClickIntentService"


# instance fields
.field mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "UpsightGcmPushClickIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected static appendMessageIntentBundle(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;
    .registers 8
    .param p0, "messageIntent"    # Landroid/content/Intent;
    .param p1, "isDispatchFromForeground"    # Z
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_10

    .line 130
    const-string v1, "campaign_id"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_10
    if-eqz p3, :cond_1b

    .line 133
    const-string v1, "message_id"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    :cond_1b
    if-eqz p4, :cond_26

    .line 136
    const-string v1, "contentId"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_26
    const-string v1, "isDispatchFromForeground"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v1, "pushMessage"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x34000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const-string v1, "session_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method static newIntent(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "isDispatchFromForeground"    # Z
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "messageId"    # Ljava/lang/Integer;
    .param p5, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "messageIntent"

    .line 50
    invoke-static {p1, p2, p3, p4, p5}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->appendMessageIntentBundle(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-static/range {p0 .. p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v11

    .line 61
    .local v11, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v12, "com.upsight.extension.googlepushservices"

    invoke-virtual {v11, v12}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 62
    .local v4, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v4, :cond_105

    .line 63
    invoke-virtual {v4}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v12

    check-cast v12, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    .line 65
    const-string v12, "messageIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 66
    .local v6, "messageIntent":Landroid/content/Intent;
    const-string v12, "session_extra"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 69
    .local v5, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 70
    .local v8, "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    sget-object v12, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v12}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v12

    const-class v14, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-interface {v12, v14}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v12

    .line 71
    invoke-virtual {v12}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v12

    invoke-virtual {v12}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-virtual {v12}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 72
    invoke-static {v5}, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->fromPush(Landroid/os/Bundle;)Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 76
    :cond_5c
    const-string v12, "message_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8a

    .line 77
    const-string v12, "message_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;->createBuilder(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    move-result-object v1

    .line 80
    .local v1, "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    const-string v12, "campaign_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 81
    const-string v12, "campaign_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .line 84
    :cond_87
    invoke-virtual {v1, v11}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 88
    .end local v1    # "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    :cond_8a
    const-string v12, "contentId"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v2, "contentProviderBundle":Lorg/json/JSONObject;
    :try_start_97
    const-string v12, "name"

    const-string v13, "upsight"

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v7, "parameters":Lorg/json/JSONObject;
    const-string v12, "content_id"

    const-string v13, "contentId"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v12, "parameters"

    invoke-virtual {v2, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-static {v2}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;->createBuilder(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v12

    const-string v13, "com_upsight_push_scope"

    .line 98
    invoke-virtual {v12, v13}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v10

    .line 101
    .local v10, "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    const-string v12, "campaign_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 102
    const-string v12, "campaign_id"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .line 105
    :cond_d2
    invoke-virtual {v10, v11}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_d5} :catch_106

    .line 114
    .end local v2    # "contentProviderBundle":Lorg/json/JSONObject;
    .end local v7    # "parameters":Lorg/json/JSONObject;
    .end local v10    # "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    :cond_d5
    :goto_d5
    const-string v12, "isDispatchFromForeground"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_100

    .line 115
    invoke-virtual {v11}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v12

    const-class v13, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-interface {v12, v13}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v12

    invoke-virtual {v12}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v12

    invoke-virtual {v12}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .local v9, "status":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    if-eqz v9, :cond_100

    sget-object v12, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 116
    invoke-virtual {v9}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_105

    .line 118
    .end local v9    # "status":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    :cond_100
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "messageIntent":Landroid/content/Intent;
    .end local v8    # "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    :cond_105
    return-void

    .line 107
    .restart local v2    # "contentProviderBundle":Lorg/json/JSONObject;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v6    # "messageIntent":Landroid/content/Intent;
    .restart local v8    # "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    :catch_106
    move-exception v3

    .line 108
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v12

    sget-object v13, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v14, "Could not construct \"content_provider\" bundle in \"upsight.content.unrendered\""

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v3, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d5
.end method
