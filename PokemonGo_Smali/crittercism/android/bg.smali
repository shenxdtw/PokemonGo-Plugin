.class public final Lcrittercism/android/bg;
.super Lcom/crittercism/app/Transaction;

# interfaces
.implements Lcrittercism/android/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/bg$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o:Ljava/util/List;

.field private static volatile p:J

.field private static volatile q:J

.field private static final r:[I

.field private static s:Lcrittercism/android/bg;

.field private static t:Lcrittercism/android/bh;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcrittercism/android/bg$a;

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    new-instance v0, Lcrittercism/android/dz;

    invoke-direct {v0}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    .line 64
    const/4 v0, 0x1

    new-instance v1, Lcrittercism/android/dz;

    invoke-direct {v1}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/bg;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    .line 96
    sput-wide v2, Lcrittercism/android/bg;->p:J

    .line 97
    sput-wide v2, Lcrittercism/android/bg;->q:J

    .line 110
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcrittercism/android/bg;->r:[I

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    .line 139
    new-instance v0, Lcrittercism/android/bh;

    invoke-direct {v0}, Lcrittercism/android/bh;-><init>()V

    sput-object v0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    return-void

    .line 110
    :array_38
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>(Lcrittercism/android/az;Ljava/lang/String;)V
    .registers 9

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0xff

    const/4 v0, -0x1

    .line 153
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    iput-wide v4, p0, Lcrittercism/android/bg;->e:J

    .line 72
    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4b

    .line 155
    const-string v1, "Transaction name exceeds 255 characters! Truncating to first 255 characters."

    invoke-static {v1}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 162
    :goto_21
    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    iput-object v1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    .line 165
    sget-object v1, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v1}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 171
    iput-wide v4, p0, Lcrittercism/android/bg;->e:J

    .line 175
    sget-object v1, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v1, v1, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_48

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_48
    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 180
    return-void

    .line 160
    :cond_4b
    iput-object p2, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    goto :goto_21
.end method

.method private constructor <init>(Lcrittercism/android/bg;)V
    .registers 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 183
    iget-object v0, p1, Lcrittercism/android/bg;->d:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 184
    iget-wide v0, p1, Lcrittercism/android/bg;->e:J

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 185
    iget v0, p1, Lcrittercism/android/bg;->f:I

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 186
    iget-wide v0, p1, Lcrittercism/android/bg;->g:J

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 187
    iget-wide v0, p1, Lcrittercism/android/bg;->h:J

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 188
    iget-object v0, p1, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 189
    iget-object v0, p1, Lcrittercism/android/bg;->k:Ljava/util/Map;

    iput-object v0, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 190
    iget-object v0, p1, Lcrittercism/android/bg;->l:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 191
    iget-wide v0, p1, Lcrittercism/android/bg;->i:J

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 192
    iget-wide v0, p1, Lcrittercism/android/bg;->m:J

    iput-wide v0, p0, Lcrittercism/android/bg;->m:J

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 200
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 72
    iput v4, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcrittercism/android/bg$a;->values()[Lcrittercism/android/bg$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 203
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 204
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 206
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 212
    :cond_5d
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ed;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 213
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ed;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 215
    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 217
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 218
    return-void
.end method

.method static synthetic a(Lcrittercism/android/bg;)Lcrittercism/android/bg$a;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    return-object v0
.end method

.method public static a(Lcrittercism/android/az;Z)Ljava/util/List;
    .registers 14

    .prologue
    .line 342
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 343
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_8
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_4f

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 348
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 350
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_59

    .line 351
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 352
    monitor-enter v0

    .line 353
    :try_start_26
    iget-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v8, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v3, v8, :cond_52

    .line 354
    iput-wide v4, v0, Lcrittercism/android/bg;->h:J

    .line 356
    sget-object v3, Lcrittercism/android/bg$a;->g:Lcrittercism/android/bg$a;

    iput-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 359
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 360
    sget-wide v8, Lcrittercism/android/bg;->p:J

    iget-wide v10, v0, Lcrittercism/android/bg;->m:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 362
    iget-wide v10, v0, Lcrittercism/android/bg;->i:J

    sub-long v8, v6, v8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcrittercism/android/bg;->i:J

    .line 367
    :cond_47
    :goto_47
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 368
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_56

    .line 350
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d

    .line 345
    :catchall_4f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 365
    :cond_52
    :try_start_52
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_47

    .line 368
    :catchall_56
    move-exception v1

    monitor-exit v0

    throw v1

    .line 378
    :cond_59
    new-instance v0, Lcrittercism/android/bg$2;

    invoke-direct {v0, p0}, Lcrittercism/android/bg$2;-><init>(Lcrittercism/android/az;)V

    .line 389
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 390
    sget-object v3, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3

    .line 391
    :try_start_67
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 392
    if-nez p1, :cond_78

    .line 393
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 397
    :goto_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_7e

    .line 401
    :try_start_74
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_81
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_74 .. :try_end_77} :catch_86

    .line 408
    :goto_77
    return-object v2

    .line 395
    :cond_78
    :try_start_78
    iget-object v0, p0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_7e

    goto :goto_73

    .line 397
    :catchall_7e
    move-exception v0

    monitor-exit v3

    throw v0

    .line 402
    :catch_81
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_77

    .line 404
    :catch_86
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_77
.end method

.method private a(J)V
    .registers 6

    .prologue
    .line 702
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 703
    sget-object v0, Lcrittercism/android/bg;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcrittercism/android/bg$5;

    invoke-direct {v1, p0}, Lcrittercism/android/bg$5;-><init>(Lcrittercism/android/bg;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 713
    :cond_15
    return-void
.end method

.method public static a(Lcrittercism/android/aw;)V
    .registers 7

    .prologue
    .line 424
    :try_start_0
    invoke-interface {p0}, Lcrittercism/android/aw;->w()Lcrittercism/android/bs;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcrittercism/android/bs;->c()Ljava/util/List;

    move-result-object v0

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bq;

    .line 428
    check-cast v0, Lcrittercism/android/bz;

    .line 429
    invoke-virtual {v0}, Lcrittercism/android/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_24
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_24} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_45

    .line 430
    if-eqz v0, :cond_10

    .line 433
    :try_start_26
    new-instance v5, Lcrittercism/android/bg;

    invoke-direct {v5, v0}, Lcrittercism/android/bg;-><init>(Lorg/json/JSONArray;)V

    .line 434
    iput-wide v2, v5, Lcrittercism/android/bg;->h:J

    .line 435
    sget-object v0, Lcrittercism/android/bg$a;->h:Lcrittercism/android/bg$a;

    iput-object v0, v5, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 436
    invoke-interface {p0}, Lcrittercism/android/aw;->x()Lcrittercism/android/bs;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_38} :catch_39
    .catch Ljava/text/ParseException; {:try_start_26 .. :try_end_38} :catch_40
    .catch Ljava/lang/ThreadDeath; {:try_start_26 .. :try_end_38} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_38} :catch_45

    goto :goto_10

    .line 437
    :catch_39
    move-exception v0

    :try_start_3a
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/ThreadDeath; {:try_start_3a .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_45

    goto :goto_10

    .line 448
    :catch_3e
    move-exception v0

    throw v0

    .line 440
    :catch_40
    move-exception v0

    :try_start_41
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catch Ljava/lang/ThreadDeath; {:try_start_41 .. :try_end_44} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_10

    .line 450
    :catch_45
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 453
    :goto_49
    return-void

    .line 447
    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Lcrittercism/android/bs;->a()V
    :try_end_4d
    .catch Ljava/lang/ThreadDeath; {:try_start_4a .. :try_end_4d} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_45

    goto :goto_49
.end method

.method public static a(Lcrittercism/android/az;)V
    .registers 11

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/bg;->q:J

    .line 274
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 275
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v2

    .line 276
    :try_start_e
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4d

    .line 279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 280
    monitor-enter v0

    .line 281
    :try_start_25
    iget-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v4, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v3, v4, :cond_45

    .line 282
    iget-wide v4, v0, Lcrittercism/android/bg;->m:J

    sget-wide v6, Lcrittercism/android/bg;->p:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_50

    .line 291
    iget-wide v4, v0, Lcrittercism/android/bg;->m:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_45

    .line 292
    iget-wide v4, v0, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    iget-wide v8, v0, Lcrittercism/android/bg;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/bg;->i:J

    .line 300
    :cond_45
    :goto_45
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 301
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_4a

    goto :goto_18

    :catchall_4a
    move-exception v1

    monitor-exit v0

    throw v1

    .line 277
    :catchall_4d
    move-exception v0

    monitor-exit v2

    throw v0

    .line 297
    :cond_50
    :try_start_50
    iget-wide v4, v0, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    sget-wide v8, Lcrittercism/android/bg;->p:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/bg;->i:J
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_4a

    goto :goto_45

    .line 302
    :cond_5b
    new-instance v0, Lcrittercism/android/bg$1;

    invoke-direct {v0, v1, p0}, Lcrittercism/android/bg$1;-><init>(Ljava/util/List;Lcrittercism/android/az;)V

    .line 319
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 320
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 321
    :try_start_69
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 322
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_73

    .line 330
    :try_start_6f
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_76
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6f .. :try_end_72} :catch_7b

    .line 336
    :goto_72
    return-void

    .line 322
    :catchall_73
    move-exception v0

    monitor-exit v2

    throw v0

    .line 331
    :catch_76
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_72

    .line 333
    :catch_7b
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_72
.end method

.method private a(Lcrittercism/android/bg$a;)V
    .registers 5

    .prologue
    .line 662
    sget-object v0, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    .line 665
    :cond_a
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_17

    .line 666
    invoke-direct {p0}, Lcrittercism/android/bg;->r()V

    .line 667
    invoke-direct {p0, p1}, Lcrittercism/android/bg;->b(Lcrittercism/android/bg$a;)V

    .line 672
    :cond_16
    :goto_16
    return-void

    .line 668
    :cond_17
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    if-eq v0, v1, :cond_16

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not running. Either it has not been started or it has been stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction is not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static a(Lcrittercism/android/bh;)V
    .registers 1

    .prologue
    .line 142
    sput-object p0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    .line 144
    return-void
.end method

.method private declared-synchronized b(I)V
    .registers 5

    .prologue
    .line 793
    monitor-enter p0

    if-gez p1, :cond_a

    .line 794
    :try_start_3
    const-string v0, "Ignoring Transaction.setValue(int) call. Negative parameter provided."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    .line 821
    :goto_8
    monitor-exit p0

    return-void

    .line 798
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_16

    .line 799
    iput p1, p0, Lcrittercism/android/bg;->f:I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_8

    .line 793
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 800
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_35

    .line 801
    iput p1, p0, Lcrittercism/android/bg;->f:I

    .line 802
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 805
    new-instance v1, Lcrittercism/android/bg$7;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$7;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 813
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_13

    .line 814
    :try_start_2b
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 815
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    goto :goto_8

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2

    throw v0

    .line 816
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer in progress. Ignoring setValue(int) call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction no longer in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_13

    goto :goto_8
.end method

.method public static b(Lcrittercism/android/az;)V
    .registers 9

    .prologue
    .line 457
    :try_start_0
    new-instance v1, Lcrittercism/android/bg;

    const-string v0, "App Load"

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/az;Ljava/lang/String;)V

    sput-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_a} :catch_88
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_8d

    :try_start_a
    invoke-static {}, Lcrittercism/android/bg;->m()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_80

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v4, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    iput-object v4, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v2

    sub-long v4, v6, v4

    iput-wide v4, v0, Lcrittercism/android/bg;->g:J

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    iput-wide v2, v0, Lcrittercism/android/bg;->m:J

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-object v3, v3, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/bg;->e:J

    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_85

    :try_start_5a
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_82

    :try_start_62
    new-instance v0, Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-direct {v0, v2}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    new-instance v2, Lcrittercism/android/bg$3;

    invoke-direct {v2, p0, v0}, Lcrittercism/android/bg$3;-><init>(Lcrittercism/android/az;Lcrittercism/android/bg;)V

    sget-object v3, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_85

    :try_start_71
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v4, v2, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v4, v5}, Lcrittercism/android/bg;->a(J)V

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_8a

    :cond_80
    :try_start_80
    monitor-exit v1

    .line 463
    :goto_81
    return-void

    .line 457
    :catchall_82
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1

    throw v0
    :try_end_88
    .catch Ljava/lang/ThreadDeath; {:try_start_86 .. :try_end_88} :catch_88
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_88} :catch_8d

    .line 462
    :catch_88
    move-exception v0

    throw v0

    .line 457
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v3

    throw v0
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_85

    .line 460
    :catch_8d
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_81
.end method

.method private b(Lcrittercism/android/bg$a;)V
    .registers 8

    .prologue
    .line 732
    iput-object p1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 734
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 737
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 738
    sget-wide v2, Lcrittercism/android/bg;->p:J

    iget-wide v4, p0, Lcrittercism/android/bg;->m:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 739
    iget-wide v4, p0, Lcrittercism/android/bg;->i:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 742
    :cond_20
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 743
    :try_start_23
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 744
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_3d

    .line 745
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 746
    new-instance v1, Lcrittercism/android/bg$6;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$6;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 776
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 777
    :try_start_36
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 778
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_40

    return-void

    .line 744
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 778
    :catchall_40
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic b(Lcrittercism/android/bg;)V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcrittercism/android/bg;->s()V

    return-void
.end method

.method static synthetic c(Lcrittercism/android/bg;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .registers 10

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/bg;->p:J

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 223
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 224
    :try_start_e
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_6a

    .line 237
    sget-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    if-eqz v1, :cond_32

    .line 238
    sget-wide v2, Lcrittercism/android/bg;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_32

    .line 239
    sget-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    monitor-enter v1

    .line 240
    :try_start_23
    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v4, v2, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->p:J

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v8, v3, Lcrittercism/android/bg;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcrittercism/android/bg;->i:J

    .line 241
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_6d

    .line 246
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 247
    monitor-enter v0

    .line 248
    :try_start_43
    iget-object v2, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v3, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v2, v3, :cond_65

    .line 249
    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_70

    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 252
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcrittercism/android/bg;->i:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V

    .line 262
    :cond_65
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_67

    goto :goto_36

    :catchall_67
    move-exception v1

    monitor-exit v0

    throw v1

    .line 225
    :catchall_6a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 241
    :catchall_6d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 256
    :cond_70
    :try_start_70
    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_65

    .line 259
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_67

    goto :goto_65

    .line 263
    :cond_7a
    return-void
.end method

.method public static g()V
    .registers 1

    .prologue
    .line 554
    :try_start_0
    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    if-eqz v0, :cond_9

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-virtual {v0}, Lcrittercism/android/bg;->b()V
    :try_end_9
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_c

    .line 560
    :cond_9
    :goto_9
    return-void

    .line 555
    :catch_a
    move-exception v0

    throw v0

    .line 557
    :catch_c
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static i()V
    .registers 4

    .prologue
    .line 678
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 679
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 680
    :try_start_8
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 681
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_3c

    .line 683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 684
    monitor-enter v0

    .line 685
    :try_start_1f
    iget-object v2, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v3, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v2, v3, :cond_37

    .line 686
    sget-object v2, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v3, v0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/bg;->e:J

    .line 687
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 691
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V

    .line 693
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_12

    :catchall_39
    move-exception v1

    monitor-exit v0

    throw v1

    .line 681
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 694
    :cond_3f
    return-void
.end method

.method private static l()Z
    .registers 4

    .prologue
    .line 267
    sget-wide v0, Lcrittercism/android/bg;->p:J

    sget-wide v2, Lcrittercism/android/bg;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static m()J
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    .line 519
    new-array v1, v0, [J

    .line 521
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/stat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :try_start_1f
    const-class v4, Landroid/os/Process;

    .line 527
    const-string v5, "readProcFile"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [J

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [F

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 529
    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    sget-object v7, Lcrittercism/android/bg;->r:[I

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 531
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_63} :catch_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_63} :catch_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_63} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_63} :catch_7a

    move-result v0

    if-nez v0, :cond_80

    move-wide v0, v2

    .line 549
    :goto_67
    return-wide v0

    .line 534
    :catch_68
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 536
    goto :goto_67

    .line 537
    :catch_6e
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 539
    goto :goto_67

    .line 540
    :catch_74
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 542
    goto :goto_67

    .line 543
    :catch_7a
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 545
    goto :goto_67

    .line 549
    :cond_80
    aget-wide v0, v1, v9

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_67
.end method

.method private declared-synchronized n()V
    .registers 4

    .prologue
    .line 581
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_4d

    .line 582
    sget-object v0, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 584
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->m:J

    .line 585
    sget-object v0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 586
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_47

    .line 587
    :try_start_24
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_44

    .line 590
    :try_start_2a
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 591
    new-instance v1, Lcrittercism/android/bg$4;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$4;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 599
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_47

    .line 600
    :try_start_37
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 608
    iget-wide v0, p0, Lcrittercism/android/bg;->e:J

    invoke-direct {p0, v0, v1}, Lcrittercism/android/bg;->a(J)V

    .line 609
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_4a

    .line 615
    :goto_42
    monitor-exit p0

    return-void

    .line 588
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1

    throw v0
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_47

    .line 581
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    .line 609
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2

    throw v0

    .line 610
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction has already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_47

    goto :goto_42
.end method

.method private declared-synchronized o()V
    .registers 2

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 630
    monitor-exit p0

    return-void

    .line 629
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .registers 2

    .prologue
    .line 644
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 645
    monitor-exit p0

    return-void

    .line 644
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .registers 2

    .prologue
    .line 658
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 659
    monitor-exit p0

    return-void

    .line 658
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()V
    .registers 3

    .prologue
    .line 719
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    .line 721
    iget-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 723
    :cond_b
    monitor-exit p0

    return-void

    .line 719
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized s()V
    .registers 3

    .prologue
    .line 726
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_c

    .line 727
    sget-object v0, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->b(Lcrittercism/android/bg$a;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 729
    :cond_c
    monitor-exit p0

    return-void

    .line 726
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()I
    .registers 2

    .prologue
    .line 836
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcrittercism/android/bg;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 572
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->n()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 578
    :goto_3
    return-void

    .line 573
    :catch_4
    move-exception v0

    throw v0

    .line 575
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 784
    :try_start_0
    invoke-direct {p0, p1}, Lcrittercism/android/bg;->b(I)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 790
    :goto_3
    return-void

    .line 785
    :catch_4
    move-exception v0

    throw v0

    .line 787
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 900
    const/4 v0, 0x0

    .line 902
    :try_start_1
    invoke-virtual {p0}, Lcrittercism/android/bg;->j()Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4} :catch_13

    move-result-object v0

    .line 906
    :goto_5
    if-eqz v0, :cond_12

    .line 907
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 910
    :cond_12
    return-void

    :catch_13
    move-exception v1

    goto :goto_5
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 620
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->o()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 626
    :goto_3
    return-void

    .line 621
    :catch_4
    move-exception v0

    throw v0

    .line 623
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 635
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->p()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 641
    :goto_3
    return-void

    .line 636
    :catch_4
    move-exception v0

    throw v0

    .line 638
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 826
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->t()I
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    move-result v0

    .line 831
    :goto_4
    return v0

    .line 827
    :catch_5
    move-exception v0

    throw v0

    .line 829
    :catch_7
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 831
    const/4 v0, -0x1

    goto :goto_4
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 649
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->q()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 655
    :goto_3
    return-void

    .line 650
    :catch_4
    move-exception v0

    throw v0

    .line 652
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final j()Lorg/json/JSONArray;
    .registers 11

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 877
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    invoke-virtual {v1}, Lcrittercism/android/bg$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/bg;->e:J

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    iget v0, p0, Lcrittercism/android/bg;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_77

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_29
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/bg;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/bg;->h:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 885
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_7e

    .line 886
    iget-wide v2, p0, Lcrittercism/android/bg;->i:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 890
    :goto_76
    return-object v0

    .line 877
    :cond_77
    iget v0, p0, Lcrittercism/android/bg;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_29

    .line 888
    :cond_7e
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_76
.end method

.method public final k()Lcrittercism/android/bg$a;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    return-object v0
.end method
