.class public Lcrittercism/android/bq;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcrittercism/android/bq;->a:Ljava/io/File;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    const-string v0, ""

    .line 17
    :try_start_2
    iget-object v1, p0, Lcrittercism/android/bq;->a:Ljava/io/File;

    invoke-static {v1}, Lcrittercism/android/eb;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    .line 19
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method
