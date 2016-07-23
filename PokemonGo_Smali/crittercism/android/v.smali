.class public final Lcrittercism/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/v$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcrittercism/android/v;


# instance fields
.field private c:Ljava/util/LinkedList;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcrittercism/android/v;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/v$a;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/v;->c:Ljava/util/LinkedList;

    .line 60
    iput-boolean v1, p0, Lcrittercism/android/v;->d:Z

    .line 61
    iput-boolean v1, p0, Lcrittercism/android/v;->e:Z

    .line 89
    sget-object v0, Lcrittercism/android/v$a;->c:Lcrittercism/android/v$a;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcrittercism/android/v$a;->a:Lcrittercism/android/v$a;

    if-ne p1, v0, :cond_21

    .line 93
    :cond_17
    iget-object v0, p0, Lcrittercism/android/v;->c:Ljava/util/LinkedList;

    new-instance v1, Lcrittercism/android/o;

    invoke-direct {v1, p2, p3}, Lcrittercism/android/o;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_21
    sget-object v0, Lcrittercism/android/v$a;->c:Lcrittercism/android/v$a;

    if-eq p1, v0, :cond_29

    sget-object v0, Lcrittercism/android/v$a;->b:Lcrittercism/android/v$a;

    if-ne p1, v0, :cond_33

    .line 97
    :cond_29
    iget-object v0, p0, Lcrittercism/android/v;->c:Ljava/util/LinkedList;

    new-instance v1, Lcrittercism/android/q;

    invoke-direct {v1, p2, p3}, Lcrittercism/android/q;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_33
    return-void
.end method

.method public static a()Lcrittercism/android/v;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcrittercism/android/v;->b:Lcrittercism/android/v;

    return-object v0
.end method

.method private declared-synchronized d()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 148
    monitor-enter p0

    :try_start_2
    sget-object v1, Lcrittercism/android/v;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    .line 149
    :try_start_5
    sget-object v2, Lcrittercism/android/v;->b:Lcrittercism/android/v;

    if-eq v2, p0, :cond_e

    .line 150
    iget-boolean v2, p0, Lcrittercism/android/v;->d:Z

    .line 151
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 162
    :goto_c
    monitor-exit p0

    return v0

    .line 154
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcrittercism/android/v;->d:Z

    if-eqz v0, :cond_1e

    .line 155
    invoke-static {}, Lcrittercism/android/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/v;->d:Z

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcrittercism/android/v;->b:Lcrittercism/android/v;

    .line 160
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_22

    .line 162
    :try_start_1f
    iget-boolean v0, p0, Lcrittercism/android/v;->d:Z

    goto :goto_c

    .line 160
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_25

    .line 148
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static e()Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    const-class v2, Ljava/net/URL;

    .line 197
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 198
    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_3f

    aget-object v5, v3, v2

    .line 199
    const-class v6, Ljava/net/URLStreamHandlerFactory;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 201
    :try_start_1a
    sget-object v6, Lcrittercism/android/ea;->f:Lcrittercism/android/ea;

    .line 203
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2d} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_2d} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2d} :catch_3a

    .line 229
    :goto_2d
    return v0

    .line 215
    :catch_2e
    move-exception v5

    invoke-static {}, Lcrittercism/android/dx;->c()V

    .line 198
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 217
    :catch_35
    move-exception v5

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto :goto_32

    .line 224
    :catch_3a
    move-exception v5

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto :goto_32

    :cond_3f
    move v0, v1

    goto :goto_2d
.end method

.method private static f()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    const-class v0, Ljava/net/URL;

    .line 235
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 236
    array-length v6, v5

    move v4, v3

    :goto_a
    if-ge v4, v6, :cond_6c

    aget-object v7, v5, v4

    .line 237
    const-class v0, Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 238
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 239
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Class;

    .line 240
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    .line 241
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-class v1, Ljava/net/URLStreamHandler;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 243
    :try_start_40
    sget-object v0, Lcrittercism/android/ea;->g:Lcrittercism/android/ea;

    .line 245
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 247
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    check-cast v0, Ljava/util/Hashtable;

    .line 248
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 249
    :cond_54
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_58} :catch_5a
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_58} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_58} :catch_67

    move v0, v2

    .line 264
    :goto_59
    return v0

    .line 253
    :catch_5a
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->c()V

    .line 236
    :cond_5e
    :goto_5e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a

    .line 256
    :catch_62
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto :goto_5e

    .line 259
    :catch_67
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto :goto_5e

    :cond_6c
    move v0, v3

    goto :goto_59
.end method


# virtual methods
.method public final b()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 123
    sget-object v1, Lcrittercism/android/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_4
    sget-object v2, Lcrittercism/android/v;->b:Lcrittercism/android/v;

    if-eqz v2, :cond_10

    .line 126
    sget-object v2, Lcrittercism/android/v;->b:Lcrittercism/android/v;

    if-ne v2, p0, :cond_e

    :goto_c
    monitor-exit v1

    .line 138
    :goto_d
    return v0

    .line 126
    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 129
    :cond_10
    iget-boolean v0, p0, Lcrittercism/android/v;->d:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcrittercism/android/v;->e:Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-nez v0, :cond_20

    .line 131
    :try_start_18
    invoke-static {p0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/v;->d:Z

    .line 133
    sput-object p0, Lcrittercism/android/v;->b:Lcrittercism/android/v;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_20} :catch_27
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    .line 136
    :cond_20
    :goto_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_24

    .line 138
    iget-boolean v0, p0, Lcrittercism/android/v;->d:Z

    goto :goto_d

    .line 136
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_27
    move-exception v0

    goto :goto_20
.end method

.method public final declared-synchronized c()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    monitor-enter p0

    .line 326
    :try_start_3
    invoke-direct {p0}, Lcrittercism/android/v;->d()Z

    .line 328
    iget-boolean v2, p0, Lcrittercism/android/v;->d:Z

    if-eqz v2, :cond_1d

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcrittercism/android/v;->e:Z

    .line 330
    invoke-static {}, Lcrittercism/android/v;->f()Z

    move-result v2

    .line 333
    :goto_11
    iget-boolean v3, p0, Lcrittercism/android/v;->d:Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1a

    if-eqz v3, :cond_17

    if-eqz v2, :cond_18

    :cond_17
    move v0, v1

    :cond_18
    monitor-exit p0

    return v0

    .line 324
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    move v2, v0

    goto :goto_11
.end method

.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 6
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_1
    iget-boolean v0, p0, Lcrittercism/android/v;->e:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcrittercism/android/v;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/m;

    invoke-virtual {v0}, Lcrittercism/android/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v3

    if-eqz v3, :cond_b

    .line 176
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    .line 168
    goto :goto_21

    .line 169
    :catch_24
    move-exception v0

    throw v0

    .line 171
    :catch_26
    move-exception v0

    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcrittercism/android/v;->e:Z

    .line 173
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 176
    goto :goto_21
.end method
