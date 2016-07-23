.class public final Lcrittercism/android/ds$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcrittercism/android/ax;)Lcrittercism/android/ds;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    sget-object v0, Lcrittercism/android/cq;->i:Lcrittercism/android/cq;

    invoke-virtual {v0}, Lcrittercism/android/cq;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcrittercism/android/cq;->i:Lcrittercism/android/cq;

    invoke-virtual {v3}, Lcrittercism/android/cq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcrittercism/android/ax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    if-eqz v3, :cond_48

    .line 29
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_30

    :goto_19
    move-object v1, v0

    .line 36
    :goto_1a
    if-eqz v1, :cond_46

    .line 37
    const-string v0, "optOutStatusSet"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    :goto_22
    if-eqz v0, :cond_35

    .line 41
    const-string v0, "optOutStatus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    :goto_2a
    new-instance v1, Lcrittercism/android/ds;

    invoke-direct {v1, v0}, Lcrittercism/android/ds;-><init>(Z)V

    return-object v1

    .line 32
    :catch_30
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->b()V

    goto :goto_1a

    .line 43
    :cond_35
    sget-object v0, Lcrittercism/android/cq;->l:Lcrittercism/android/cq;

    invoke-virtual {v0}, Lcrittercism/android/cq;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cq;->l:Lcrittercism/android/cq;

    invoke-virtual {v1}, Lcrittercism/android/cq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcrittercism/android/ax;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2a

    :cond_46
    move v0, v2

    goto :goto_22

    :cond_48
    move-object v0, v1

    goto :goto_19
.end method
