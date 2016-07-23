.class public final Lcrittercism/android/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/i$a;,
        Lcrittercism/android/i$b;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/v$a;

.field public static b:Lcrittercism/android/i$b;

.field private static final c:Ljava/util/List;


# instance fields
.field private d:Lcrittercism/android/ad;

.field private e:Lcrittercism/android/ab;

.field private f:Lcrittercism/android/ab;

.field private g:Lcrittercism/android/v;

.field private h:Lcrittercism/android/e;

.field private i:Lcrittercism/android/d;

.field private j:Lcrittercism/android/i$b;

.field private k:Lcrittercism/android/v$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcrittercism/android/v$a;->b:Lcrittercism/android/v$a;

    sput-object v0, Lcrittercism/android/i;->a:Lcrittercism/android/v$a;

    .line 31
    sget-object v0, Lcrittercism/android/i$b;->c:Lcrittercism/android/i$b;

    sput-object v0, Lcrittercism/android/i;->b:Lcrittercism/android/i$b;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcrittercism/android/i;->c:Ljava/util/List;

    .line 37
    :try_start_f
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://www.google.com"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    const-class v1, Ljava/net/URL;

    const-class v2, Ljava/net/URLStreamHandler;

    invoke-static {v1, v2}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 39
    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "okhttp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3f

    .line 49
    sget-object v0, Lcrittercism/android/i$b;->a:Lcrittercism/android/i$b;

    sput-object v0, Lcrittercism/android/i;->b:Lcrittercism/android/i$b;

    .line 56
    :goto_3e
    return-void

    .line 51
    :cond_3f
    sget-object v0, Lcrittercism/android/i$b;->b:Lcrittercism/android/i$b;

    sput-object v0, Lcrittercism/android/i;->b:Lcrittercism/android/i$b;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_43} :catch_44

    goto :goto_3e

    .line 54
    :catch_44
    move-exception v0

    sget-object v0, Lcrittercism/android/i$b;->c:Lcrittercism/android/i$b;

    sput-object v0, Lcrittercism/android/i;->b:Lcrittercism/android/i$b;

    goto :goto_3e
.end method

.method public constructor <init>(Lcrittercism/android/e;Lcrittercism/android/d;)V
    .registers 4

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcrittercism/android/i;->b:Lcrittercism/android/i$b;

    iput-object v0, p0, Lcrittercism/android/i;->j:Lcrittercism/android/i$b;

    .line 68
    sget-object v0, Lcrittercism/android/i;->a:Lcrittercism/android/v$a;

    iput-object v0, p0, Lcrittercism/android/i;->k:Lcrittercism/android/v$a;

    .line 81
    iput-object p1, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    .line 82
    iput-object p2, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    .line 83
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 490
    sget-object v1, Lcrittercism/android/i;->c:Ljava/util/List;

    monitor-enter v1

    .line 491
    :try_start_3
    sget-object v0, Lcrittercism/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 494
    invoke-static {p0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 495
    return-void

    .line 492
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4

    .prologue
    .line 348
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 349
    const-class v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const-class v2, Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 350
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method private static a(Ljava/net/SocketImplFactory;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    :try_start_2
    const-class v2, Ljava/net/Socket;

    const-class v3, Ljava/net/SocketImplFactory;

    invoke-static {v2, v3}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    :try_end_9
    .catch Lcrittercism/android/cl; {:try_start_2 .. :try_end_9} :catch_13

    move-result-object v2

    .line 426
    const/4 v3, 0x1

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 427
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_12} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_12} :catch_2a

    .line 438
    :goto_12
    return v0

    .line 420
    :catch_13
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 422
    goto :goto_12

    .line 428
    :catch_1b
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 430
    :catch_22
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 432
    goto :goto_12

    .line 433
    :catch_2a
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 435
    goto :goto_12
.end method

.method public static d()V
    .registers 3

    .prologue
    .line 498
    sget-object v1, Lcrittercism/android/i;->c:Ljava/util/List;

    monitor-enter v1

    .line 499
    :try_start_3
    sget-object v0, Lcrittercism/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 500
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 504
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 503
    :cond_1c
    :try_start_1c
    sget-object v0, Lcrittercism/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    return-void
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcrittercism/android/i$a;

    invoke-direct {v0, p0}, Lcrittercism/android/i$a;-><init>(Lcrittercism/android/i;)V

    .line 162
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 165
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_15

    .line 168
    :goto_10
    invoke-virtual {v0}, Lcrittercism/android/i$a;->a()Z

    move-result v0

    .line 172
    return v0

    :catch_15
    move-exception v1

    goto :goto_10
.end method

.method private f()Z
    .registers 6

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 213
    :try_start_1
    new-instance v1, Lcrittercism/android/v;

    iget-object v2, p0, Lcrittercism/android/i;->k:Lcrittercism/android/v$a;

    iget-object v3, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-direct {v1, v2, v3, v4}, Lcrittercism/android/v;-><init>(Lcrittercism/android/v$a;Lcrittercism/android/e;Lcrittercism/android/d;)V

    iput-object v1, p0, Lcrittercism/android/i;->g:Lcrittercism/android/v;

    .line 218
    iget-object v1, p0, Lcrittercism/android/i;->g:Lcrittercism/android/v;

    invoke-virtual {v1}, Lcrittercism/android/v;->b()Z
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    .line 223
    :goto_14
    return v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private static g()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 342
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 343
    const-class v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const-class v2, Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private h()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    .line 363
    :try_start_3
    const-class v0, Ljava/net/Socket;

    const-class v4, Ljava/net/SocketImplFactory;

    invoke-static {v0, v4}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 364
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcrittercism/android/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImplFactory;
    :try_end_12
    .catch Lcrittercism/android/cl; {:try_start_3 .. :try_end_12} :catch_39

    .line 370
    if-nez v0, :cond_58

    .line 372
    :try_start_14
    const-class v1, Ljava/net/Socket;

    const-class v4, Ljava/net/SocketImpl;

    invoke-static {v1, v4}, Lcrittercism/android/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    invoke-static {v1, v4}, Lcrittercism/android/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketImpl;

    if-nez v1, :cond_41

    new-instance v0, Lcrittercism/android/cl;

    const-string v1, "SocketImpl was null"

    invoke-direct {v0, v1}, Lcrittercism/android/cl;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Lcrittercism/android/cl; {:try_start_14 .. :try_end_31} :catch_31

    .line 373
    :catch_31
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 412
    :goto_38
    return v0

    .line 365
    :catch_39
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 367
    goto :goto_38

    .line 372
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_44
    .catch Lcrittercism/android/cl; {:try_start_41 .. :try_end_44} :catch_31

    move-result-object v1

    .line 383
    :cond_45
    if-eqz v0, :cond_5e

    .line 384
    :try_start_47
    new-instance v1, Lcrittercism/android/ad;

    iget-object v4, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v5, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-direct {v1, v0, v4, v5}, Lcrittercism/android/ad;-><init>(Ljava/net/SocketImplFactory;Lcrittercism/android/e;Lcrittercism/android/d;)V

    .line 389
    invoke-static {v1}, Lcrittercism/android/i;->a(Ljava/net/SocketImplFactory;)Z
    :try_end_53
    .catch Lcrittercism/android/cl; {:try_start_47 .. :try_end_53} :catch_6d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_53} :catch_83

    move-object v0, v1

    .line 411
    :goto_54
    iput-object v0, p0, Lcrittercism/android/i;->d:Lcrittercism/android/ad;

    move v0, v3

    .line 412
    goto :goto_38

    .line 377
    :cond_58
    instance-of v4, v0, Lcrittercism/android/ad;

    if-eqz v4, :cond_45

    move v0, v3

    .line 379
    goto :goto_38

    .line 390
    :cond_5e
    if-eqz v1, :cond_75

    .line 391
    :try_start_60
    new-instance v0, Lcrittercism/android/ad;

    iget-object v4, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v5, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-direct {v0, v1, v4, v5}, Lcrittercism/android/ad;-><init>(Ljava/lang/Class;Lcrittercism/android/e;Lcrittercism/android/d;)V

    .line 396
    invoke-static {v0}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    :try_end_6c
    .catch Lcrittercism/android/cl; {:try_start_60 .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6c} :catch_83

    goto :goto_54

    .line 409
    :catch_6d
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 403
    goto :goto_38

    .line 398
    :cond_75
    :try_start_75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null SocketImpl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catch Lcrittercism/android/cl; {:try_start_75 .. :try_end_81} :catch_6d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_81} :catch_83

    move v0, v2

    .line 399
    goto :goto_38

    .line 404
    :catch_83
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 408
    goto :goto_38
.end method


# virtual methods
.method public final a()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {}, Lcrittercism/android/ac;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 96
    invoke-static {}, Lcrittercism/android/ac;->d()Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    const-string v2, "Unable to install OPTMZ"

    invoke-static {v2, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    :cond_10
    :goto_10
    return v1

    .line 102
    :cond_11
    :try_start_11
    invoke-static {}, Lcrittercism/android/ac;->e()V
    :try_end_14
    .catch Lcrittercism/android/ck; {:try_start_11 .. :try_end_14} :catch_4a

    .line 108
    invoke-direct {p0}, Lcrittercism/android/i;->h()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_53

    .line 110
    invoke-direct {p0}, Lcrittercism/android/i;->e()Z

    move-result v1

    or-int/2addr v0, v1

    .line 128
    :goto_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_76

    .line 136
    iget-object v1, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v2, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-static {v1, v2}, Lcrittercism/android/y;->a(Lcrittercism/android/e;Lcrittercism/android/d;)Z

    move-result v1

    or-int/2addr v0, v1

    move v1, v0

    .line 139
    :goto_35
    iget-object v0, p0, Lcrittercism/android/i;->j:Lcrittercism/android/i$b;

    sget-object v2, Lcrittercism/android/i$b;->a:Lcrittercism/android/i$b;

    if-ne v0, v2, :cond_6a

    .line 140
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    instance-of v2, v0, Lcrittercism/android/ab;

    if-eqz v2, :cond_59

    check-cast v0, Lcrittercism/android/ab;

    iput-object v0, p0, Lcrittercism/android/i;->e:Lcrittercism/android/ab;

    :goto_47
    or-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 103
    :catch_4a
    move-exception v0

    .line 104
    invoke-virtual {v0}, Lcrittercism/android/ck;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 112
    :cond_53
    invoke-virtual {p0}, Lcrittercism/android/i;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_25

    .line 140
    :cond_59
    new-instance v2, Lcrittercism/android/ab;

    iget-object v3, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-direct {v2, v0, v3, v4}, Lcrittercism/android/ab;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/e;Lcrittercism/android/d;)V

    iput-object v2, p0, Lcrittercism/android/i;->e:Lcrittercism/android/ab;

    iget-object v0, p0, Lcrittercism/android/i;->e:Lcrittercism/android/ab;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_47

    .line 141
    :cond_6a
    iget-object v0, p0, Lcrittercism/android/i;->j:Lcrittercism/android/i$b;

    sget-object v2, Lcrittercism/android/i$b;->b:Lcrittercism/android/i$b;

    if-ne v0, v2, :cond_10

    .line 142
    invoke-direct {p0}, Lcrittercism/android/i;->f()Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_10

    :cond_76
    move v1, v0

    goto :goto_35
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 260
    :try_start_0
    invoke-static {}, Lcrittercism/android/i;->g()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 262
    instance-of v1, v0, Lcrittercism/android/ab;

    if-eqz v1, :cond_11

    .line 263
    check-cast v0, Lcrittercism/android/ab;

    .line 264
    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcrittercism/android/i;->a(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_1c
    .catch Lcrittercism/android/cl; {:try_start_0 .. :try_end_11} :catch_23

    .line 278
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/i;->f:Lcrittercism/android/ab;

    .line 279
    :goto_14
    return-void

    .line 267
    :catch_15
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 270
    :catch_1c
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 273
    :catch_23
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v1, v0}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public final c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 289
    :try_start_1
    invoke-static {}, Lcrittercism/android/i;->g()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_22
    .catch Lcrittercism/android/cl; {:try_start_1 .. :try_end_4} :catch_29

    move-result-object v1

    .line 308
    if-nez v1, :cond_30

    .line 316
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Delegate factory was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    :cond_13
    :goto_13
    return v0

    .line 294
    :catch_14
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 297
    :catch_1b
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 300
    :catch_22
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 303
    :catch_29
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 318
    :cond_30
    instance-of v2, v1, Lcrittercism/android/ab;

    if-nez v2, :cond_13

    .line 322
    new-instance v2, Lcrittercism/android/ab;

    iget-object v3, p0, Lcrittercism/android/i;->h:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/i;->i:Lcrittercism/android/d;

    invoke-direct {v2, v1, v3, v4}, Lcrittercism/android/ab;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/e;Lcrittercism/android/d;)V

    .line 325
    :try_start_3d
    invoke-static {v2}, Lcrittercism/android/i;->a(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_40} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_40} :catch_4b
    .catch Lcrittercism/android/cl; {:try_start_3d .. :try_end_40} :catch_52

    .line 337
    iput-object v2, p0, Lcrittercism/android/i;->f:Lcrittercism/android/ab;

    .line 338
    const/4 v0, 0x1

    goto :goto_13

    .line 326
    :catch_44
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 329
    :catch_4b
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 332
    :catch_52
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v1}, Lcrittercism/android/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method
