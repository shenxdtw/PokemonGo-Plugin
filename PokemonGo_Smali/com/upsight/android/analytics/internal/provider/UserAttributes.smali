.class final Lcom/upsight/android/analytics/internal/provider/UserAttributes;
.super Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
.source "UserAttributes.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DATETIME_DEFAULT_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final TIMEZONE_UTC:Ljava/lang/String; = "+0000"

.field private static final USER_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_ATTRIBUTE_PATTERN_INFER:Ljava/util/regex/Pattern;


# instance fields
.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mUpsight:Lcom/upsight/android/UpsightContext;

.field private mUserAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAttributesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "com\\.upsight\\.user_attribute\\.(string|boolean|integer|float|datetime)\\.([a-zA-Z0-9_]+)"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->USER_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "com\\.upsight\\.user_attribute\\.([a-zA-Z0-9_]+)"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->USER_ATTRIBUTE_PATTERN_INFER:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->DATETIME_DEFAULT_VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 66
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 67
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->loadDefaultAttributes()V

    .line 68
    return-void
.end method

.method private loadDefaultAttributes()V
    .registers 11

    .prologue
    .line 254
    :try_start_0
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 255
    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    .line 254
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 256
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 257
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_53

    .line 258
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    .local v4, "metaDataKey":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->createEntry(Ljava/lang/String;Ljava/lang/Object;)Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    move-result-object v2

    .line 260
    .local v2, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    if-eqz v2, :cond_1e

    .line 261
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_1e

    .line 266
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "metaDataKey":Ljava/lang/String;
    :catch_43
    move-exception v1

    .line 267
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Package name missing!?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_53
    return-void
.end method


# virtual methods
.method createEntry(Ljava/lang/String;Ljava/lang/Object;)Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    .registers 18
    .param p1, "metaDataKey"    # Ljava/lang/String;
    .param p2, "metaDataValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v4, 0x0

    .line 286
    .local v4, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    sget-object v11, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->USER_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 287
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "type":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 292
    .local v10, "value":Ljava/lang/Object;
    const-string v11, "string"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 293
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 316
    .end local v10    # "value":Ljava/lang/Object;
    :cond_26
    :goto_26
    new-instance v4, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .end local v4    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    invoke-direct {v4, v8, v10}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .restart local v4    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    :cond_2b
    :goto_2b
    return-object v4

    .line 294
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_2c
    const-string v11, "boolean"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    const-string v11, "integer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    const-string v11, "float"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 295
    :cond_44
    move-object/from16 v10, p2

    goto :goto_26

    .line 296
    :cond_47
    const-string v11, "datetime"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    move-object/from16 v2, p2

    .line 297
    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "defaultDatetime":Ljava/lang/String;
    sget-object v11, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->DATETIME_DEFAULT_VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 299
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    .local v1, "datetimeFormat":Ljava/text/SimpleDateFormat;
    :try_start_68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+0000"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_7e
    .catch Ljava/text/ParseException; {:try_start_68 .. :try_end_7e} :catch_80

    move-result-object v10

    .local v10, "value":Ljava/util/Date;
    goto :goto_26

    .line 302
    .local v10, "value":Ljava/lang/Object;
    :catch_80
    move-exception v3

    .line 303
    .local v3, "e":Ljava/text/ParseException;
    const-string v11, "Failed to parse default value of %sdatetime.%s in the Android Manifest"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "com.upsight.user_attribute."

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "msg":Ljava/lang/String;
    iget-object v11, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v12, "Upsight"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-interface {v11, v12, v7, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 308
    .end local v1    # "datetimeFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "e":Ljava/text/ParseException;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_a5
    const-string v11, "Invalid format for the default value of %sdatetime.%s in the Android Manifest. It must match %s (e.g. 1970-01-01T00:00:00)"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "com.upsight.user_attribute."

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    const/4 v13, 0x2

    const-string v14, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .restart local v7    # "msg":Ljava/lang/String;
    iget-object v11, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v12, "Upsight"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v7, v13}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 317
    .end local v2    # "defaultDatetime":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_cb
    sget-object v11, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->USER_ATTRIBUTE_PATTERN_INFER:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .local v6, "matcherInfer":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 319
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 320
    .restart local v8    # "name":Ljava/lang/String;
    new-instance v4, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .end local v4    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    move-object/from16 v0, p2

    invoke-direct {v4, v8, v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v4    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    goto/16 :goto_2b
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 196
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sboolean.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sboolean.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_36
    const-class v1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 200
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type boolean"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type boolean"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_6d
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 206
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDatetime(Ljava/lang/String;)Ljava/util/Date;
    .registers 15
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 227
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 228
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "No metadata found with android:name %sdatetime.%s in the Android Manifest"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "com.upsight.user_attribute."

    aput-object v9, v8, v10

    aput-object p1, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "No metadata found with android:name %sdatetime.%s in the Android Manifest"

    new-array v7, v12, [Ljava/lang/Object;

    const-string v8, "com.upsight.user_attribute."

    aput-object v8, v7, v10

    aput-object p1, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    :cond_36
    const-class v6, Ljava/util/Date;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 232
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "The user attribute %s must be of type datetime"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "The user attribute %s must be of type datetime"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_6d
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 239
    .local v2, "defaultDatetime":Ljava/util/Date;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 240
    .local v4, "defaultDatetimeS":J
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.upsight.user_attribute."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 241
    .local v0, "datetimeS":J
    new-instance v3, Ljava/util/Date;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    return-object v3
.end method

.method public getDefault()Ljava/util/Set;
    .registers 3
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
    .line 246
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 212
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sfloat.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sfloat.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_36
    const-class v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 216
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type float"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type float"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_6d
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 222
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 180
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sinteger.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sinteger.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_36
    const-class v1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 184
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type integer"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type integer"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_6d
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 190
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 164
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sstring.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sstring.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_36
    const-class v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type string"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type string"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6d
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 174
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    if-nez p2, :cond_1e

    .line 109
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    :goto_1d
    return-void

    .line 110
    :cond_1e
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 111
    const-class v1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type boolean"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type boolean"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_5d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1d

    .line 119
    :cond_7a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sboolean.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sboolean.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    if-nez p2, :cond_1e

    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :goto_1d
    return-void

    .line 128
    :cond_1e
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 129
    const-class v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type float"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type float"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_5d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_1d

    .line 137
    :cond_7a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sfloat.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sfloat.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    if-nez p2, :cond_1e

    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    :goto_1d
    return-void

    .line 92
    :cond_1e
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 93
    const-class v1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 94
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type integer"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type integer"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_5d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1d

    .line 101
    :cond_7a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sinteger.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sinteger.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    if-nez p2, :cond_1e

    .line 73
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :goto_1d
    return-void

    .line 74
    :cond_1e
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 75
    const-class v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 76
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "The user attribute %s must be of type string"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user attribute %s must be of type string"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_5d
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 83
    :cond_76
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %sstring.%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %sstring.%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Date;)V
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    if-nez p2, :cond_1e

    .line 145
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.upsight.user_attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :goto_1d
    return-void

    .line 146
    :cond_1e
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 147
    const-class v3, Ljava/util/Date;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 148
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Upsight"

    const-string v4, "The user attribute %s must be of type datetime"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The user attribute %s must be of type datetime"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_5d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 154
    .local v0, "datetimeS":J
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.upsight.user_attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1d

    .line 156
    .end local v0    # "datetimeS":J
    :cond_82
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Upsight"

    const-string v4, "No metadata found with android:name %sdatetime.%s in the Android Manifest"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.upsight.user_attribute."

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No metadata found with android:name %sdatetime.%s in the Android Manifest"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "com.upsight.user_attribute."

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
