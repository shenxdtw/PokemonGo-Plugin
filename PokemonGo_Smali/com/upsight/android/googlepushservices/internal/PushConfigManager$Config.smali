.class public final Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
.super Ljava/lang/Object;
.source "PushConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public autoRegister:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_register"
    .end annotation
.end field

.field public pushTokenTtl:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "push_token_ttl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->isValid()Z

    move-result v0

    return v0
.end method

.method private isValid()Z
    .registers 5

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p0, p1, :cond_5

    .line 124
    :cond_4
    :goto_4
    return v1

    .line 120
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 121
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 123
    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .line 124
    .local v0, "that":Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    iget-wide v4, v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    iget-wide v6, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->autoRegister:Z

    iget-boolean v4, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->autoRegister:Z

    if-eq v3, v4, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method
