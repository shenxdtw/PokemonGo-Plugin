.class public final Lcrittercism/android/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/cs$b;,
        Lcrittercism/android/cs$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/cs;->a:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private a()Lorg/json/JSONArray;
    .registers 7

    .prologue
    .line 138
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 140
    iget-object v0, p0, Lcrittercism/android/cs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 142
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cs$a;

    .line 146
    :try_start_2c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appLoads"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "count"

    iget v5, v0, Lcrittercism/android/cs$a;->b:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "current"

    iget-boolean v0, v0, Lcrittercism/android/cs$a;->a:Z

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_4a} :catch_4b

    goto :goto_f

    .line 153
    :catch_4b
    move-exception v0

    goto :goto_f

    .line 157
    :cond_4d
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcrittercism/android/bs;)Lcrittercism/android/cw;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1}, Lcrittercism/android/bs;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bq;

    instance-of v1, v0, Lcrittercism/android/ca;

    if-nez v1, :cond_3a

    move-object v1, v3

    :goto_1b
    if-eqz v1, :cond_75

    iget-object v0, p0, Lcrittercism/android/cs;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cs$a;

    if-nez v0, :cond_31

    new-instance v0, Lcrittercism/android/cs$a;

    invoke-direct {v0}, Lcrittercism/android/cs$a;-><init>()V

    iget-object v2, p0, Lcrittercism/android/cs;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget v2, v0, Lcrittercism/android/cs$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcrittercism/android/cs$a;->b:I

    move-object v0, v1

    :goto_38
    move-object v2, v0

    goto :goto_a

    :cond_3a
    invoke-virtual {v0}, Lcrittercism/android/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_44

    move-object v1, v3

    goto :goto_1b

    :cond_44
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_65
    move-object v1, v4

    goto :goto_1b

    :cond_67
    if-eqz v2, :cond_74

    iget-object v0, p0, Lcrittercism/android/cs;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cs$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/cs$a;->a:Z

    :cond_74
    return-object p0

    :cond_75
    move-object v0, v2

    goto :goto_38
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 163
    invoke-direct {p0}, Lcrittercism/android/cs;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 172
    :try_start_1
    invoke-direct {p0}, Lcrittercism/android/cs;->a()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 177
    :goto_a
    return-object v0

    .line 174
    :catch_b
    move-exception v1

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_a
.end method
