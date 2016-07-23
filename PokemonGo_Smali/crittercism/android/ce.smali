.class public final Lcrittercism/android/ce;
.super Lcrittercism/android/ci;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ce$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcrittercism/android/ce$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcrittercism/android/ce$a;)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Lcrittercism/android/ci;-><init>()V

    .line 46
    sget-object v0, Lcrittercism/android/ce$a;->a:Lcrittercism/android/ce$a;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcrittercism/android/ce$a;->b:Lcrittercism/android/ce$a;

    .line 49
    :cond_9
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->a:Ljava/lang/String;

    .line 50
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->b:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcrittercism/android/ce$a;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcrittercism/android/ci;-><init>()V

    .line 55
    sget-object v0, Lcrittercism/android/ce$a;->c:Lcrittercism/android/ce$a;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcrittercism/android/ce$a;->d:Lcrittercism/android/ce$a;

    .line 57
    :cond_9
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->a:Ljava/lang/String;

    .line 60
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->b:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    .line 62
    iput-object p2, p0, Lcrittercism/android/ce;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcrittercism/android/ce$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Lcrittercism/android/ci;-><init>()V

    .line 67
    sget-object v0, Lcrittercism/android/ce$a;->e:Lcrittercism/android/ce$a;

    .line 68
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->a:Ljava/lang/String;

    .line 72
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ce;->b:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    .line 74
    iput-object p2, p0, Lcrittercism/android/ce;->e:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcrittercism/android/ce;->f:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "change"

    iget-object v2, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    invoke-virtual {v2}, Lcrittercism/android/ce$a;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    sget-object v2, Lcrittercism/android/ce$a;->c:Lcrittercism/android/ce$a;

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    sget-object v2, Lcrittercism/android/ce$a;->d:Lcrittercism/android/ce$a;

    if-ne v1, v2, :cond_41

    .line 89
    :cond_20
    const-string v1, "type"

    iget-object v2, p0, Lcrittercism/android/ce;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_27
    :goto_27
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcrittercism/android/ce;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 90
    :cond_41
    iget-object v1, p0, Lcrittercism/android/ce;->c:Lcrittercism/android/ce$a;

    sget-object v2, Lcrittercism/android/ce$a;->e:Lcrittercism/android/ce$a;

    if-ne v1, v2, :cond_27

    .line 91
    const-string v1, "oldType"

    iget-object v2, p0, Lcrittercism/android/ce;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "newType"

    iget-object v2, p0, Lcrittercism/android/ce;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/lang/String;

    return-object v0
.end method
