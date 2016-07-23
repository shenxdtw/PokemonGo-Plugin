.class public final Lcrittercism/android/bs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/bs$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field private d:Lcrittercism/android/cj;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcrittercism/android/bs$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcrittercism/android/br;)V
    .registers 10

    .prologue
    .line 52
    invoke-virtual {p2}, Lcrittercism/android/br;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//com.crittercism//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcrittercism/android/br;->c()Lcrittercism/android/bs$a;

    move-result-object v2

    invoke-virtual {p2}, Lcrittercism/android/br;->d()Lcrittercism/android/cj;

    move-result-object v3

    invoke-virtual {p2}, Lcrittercism/android/br;->e()I

    move-result v4

    invoke-virtual {p2}, Lcrittercism/android/br;->b()I

    move-result v5

    invoke-virtual {p2}, Lcrittercism/android/br;->f()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcrittercism/android/bs;-><init>(Ljava/io/File;Lcrittercism/android/bs$a;Lcrittercism/android/cj;IILjava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcrittercism/android/bs$a;Lcrittercism/android/cj;IILjava/lang/String;)V
    .registers 8

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/bs;->i:Z

    .line 71
    iput-object p2, p0, Lcrittercism/android/bs;->h:Lcrittercism/android/bs$a;

    .line 72
    iput-object p3, p0, Lcrittercism/android/bs;->d:Lcrittercism/android/cj;

    .line 73
    iput p4, p0, Lcrittercism/android/bs;->g:I

    .line 74
    iput p5, p0, Lcrittercism/android/bs;->f:I

    .line 75
    iput-object p6, p0, Lcrittercism/android/bs;->b:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 80
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z

    .line 81
    invoke-direct {p0}, Lcrittercism/android/bs;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcrittercism/android/bs;->e:I

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bs;->c:Ljava/util/List;

    .line 83
    return-void
.end method

.method private c(Lcrittercism/android/ch;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 182
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-interface {p1}, Lcrittercism/android/ch;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    .line 185
    :try_start_d
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_20

    move-object v2, v1

    .line 190
    :goto_18
    :try_start_18
    invoke-interface {p1, v2}, Lcrittercism/android/ch;->a(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_4a
    .catchall {:try_start_18 .. :try_end_1b} :catchall_83

    .line 202
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_2f

    .line 211
    const/4 v0, 0x1

    :goto_1f
    return v0

    .line 187
    :catch_20
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not open output stream to : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_18

    .line 203
    :catch_2f
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 194
    :catch_4a
    move-exception v1

    .line 195
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to write to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_83

    .line 198
    :try_start_64
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_1f

    .line 203
    :catch_68
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 201
    :catchall_83
    move-exception v1

    .line 202
    :try_start_84
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 207
    throw v1

    .line 203
    :catch_88
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f
.end method

.method private d()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_31

    .line 112
    iput-boolean v0, p0, Lcrittercism/android/bs;->i:Z

    .line 114
    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 118
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a directory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    :cond_31
    :goto_31
    iget-boolean v1, p0, Lcrittercism/android/bs;->i:Z

    if-nez v1, :cond_4f

    :goto_35
    return v0

    .line 120
    :cond_36
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 123
    :cond_4f
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private e()V
    .registers 3

    .prologue
    .line 216
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/bs;->b()I

    move-result v0

    invoke-direct {p0}, Lcrittercism/android/bs;->i()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 217
    invoke-direct {p0}, Lcrittercism/android/bs;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :cond_10
    return-void
.end method

.method private f()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcrittercism/android/bs;->h:Lcrittercism/android/bs$a;

    .line 226
    iget-object v1, p0, Lcrittercism/android/bs;->h:Lcrittercism/android/bs$a;

    if-nez v1, :cond_8

    .line 234
    :cond_7
    :goto_7
    return v0

    .line 232
    :cond_8
    iget-object v2, p0, Lcrittercism/android/bs;->h:Lcrittercism/android/bs$a;

    invoke-direct {p0}, Lcrittercism/android/bs;->g()[Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    iget v5, v2, Lcrittercism/android/bs$a;->a:I

    if-le v4, v5, :cond_18

    iget v1, v2, Lcrittercism/android/bs$a;->a:I

    aget-object v1, v3, v1

    .line 234
    :cond_18
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private g()[Ljava/io/File;
    .registers 2

    .prologue
    .line 249
    invoke-direct {p0}, Lcrittercism/android/bs;->h()[Ljava/io/File;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 251
    return-object v0
.end method

.method private h()[Ljava/io/File;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 257
    if-nez v0, :cond_b

    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 261
    :cond_b
    return-object v0
.end method

.method private declared-synchronized i()I
    .registers 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcrittercism/android/bs;->f:I
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
.method public final a(Landroid/content/Context;)Lcrittercism/android/bs;
    .registers 9

    .prologue
    .line 99
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "//com.crittercism/pending/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/bs;->h:Lcrittercism/android/bs$a;

    iget-object v3, p0, Lcrittercism/android/bs;->d:Lcrittercism/android/cj;

    iget v4, p0, Lcrittercism/android/bs;->g:I

    iget v5, p0, Lcrittercism/android/bs;->f:I

    iget-object v6, p0, Lcrittercism/android/bs;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcrittercism/android/bs;-><init>(Ljava/io/File;Lcrittercism/android/bs$a;Lcrittercism/android/cj;IILjava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .registers 4

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result v0

    if-nez v0, :cond_9

    .line 246
    :cond_7
    monitor-exit p0

    return-void

    .line 242
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcrittercism/android/bs;->h()[Ljava/io/File;

    move-result-object v1

    .line 243
    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 244
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_19

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 238
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcrittercism/android/bs;)V
    .registers 9

    .prologue
    .line 292
    if-nez p1, :cond_3

    .line 331
    :cond_2
    :goto_2
    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-eqz v0, :cond_2

    .line 305
    if-gez v0, :cond_2d

    move-object v1, p1

    move-object v2, p0

    .line 313
    :goto_19
    monitor-enter v2

    .line 314
    :try_start_1a
    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2a

    .line 315
    :try_start_1b
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p1}, Lcrittercism/android/bs;->d()Z

    move-result v0

    if-nez v0, :cond_30

    .line 316
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_66

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2a

    goto :goto_2

    .line 331
    :catchall_2a
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2d
    move-object v1, p0

    move-object v2, p1

    .line 310
    goto :goto_19

    .line 319
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcrittercism/android/bs;->g()[Ljava/io/File;

    move-result-object v3

    .line 320
    const/4 v0, 0x0

    :goto_35
    array-length v4, v3

    if-ge v0, v4, :cond_4d

    .line 321
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcrittercism/android/bs;->a:Ljava/io/File;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    aget-object v5, v3, v0

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 325
    :cond_4d
    invoke-direct {p1}, Lcrittercism/android/bs;->e()V

    .line 327
    iget-object v0, p0, Lcrittercism/android/bs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bt;

    .line 328
    invoke-interface {v0}, Lcrittercism/android/bt;->d()V
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_66

    goto :goto_56

    .line 330
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1

    throw v0
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_2a

    :cond_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_66

    .line 331
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_2a

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-nez v0, :cond_9

    .line 288
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 278
    :cond_9
    if-eqz p1, :cond_7

    .line 283
    :try_start_b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_7

    .line 274
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcrittercism/android/ch;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 137
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    move-result v1

    if-nez v1, :cond_a

    .line 167
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 141
    :cond_a
    :try_start_a
    iget v1, p0, Lcrittercism/android/bs;->e:I

    iget v2, p0, Lcrittercism/android/bs;->g:I

    if-lt v1, v2, :cond_17

    .line 142
    invoke-static {}, Lcrittercism/android/dx;->b()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    goto :goto_8

    .line 137
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcrittercism/android/bs;->b()I

    move-result v1

    .line 148
    invoke-direct {p0}, Lcrittercism/android/bs;->i()I

    move-result v2

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Lcrittercism/android/bs;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 150
    :cond_27
    invoke-direct {p0}, Lcrittercism/android/bs;->i()I

    move-result v2

    if-le v1, v2, :cond_31

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcrittercism/android/bs;->i:Z

    goto :goto_8

    .line 156
    :cond_31
    invoke-direct {p0, p1}, Lcrittercism/android/bs;->c(Lcrittercism/android/ch;)Z

    move-result v1

    .line 157
    if-eqz v1, :cond_3d

    .line 158
    iget v0, p0, Lcrittercism/android/bs;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/bs;->e:I

    .line 161
    :cond_3d
    iget-object v2, p0, Lcrittercism/android/bs;->c:Ljava/util/List;

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_14

    .line 162
    :try_start_40
    iget-object v0, p0, Lcrittercism/android/bs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bt;

    .line 163
    invoke-interface {v0}, Lcrittercism/android/bt;->c()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_56

    goto :goto_46

    .line 165
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v2

    throw v0
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_14

    :cond_59
    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    move v0, v1

    .line 167
    goto :goto_8
.end method

.method public final declared-synchronized b()I
    .registers 2

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcrittercism/android/bs;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcrittercism/android/ch;)Z
    .registers 5

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    move-result v0

    if-nez v0, :cond_a

    .line 172
    const/4 v0, 0x0

    .line 178
    :goto_8
    monitor-exit p0

    return v0

    .line 175
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-interface {p1}, Lcrittercism/android/ch;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 178
    invoke-direct {p0, p1}, Lcrittercism/android/bs;->c(Lcrittercism/android/ch;)Z
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_1d

    move-result v0

    goto :goto_8

    .line 171
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 6

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-direct {p0}, Lcrittercism/android/bs;->d()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    move-result v1

    if-nez v1, :cond_e

    .line 348
    :cond_c
    monitor-exit p0

    return-object v0

    .line 341
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcrittercism/android/bs;->d:Lcrittercism/android/cj;

    .line 343
    invoke-direct {p0}, Lcrittercism/android/bs;->g()[Ljava/io/File;

    move-result-object v2

    .line 344
    const/4 v1, 0x0

    :goto_15
    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 345
    iget-object v3, p0, Lcrittercism/android/bs;->d:Lcrittercism/android/cj;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcrittercism/android/cj;->a(Ljava/io/File;)Lcrittercism/android/bq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_26

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 335
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
