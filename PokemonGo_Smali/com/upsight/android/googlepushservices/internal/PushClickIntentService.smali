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
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v9

    .line 62
    .local v9, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v10, "com.upsight.extension.googlepushservices"

    invoke-virtual {v9, v10}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v10

    check-cast v10, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    check-cast v10, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 63
    invoke-virtual {v10}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v10

    check-cast v10, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    .line 64
    invoke-interface {v10, p0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    .line 66
    const-string v10, "messageIntent"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 67
    .local v4, "messageIntent":Landroid/content/Intent;
    const-string v10, "session_extra"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 70
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 71
    .local v6, "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    sget-object v10, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v10}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v10

    const-class v12, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-interface {v10, v12}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v10

    .line 72
    invoke-virtual {v10}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v10

    invoke-virtual {v10}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-virtual {v10}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 73
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->fromPush(Landroid/os/Bundle;)Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 77
    :cond_56
    const-string v10, "message_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 78
    const-string v10, "message_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;->createBuilder(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    move-result-object v0

    .line 81
    .local v0, "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    const-string v10, "campaign_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_81

    .line 82
    const-string v10, "campaign_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .line 85
    :cond_81
    invoke-virtual {v0, v9}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 89
    .end local v0    # "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    :cond_84
    const-string v10, "contentId"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "contentProviderBundle":Lorg/json/JSONObject;
    :try_start_91
    const-string v10, "name"

    const-string v11, "upsight"

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v5, "parameters":Lorg/json/JSONObject;
    const-string v10, "content_id"

    const-string v11, "contentId"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v10, "parameters"

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-static {v1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;->createBuilder(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v10

    const-string v11, "com_upsight_push_scope"

    .line 99
    invoke-virtual {v10, v11}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v8

    .line 102
    .local v8, "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    const-string v10, "campaign_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 103
    const-string v10, "campaign_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .line 106
    :cond_cc
    invoke-virtual {v8, v9}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_cf} :catch_fe

    .line 115
    .end local v1    # "contentProviderBundle":Lorg/json/JSONObject;
    .end local v5    # "parameters":Lorg/json/JSONObject;
    .end local v8    # "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    :cond_cf
    :goto_cf
    const-string v10, "isDispatchFromForeground"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_fa

    .line 116
    invoke-virtual {v9}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v10

    const-class v11, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-interface {v10, v11}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v10

    invoke-virtual {v10}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v10

    invoke-virtual {v10}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .local v7, "status":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    if-eqz v7, :cond_fa

    sget-object v10, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 117
    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 119
    .end local v7    # "status":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    :cond_fa
    invoke-virtual {p0, v4}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->startActivity(Landroid/content/Intent;)V

    .line 121
    :cond_fd
    return-void

    .line 108
    .restart local v1    # "contentProviderBundle":Lorg/json/JSONObject;
    :catch_fe
    move-exception v2

    .line 109
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v10

    sget-object v11, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Could not construct \"content_provider\" bundle in \"upsight.content.unrendered\""

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v10, v11, v2, v12, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cf
.end method
