.class final Lcrittercism/android/ec$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcrittercism/android/ec;


# direct methods
.method constructor <init>(Lcrittercism/android/ec;Ljava/lang/Throwable;J)V
    .registers 6

    .prologue
    .line 43
    iput-object p1, p0, Lcrittercism/android/ec$1;->c:Lcrittercism/android/ec;

    iput-object p2, p0, Lcrittercism/android/ec$1;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/ec$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ec$1;->c:Lcrittercism/android/ec;

    iget-object v0, v0, Lcrittercism/android/ec;->d:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    :goto_a
    return-void

    .line 48
    :cond_b
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ec$1;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcrittercism/android/ec$1;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/bk;-><init>(Ljava/lang/Throwable;J)V

    .line 49
    const-string v1, "he"

    iput-object v1, v0, Lcrittercism/android/bk;->f:Ljava/lang/String;

    .line 50
    const-string v1, "5.0.8"
    :try_end_1a
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_1a} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_36

    :try_start_1a
    iget-object v2, v0, Lcrittercism/android/bk;->g:Lorg/json/JSONObject;

    const-string v3, "app_version"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_21} :catch_3c
    .catch Ljava/lang/ThreadDeath; {:try_start_1a .. :try_end_21} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_21} :catch_36

    .line 51
    :goto_21
    :try_start_21
    iget-object v1, v0, Lcrittercism/android/bk;->g:Lorg/json/JSONObject;

    const-string v2, "logcat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcrittercism/android/ec$1;->c:Lcrittercism/android/ec;

    iget-object v1, v1, Lcrittercism/android/ec;->a:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->p()Lcrittercism/android/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z
    :try_end_33
    .catch Ljava/lang/ThreadDeath; {:try_start_21 .. :try_end_33} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_33} :catch_36

    goto :goto_a

    .line 57
    :catch_34
    move-exception v0

    goto :goto_a

    .line 56
    :catch_36
    move-exception v0

    iget-object v0, p0, Lcrittercism/android/ec$1;->c:Lcrittercism/android/ec;

    iget-object v0, p0, Lcrittercism/android/ec$1;->a:Ljava/lang/Throwable;

    goto :goto_a

    :catch_3c
    move-exception v1

    goto :goto_21
.end method
