.class public abstract Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
.super Ljava/lang/Object;
.source "UpsightUserAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    }
.end annotation


# static fields
.field public static final DATETIME_NULL:Ljava/lang/String; = "9999-12-31T23:59:59"

.field public static final DATETIME_NULL_S:J = 0x3afff4417fL

.field protected static final TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field protected static final TYPE_DATETIME:Ljava/lang/String; = "datetime"

.field protected static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field protected static final TYPE_INTEGER:Ljava/lang/String; = "integer"

.field protected static final TYPE_STRING:Ljava/lang/String; = "string"

.field public static final USER_ATTRIBUTES_PREFIX:Ljava/lang/String; = "com.upsight.user_attribute."


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 192
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 193
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    :goto_12
    return-object v1

    .line 195
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getDatetime(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 224
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 225
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getDatetimeUserAttribute(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 229
    :goto_12
    return-object v1

    .line 227
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getDefault(Lcom/upsight/android/UpsightContext;)Ljava/util/Set;
    .registers 6
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 239
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 240
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getDefaultUserAttributes()Ljava/util/Set;

    move-result-object v1

    .line 244
    :goto_12
    return-object v1

    .line 242
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_12
.end method

.method public static getFloat(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Float;
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 208
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 209
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 213
    :goto_12
    return-object v1

    .line 211
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getInteger(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 176
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 177
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 181
    :goto_12
    return-object v1

    .line 179
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getString(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 160
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_13

    .line 161
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_12
    return-object v1

    .line 163
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 105
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 106
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    :goto_11
    return-void

    .line 108
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Float;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 125
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 126
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    .line 130
    :goto_11
    return-void

    .line 128
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 85
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 86
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    :goto_11
    return-void

    .line 88
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 65
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 66
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_11
    return-void

    .line 68
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/util/Date;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 145
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 146
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/util/Date;)V

    .line 150
    :goto_11
    return-void

    .line 148
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getDatetime(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getDefault()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloat(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Float;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/util/Date;)V
.end method
