.class public Lrx/Single;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Single$Transformer;,
        Lrx/Single$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# static fields
.field static hook:Lrx/plugins/RxJavaSingleExecutionHook;


# instance fields
.field final onSubscribe:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    return-void
.end method

.method private constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 102
    return-void
.end method

.method protected constructor <init>(Lrx/Single$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lrx/Single$1;

    invoke-direct {v0, p0, p1}, Lrx/Single$1;-><init>(Lrx/Single;Lrx/Single$OnSubscribe;)V

    iput-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 98
    return-void
.end method

.method private static asObservable(Lrx/Single;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "t":Lrx/Single;, "Lrx/Single<TT;>;"
    iget-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Single$OnSubscribe;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v0, Lrx/Single;

    sget-object v1, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaSingleExecutionHook;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lrx/Single",
            "<TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2406
    .local p0, "singleFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lrx/Single<TT;>;>;"
    new-instance v0, Lrx/Single$25;

    invoke-direct {v0, p0}, Lrx/Single$25;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Single;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lrx/Single$3;

    invoke-direct {v0, p0}, Lrx/Single$3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Single;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    invoke-virtual {v0, p1}, Lrx/Single;->subscribeOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 608
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/Single$4;

    invoke-direct {v0, p0}, Lrx/Single$4;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method static iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Single",
            "<+TT;>;>;)[",
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "singlesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<+TT;>;>;"
    const/4 v8, 0x0

    .line 2479
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_15

    move-object v2, p0

    .line 2480
    check-cast v2, Ljava/util/Collection;

    .line 2481
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2482
    .local v0, "count":I
    new-array v7, v0, [Lrx/Single;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lrx/Single;

    .line 2504
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    .local v5, "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :goto_14
    return-object v5

    .line 2484
    .end local v0    # "count":I
    .end local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_15
    const/16 v7, 0x8

    new-array v6, v7, [Lrx/Single;

    .line 2485
    .local v6, "tempArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    const/4 v0, 0x0

    .line 2486
    .restart local v0    # "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Single;

    .line 2487
    .local v3, "s":Lrx/Single;, "Lrx/Single<+TT;>;"
    array-length v7, v6

    if-ne v0, v7, :cond_36

    .line 2488
    shr-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v0

    new-array v4, v7, [Lrx/Single;

    .line 2489
    .local v4, "sb":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2490
    move-object v6, v4

    .line 2492
    .end local v4    # "sb":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_36
    aput-object v3, v6, v0

    .line 2493
    add-int/lit8 v0, v0, 0x1

    .line 2494
    goto :goto_1e

    .line 2496
    .end local v3    # "s":Lrx/Single;, "Lrx/Single<+TT;>;"
    :cond_3b
    array-length v7, v6

    if-ne v7, v0, :cond_40

    .line 2497
    move-object v5, v6

    .restart local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    goto :goto_14

    .line 2499
    .end local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_40
    new-array v5, v0, [Lrx/Single;

    .line 2500
    .restart local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14
.end method

.method public static just(Ljava/lang/Object;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousSingle;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousSingle;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 856
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_f

    .line 668
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    .line 670
    .restart local p0    # "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lrx/Single$5;

    invoke-direct {v0, p0}, Lrx/Single$5;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    goto :goto_e
.end method

.method private nest()Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2626
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/Single;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;
    .registers 6
    .param p3, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2662
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "singleFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    if-nez p0, :cond_a

    .line 2663
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2665
    :cond_a
    if-nez p1, :cond_14

    .line 2666
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "singleFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2668
    :cond_14
    if-nez p2, :cond_1e

    .line 2669
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposeAction is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2671
    :cond_1e
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/SingleOnSubscribeUsing;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Single",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, "singles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-static {p0}, Lrx/Single;->iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;

    move-result-object v0

    .line 1246
    .local v0, "iterableToArray":[Lrx/Single;
    invoke-static {v0, p1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func9;)Lrx/Single;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/Single",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1215
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "s9":Lrx/Single;, "Lrx/Single<+TT9;>;"
    .local p9, "zipFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    new-instance v1, Lrx/Single$13;

    invoke-direct {v1, p9}, Lrx/Single$13;-><init>(Lrx/functions/Func9;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func8;)Lrx/Single;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "zipFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    new-instance v1, Lrx/Single$12;

    invoke-direct {v1, p8}, Lrx/Single$12;-><init>(Lrx/functions/Func8;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func7;)Lrx/Single;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1129
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "zipFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    new-instance v1, Lrx/Single$11;

    invoke-direct {v1, p7}, Lrx/Single$11;-><init>(Lrx/functions/Func7;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func6;)Lrx/Single;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "zipFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    new-instance v1, Lrx/Single$10;

    invoke-direct {v1, p6}, Lrx/Single$10;-><init>(Lrx/functions/Func6;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func5;)Lrx/Single;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "zipFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    new-instance v1, Lrx/Single$9;

    invoke-direct {v1, p5}, Lrx/Single$9;-><init>(Lrx/functions/Func5;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func4;)Lrx/Single;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "zipFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance v1, Lrx/Single$8;

    invoke-direct {v1, p4}, Lrx/Single$8;-><init>(Lrx/functions/Func4;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func3;)Lrx/Single;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "zipFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Lrx/Single$7;

    invoke-direct {v1, p3}, Lrx/Single$7;-><init>(Lrx/functions/Func3;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lrx/Single$6;

    invoke-direct {v1, p2}, Lrx/Single$6;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compose(Lrx/Single$Transformer;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$Transformer",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "transformer":Lrx/Single$Transformer;, "Lrx/Single$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/Single$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    return-object v0
.end method

.method public final concatWith(Lrx/Single;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1266
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->concat(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2377
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Single;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .registers 6
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2355
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelay;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDelay;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/Observable;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2693
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<*>;"
    if-nez p1, :cond_8

    .line 2694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2696
    :cond_8
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2462
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoAfterTerminate;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoAfterTerminate;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2260
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/Single$23;

    invoke-direct {v0, p0, p1}, Lrx/Single$23;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 2275
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final doOnSubscribe(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "subscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2331
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnSubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnSubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2294
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/Single$24;

    invoke-direct {v0, p0, p1}, Lrx/Single$24;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 2309
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2441
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnUnsubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnUnsubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Single",
            "<+TR;>;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1285
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1286
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    .line 1288
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->merge(Lrx/Single;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final flatMapObservable(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1308
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lrx/Observable$Operator;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lrx/Single;

    new-instance v1, Lrx/Single$2;

    invoke-direct {v1, p0, p1}, Lrx/Single$2;-><init>(Lrx/Single;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1327
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMap;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMap;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Single;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1348
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->merge(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Single;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1370
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1371
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    .line 1375
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/Scheduler;Z)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final onErrorResumeNext(Lrx/Single;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1439
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/Single;, "Lrx/Single<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1473
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withSingle(Lrx/functions/Func1;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2525
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Single;
    .registers 4
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2550
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2574
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2600
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .registers 2

    .prologue
    .line 1489
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/Single$14;

    invoke-direct {v0, p0}, Lrx/Single$14;-><init>(Lrx/Single;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/Observer;)Lrx/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1645
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    if-nez p1, :cond_a

    .line 1646
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_a
    new-instance v0, Lrx/Single$17;

    invoke-direct {v0, p0, p1}, Lrx/Single$17;-><init>(Lrx/Single;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1783
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/Single$18;

    invoke-direct {v0, p0, p1}, Lrx/Single$18;-><init>(Lrx/Single;Lrx/SingleSubscriber;)V

    .line 1801
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 1802
    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1803
    return-object v0
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1698
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-nez p1, :cond_a

    .line 1699
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1701
    :cond_a
    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    if-nez v4, :cond_16

    .line 1702
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1710
    :cond_16
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1717
    instance-of v4, p1, Lrx/observers/SafeSubscriber;

    if-nez v4, :cond_23

    .line 1719
    new-instance v3, Lrx/observers/SafeSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object p1, v3

    .line 1725
    .end local v3    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_23
    :try_start_23
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    iget-object v5, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v4, p0, v5}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v4

    invoke-interface {v4, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1726
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v4, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_33} :catch_35

    move-result-object v4

    .line 1743
    :goto_34
    return-object v4

    .line 1727
    :catch_35
    move-exception v0

    .line 1729
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1732
    :try_start_39
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v4, v0}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_47

    .line 1743
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v4

    goto :goto_34

    .line 1733
    :catch_47
    move-exception v1

    .line 1734
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1737
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1739
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v4, v2}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1741
    throw v2
.end method

.method public final subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1526
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_a

    .line 1527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_a
    new-instance v0, Lrx/Single$15;

    invoke-direct {v0, p0, p1}, Lrx/Single$15;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1570
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_a

    .line 1571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_a
    if-nez p2, :cond_14

    .line 1574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_14
    new-instance v0, Lrx/Single$16;

    invoke-direct {v0, p0, p2, p1}, Lrx/Single$16;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Single;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1823
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1824
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    .line 1826
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    new-instance v0, Lrx/Single$19;

    invoke-direct {v0, p0, p1}, Lrx/Single$19;-><init>(Lrx/Single;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final takeUntil(Lrx/Completable;)Lrx/Single;
    .registers 3
    .param p1, "other"    # Lrx/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Completable;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1882
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/Single$20;

    invoke-direct {v0, p0, p1}, Lrx/Single$20;-><init>(Lrx/Single;Lrx/Completable;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Observable;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TE;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1958
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lrx/Single$21;

    invoke-direct {v0, p0, p1}, Lrx/Single$21;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Single;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TE;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2035
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Single;, "Lrx/Single<+TE;>;"
    new-instance v0, Lrx/Single$22;

    invoke-direct {v0, p0, p1}, Lrx/Single$22;-><init>(Lrx/Single;Lrx/Single;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2118
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2143
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;)Lrx/Single;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2167
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2193
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez p4, :cond_b

    .line 2194
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v0}, Lrx/Single;->error(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object p4

    .line 2196
    :cond_b
    new-instance v1, Lrx/internal/operators/OperatorTimeout;

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/singles/BlockingSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/singles/BlockingSingle",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2211
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/singles/BlockingSingle;->from(Lrx/Single;)Lrx/singles/BlockingSingle;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2095
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1615
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v3, p0, v4}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1616
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    .line 1633
    :goto_14
    return-object v3

    .line 1617
    :catch_15
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1622
    :try_start_19
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_27

    .line 1633
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    goto :goto_14

    .line 1623
    :catch_27
    move-exception v1

    .line 1624
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1627
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1629
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1631
    throw v2
.end method

.method public final zipWith(Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2238
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/Single;->zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method
