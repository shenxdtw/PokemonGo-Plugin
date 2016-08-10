.class Lcom/upsight/android/analytics/internal/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/upsight/android/analytics/UpsightAnalyticsApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SEQUENCE_ID_FIELD_NAME:Ljava/lang/String; = "seq_id"

.field private static final USER_ATTRIBUTES_FIELD_NAME:Ljava/lang/String; = "user_attributes"


# instance fields
.field private final mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mDefaultUserAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

.field private final mGson:Lcom/google/gson/Gson;

.field private final mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

.field private final mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

.field private final mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private final mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/upsight/android/analytics/internal/Analytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/Analytics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/UpsightLifeCycleTracker;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)V
    .registers 11
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "lifeCycleTracker"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    .param p3, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p4, "schemaSelector"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p5, "associationManager"    # Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .param p6, "optOutStatus"    # Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
    .param p7, "locationTracker"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .param p8, "userAttributes"    # Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
    .param p9, "googlePlayHelper"    # Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 87
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 88
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    .line 89
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 90
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGson:Lcom/google/gson/Gson;

    .line 91
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 92
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 93
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 94
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    .line 95
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    .line 96
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    .line 98
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    .line 99
    return-void
.end method

.method private appendAssociationData(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    invoke-interface {v0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManager;->associate(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 130
    return-void
.end method

.method private getAllAsJsonElement(Ljava/util/Set;)Lcom/google/gson/JsonElement;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "defaultUserAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;>;"
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 228
    .local v6, "o":Lcom/google/gson/JsonObject;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_169

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 229
    .local v3, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    const-class v7, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 230
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 230
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 233
    :cond_4c
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 234
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 235
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 234
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_9

    .line 237
    :cond_8c
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 238
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 239
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 240
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 238
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    .line 241
    :cond_cc
    const-class v7, Ljava/lang/Float;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 242
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 244
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 242
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_9

    .line 245
    :cond_10c
    const-class v7, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 246
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 247
    .local v2, "defaultDatetime":Ljava/util/Date;
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v10, v11, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 248
    .local v4, "defaultDatetimeS":J
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.upsight.user_attribute."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 252
    .local v0, "datetimeS":J
    const-wide v10, 0x3afff4417fL

    cmp-long v7, v0, v10

    if-eqz v7, :cond_15d

    .line 253
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_9

    .line 255
    :cond_15d
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_9

    .line 259
    .end local v0    # "datetimeS":J
    .end local v2    # "defaultDatetime":Ljava/util/Date;
    .end local v3    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    .end local v4    # "defaultDatetimeS":J
    :cond_169
    return-object v6
.end method

.method private toJsonElement(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/google/gson/JsonObject;
    .registers 6
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 123
    .local v0, "node":Lcom/google/gson/JsonObject;
    const-string v1, "seq_id"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/EventSequenceId;->getAndIncrement(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 124
    const-string v1, "user_attributes"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/Analytics;->getAllAsJsonElement(Ljava/util/Set;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 125
    return-object v0
.end method


# virtual methods
.method public getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDatetimeUserAttribute(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDatetime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOptOutStatus()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get()Z

    move-result v0

    return v0
.end method

.method public getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public purgeLocation()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge()V

    .line 160
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 180
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/util/Date;)V

    .line 185
    return-void
.end method

.method public record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V
    .registers 15
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v10

    .line 104
    .local v10, "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    invoke-interface {v10}, Lcom/upsight/android/analytics/internal/session/Session;->getTimeStamp()J

    move-result-wide v1

    .line 105
    .local v1, "sessionStart":J
    invoke-interface {v10}, Lcom/upsight/android/analytics/internal/session/Session;->getMessageID()Ljava/lang/Integer;

    move-result-object v3

    .line 106
    .local v3, "messageID":Ljava/lang/Integer;
    invoke-interface {v10}, Lcom/upsight/android/analytics/internal/session/Session;->getCampaignID()Ljava/lang/Integer;

    move-result-object v4

    .line 107
    .local v4, "campaignID":Ljava/lang/Integer;
    invoke-interface {v10}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v5

    .line 108
    .local v5, "sessionNum":I
    invoke-interface {v10}, Lcom/upsight/android/analytics/internal/session/Session;->getPreviousTos()J

    move-result-wide v6

    .line 110
    .local v6, "prevTos":J
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/Analytics;->toJsonElement(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 111
    .local v11, "eventNode":Lcom/google/gson/JsonObject;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/upsight/android/analytics/internal/Analytics;->appendAssociationData(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 113
    sget-object v0, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    .line 114
    invoke-virtual {v11}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-static/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v12

    .line 115
    .local v12, "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    instance-of v0, p1, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    if-eqz v0, :cond_40

    .line 116
    check-cast p1, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    .end local p1    # "event":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;->getIdentifiersName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->setIdentifiers(Ljava/lang/String;)V

    .line 118
    :cond_40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, v12}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 119
    return-void
.end method

.method public registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 145
    return-void
.end method

.method public setOptOutStatus(Z)V
    .registers 3
    .param p1, "optOut"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Z)V

    .line 135
    return-void
.end method

.method public trackActivity(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 150
    return-void
.end method

.method public trackLocation(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .registers 3
    .param p1, "locationData"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 155
    return-void
.end method

.method public trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .registers 21
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "responseData"    # Landroid/content/Intent;
    .param p9, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 221
    return-void
.end method
