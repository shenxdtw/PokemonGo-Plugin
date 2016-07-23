.class final Lcrittercism/android/bg$1;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/bg;->a(Lcrittercism/android/az;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Ljava/util/List;Lcrittercism/android/az;)V
    .registers 3

    .prologue
    .line 304
    iput-object p1, p0, Lcrittercism/android/bg$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcrittercism/android/bg$1;->b:Lcrittercism/android/az;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, Lcrittercism/android/bg$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 308
    monitor-enter v0

    .line 309
    :try_start_13
    invoke-static {v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg;)Lcrittercism/android/bg$a;

    move-result-object v2

    sget-object v3, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v2, v3, :cond_22

    .line 310
    iget-object v2, p0, Lcrittercism/android/bg$1;->b:Lcrittercism/android/az;

    iget-object v2, v2, Lcrittercism/android/az;->n:Lcrittercism/android/bs;

    invoke-virtual {v2, v0}, Lcrittercism/android/bs;->b(Lcrittercism/android/ch;)Z

    .line 312
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_24

    goto :goto_6

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1

    .line 313
    :cond_27
    return-void
.end method
