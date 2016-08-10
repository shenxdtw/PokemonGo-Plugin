.class public Lrx/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Observable$ThrowObservable;,
        Lrx/Observable$NeverObservable;,
        Lrx/Observable$HolderAnyForEmpty;,
        Lrx/Observable$CountLongHolder;,
        Lrx/Observable$CountHolder;,
        Lrx/Observable$EmptyHolder;,
        Lrx/Observable$Transformer;,
        Lrx/Observable$Operator;,
        Lrx/Observable$OnSubscribe;
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


# static fields
.field static final hook:Lrx/plugins/RxJavaObservableExecutionHook;


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
    .line 63
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;
    .registers 3
    .param p0, "x0"    # Lrx/Subscriber;
    .param p1, "x1"    # Lrx/Observable;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>(Ljava/lang/Iterable;Lrx/functions/FuncN;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>(Ljava/lang/Iterable;Lrx/functions/FuncN;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func9;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/Observable",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT9;>;"
    .local p9, "combineFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p9}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func8;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "combineFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p8}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func7;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "combineFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p7}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func6;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "combineFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p6}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func5;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "combineFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func4;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "combineFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func3;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "combineFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "combineFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    const/4 v1, 0x0

    sget v4, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "observables":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 976
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1225
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatDelayError(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1206
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->concatMapDelayError(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5223
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMapEager(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;I)Lrx/Observable;
    .registers 4
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5249
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lrx/Observable;->concatMapEager(Lrx/functions/Func1;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5274
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->concatMapEager(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;I)Lrx/Observable;
    .registers 3
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5300
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lrx/Observable;->concatMapEager(Lrx/functions/Func1;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 4958
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 4988
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5019
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5052
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5086
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5122
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5159
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5198
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concatEager(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable$OnSubscribe;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lrx/Observable;

    sget-object v1, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static create(Lrx/observables/AsyncOnSubscribe;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 166
    .local p0, "asyncOnSubscribe":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    new-instance v0, Lrx/Observable;

    sget-object v1, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static create(Lrx/observables/SyncOnSubscribe;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 131
    .local p0, "syncOnSubscribe":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    new-instance v0, Lrx/Observable;

    sget-object v1, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static defer(Lrx/functions/Func0;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1253
    .local p0, "observableFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<Lrx/Observable<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDefer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeDefer;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lrx/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1284
    sget-object v0, Lrx/Observable$EmptyHolder;->INSTANCE:Lrx/Observable;

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Observable;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1306
    new-instance v0, Lrx/Observable$ThrowObservable;

    invoke-direct {v0, p0}, Lrx/Observable$ThrowObservable;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFromIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1333
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
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
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1364
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Observable;
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
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1393
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 1394
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {v0, p1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static from([Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1435
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 1436
    .local v0, "n":I
    if-nez v0, :cond_8

    .line 1437
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    .line 1442
    :goto_7
    return-object v1

    .line 1439
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1440
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_7

    .line 1442
    :cond_13
    new-instance v1, Lrx/internal/operators/OnSubscribeFromArray;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_7
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1469
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFromCallable;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 14
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    new-instance v1, Lrx/internal/operators/OnSubscribeTimerPeriodically;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/OnSubscribeTimerPeriodically;-><init>(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 9
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1489
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 10
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1512
    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1598
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1622
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1648
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1676
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1706
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1738
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1772
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1808
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1846
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1886
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    .local p9, "t10":Ljava/lang/Object;, "TT;"
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

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

    const/16 v1, 0x9

    aput-object p9, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/functions/Func0",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6285
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapNotification;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMapNotification;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1908
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;I)Lrx/Observable;
    .registers 3
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1935
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1959
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_13

    .line 1960
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1962
    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_12
.end method

.method public static merge(Lrx/Observable;I)Lrx/Observable;
    .registers 4
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1992
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_13

    .line 1993
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1995
    :goto_12
    return-object v0

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :cond_13
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->instance(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_12
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2045
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2073
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2103
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2135
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2169
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2205
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2243
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->merge([Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2264
    .local p0, "sequences":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lrx/Observable;I)Lrx/Observable;
    .registers 3
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2289
    .local p0, "sequences":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2378
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Lrx/Observable;
    .registers 3
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2408
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/Observable;->mergeDelayError(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2317
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;I)Lrx/Observable;
    .registers 3
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2350
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->instance(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2438
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2470
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2504
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2578
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2619
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2662
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2706
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lrx/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2743
    invoke-static {}, Lrx/Observable$NeverObservable;->instance()Lrx/Observable$NeverObservable;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lrx/Observable;
    .registers 4
    .param p0, "start"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2766
    if-gez p1, :cond_a

    .line 2767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2769
    :cond_a
    if-nez p1, :cond_11

    .line 2770
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 2778
    :goto_10
    return-object v0

    .line 2772
    :cond_11
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_21

    .line 2773
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :cond_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 2776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_10

    .line 2778
    :cond_2d
    new-instance v0, Lrx/internal/operators/OnSubscribeRange;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeRange;-><init>(II)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    goto :goto_10
.end method

.method public static range(IILrx/Scheduler;)Lrx/Observable;
    .registers 4
    .param p0, "start"    # I
    .param p1, "count"    # I
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2801
    invoke-static {p0, p1}, Lrx/Observable;->range(II)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2824
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/Observable$3;

    invoke-direct {v0}, Lrx/Observable$3;-><init>()V

    invoke-static {p0, p1, v0}, Lrx/Observable;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2859
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OperatorSequenceEqual;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static subscribe(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8806
    .local p0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-nez p0, :cond_a

    .line 8807
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8809
    :cond_a
    iget-object v4, p1, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    if-nez v4, :cond_16

    .line 8810
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8818
    :cond_16
    invoke-virtual {p0}, Lrx/Subscriber;->onStart()V

    .line 8825
    instance-of v4, p0, Lrx/observers/SafeSubscriber;

    if-nez v4, :cond_23

    .line 8827
    new-instance v3, Lrx/observers/SafeSubscriber;

    invoke-direct {v3, p0}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p0    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object p0, v3

    .line 8834
    .end local v3    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local p0    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_23
    :try_start_23
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v5, p1, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v4, p1, v5}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v4

    invoke-interface {v4, p0}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 8835
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_33} :catch_35

    move-result-object v4

    .line 8852
    :goto_34
    return-object v4

    .line 8836
    :catch_35
    move-exception v0

    .line 8838
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 8841
    :try_start_39
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_47

    .line 8852
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v4

    goto :goto_34

    .line 8842
    :catch_47
    move-exception v1

    .line 8843
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 8846
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

    .line 8848
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8850
    throw v2
.end method

.method public static switchOnNext(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2885
    .local p0, "sequenceOfSequences":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/OperatorSwitch;->instance(Z)Lrx/internal/operators/OperatorSwitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static switchOnNextDelayError(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2914
    .local p0, "sequenceOfSequences":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/OperatorSwitch;->instance(Z)Lrx/internal/operators/OperatorSwitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2943
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 8
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2974
    invoke-static/range {p0 .. p5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2997
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3024
    new-instance v0, Lrx/internal/operators/OnSubscribeTimerOnce;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeTimerOnce;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3049
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/Observable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Observable;
    .registers 5
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
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 3085
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeUsing;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3115
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3116
    .local v2, "os":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 3117
    .local v1, "o":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3119
    .end local v1    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lrx/Observable;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lrx/internal/operators/OperatorZip;

    invoke-direct {v4, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/FuncN;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func9;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/Observable",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3483
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT9;>;"
    .local p9, "zipFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p9}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func9;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func8;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3435
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "zipFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p8}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func8;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func7;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3389
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "zipFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p7}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func7;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func6;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3345
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "zipFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p6}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func6;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func5;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3303
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "zipFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

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

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p5}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func5;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func4;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3263
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "zipFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p4}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func4;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func3;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3225
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "zipFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p3}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func3;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
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
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3189
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Observable;Lrx/functions/FuncN;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3149
    .local p0, "ws":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-virtual {p0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/Observable$4;

    invoke-direct {v1}, Lrx/Observable$4;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/FuncN;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final all(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3503
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorAll;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorAll;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ambWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3523
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3538
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorAsObservable;->instance()Lrx/internal/operators/OperatorAsObservable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3586
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/Observable;->buffer(II)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(II)Lrx/Observable;
    .registers 4
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3612
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 15
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3642
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 16
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3674
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    const v7, 0x7fffffff

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3702
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->buffer(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lrx/Observable;
    .registers 14
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3734
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v8

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .registers 15
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3769
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 14
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3800
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TB;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3857
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TB;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lrx/Observable;->buffer(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;I)Lrx/Observable;
    .registers 4
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TB;>;I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3889
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TB;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/Observable;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TTOpening;>;",
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3827
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "bufferOpenings":Lrx/Observable;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithStartEndObservable;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/functions/Func0;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3564
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "bufferClosingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/functions/Func0;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final cache()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3923
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/CachedObservable;->from(Lrx/Observable;)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public final cache(I)Lrx/Observable;
    .registers 3
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3932
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->cacheWithInitialCapacity(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Lrx/Observable;
    .registers 3
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3970
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/CachedObservable;->from(Lrx/Observable;I)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3991
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorCast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorCast;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4019
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "stateFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    new-instance v0, Lrx/Observable$5;

    invoke-direct {v0, p0, p2}, Lrx/Observable$5;-><init>(Lrx/Observable;Lrx/functions/Action2;)V

    .line 4035
    .local v0, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;TT;TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorScan;

    invoke-direct {v1, p1, v0}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public compose(Lrx/Observable$Transformer;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Transformer",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "transformer":Lrx/Observable$Transformer;, "Lrx/Observable$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/Observable$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

.method public final concatMap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 6
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
    .line 4057
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    instance-of v1, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_c

    move-object v0, p0

    .line 4058
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .line 4059
    .local v0, "scalar":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    invoke-virtual {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 4061
    .end local v0    # "scalar":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Lrx/internal/operators/OnSubscribeConcatMap;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lrx/internal/operators/OnSubscribeConcatMap;-><init>(Lrx/Observable;Lrx/functions/Func1;II)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_b
.end method

.method public final concatMapDelayError(Lrx/functions/Func1;)Lrx/Observable;
    .registers 5
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

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    const/4 v2, 0x2

    .line 4083
    instance-of v1, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_d

    move-object v0, p0

    .line 4084
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .line 4085
    .local v0, "scalar":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    invoke-virtual {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 4087
    .end local v0    # "scalar":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    :goto_c
    return-object v1

    :cond_d
    new-instance v1, Lrx/internal/operators/OnSubscribeConcatMap;

    invoke-direct {v1, p0, p1, v2, v2}, Lrx/internal/operators/OnSubscribeConcatMap;-><init>(Lrx/Observable;Lrx/functions/Func1;II)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_c
.end method

.method public final concatMapEager(Lrx/functions/Func1;)Lrx/Observable;
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

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5326
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lrx/Observable;->concatMapEager(Lrx/functions/Func1;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lrx/functions/Func1;I)Lrx/Observable;
    .registers 6
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5353
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1c

    .line 5354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5356
    :cond_1c
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/OperatorEagerConcatMap;-><init>(Lrx/functions/Func1;II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lrx/functions/Func1;II)Lrx/Observable;
    .registers 7
    .param p2, "capacityHint"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;II)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    const/4 v0, 0x1

    .line 5384
    if-ge p2, v0, :cond_1c

    .line 5385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5387
    :cond_1c
    if-ge p3, v0, :cond_37

    .line 5388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5390
    :cond_37
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorEagerConcatMap;-><init>(Lrx/functions/Func1;II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapIterable(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4110
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final concatWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4130
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4150
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$6;

    invoke-direct {v0, p0, p1}, Lrx/Observable$6;-><init>(Lrx/Observable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->exists(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final count()Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4175
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/Observable$CountHolder;->INSTANCE:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final countLong()Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4206
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/Observable$CountLongHolder;->INSTANCE:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4280
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4322
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDebounceWithTime;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4241
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "debounceSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithSelector;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDebounceWithSelector;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4343
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Observable$7;

    invoke-direct {v0, p0, p1}, Lrx/Observable$7;-><init>(Lrx/Observable;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->switchIfEmpty(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4449
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
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
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4472
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelay;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDelay;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4401
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->delaySubscription(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorDelayWithSelector;

    invoke-direct {v1, p0, p2}, Lrx/internal/operators/OperatorDelayWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4428
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelayWithSelector;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4492
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 12
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4516
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDelaySubscription;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeDelaySubscription;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 4560
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    if-nez p1, :cond_8

    .line 4561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4563
    :cond_8
    new-instance v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;-><init>(Lrx/Observable;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/functions/Func0;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4537
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 4585
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDematerialize;->instance()Lrx/internal/operators/OperatorDematerialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinct()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4602
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDistinct;->instance()Lrx/internal/operators/OperatorDistinct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4622
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinct;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDistinct;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4640
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDistinctUntilChanged;->instance()Lrx/internal/operators/OperatorDistinctUntilChanged;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4661
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Observable;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5526
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoAfterTerminate;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoAfterTerminate;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;
    .registers 4
    .param p1, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4679
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$8;

    invoke-direct {v0, p0, p1}, Lrx/Observable$8;-><init>(Lrx/Observable;Lrx/functions/Action0;)V

    .line 4695
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnEach(Lrx/Observer;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4754
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lrx/functions/Action1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4713
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNotification":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;"
    new-instance v0, Lrx/Observable$9;

    invoke-direct {v0, p0, p1}, Lrx/Observable$9;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4731
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4775
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/Observable$10;

    invoke-direct {v0, p0, p1}, Lrx/Observable$10;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4791
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnNext(Lrx/functions/Action1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4809
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/Observable$11;

    invoke-direct {v0, p0, p1}, Lrx/Observable$11;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4825
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnRequest(Lrx/functions/Action1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 4850
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onRequest":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Long;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnRequest;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnRequest;-><init>(Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/functions/Action0;)Lrx/Observable;
    .registers 3
    .param p1, "subscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4871
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnSubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnSubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
    .registers 4
    .param p1, "onTerminate"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4894
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$12;

    invoke-direct {v0, p0, p1}, Lrx/Observable$12;-><init>(Lrx/Observable;Lrx/functions/Action0;)V

    .line 4911
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;
    .registers 3
    .param p1, "unsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4932
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnUnsubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnUnsubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final elementAt(I)Lrx/Observable;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5414
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorElementAt;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final elementAtOrDefault(ILjava/lang/Object;)Lrx/Observable;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5438
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final exists(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5462
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorAny;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorAny;-><init>(Lrx/functions/Func1;Z)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public extend(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "conversion":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable$OnSubscribe<TT;>;+TR;>;"
    new-instance v0, Lrx/Observable$1;

    invoke-direct {v0, p0}, Lrx/Observable$1;-><init>(Lrx/Observable;)V

    invoke-interface {p1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5482
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorFilter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorFilter;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final finallyDo(Lrx/functions/Action0;)Lrx/Observable;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5505
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoAfterTerminate;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoAfterTerminate;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5544
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final first(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5564
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5584
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5607
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
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
    .line 5630
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_f

    .line 5631
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 5633
    :goto_e
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_f
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    goto :goto_e
.end method

.method public final flatMap(Lrx/functions/Func1;I)Lrx/Observable;
    .registers 5
    .param p2, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5661
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_f

    .line 5662
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 5664
    :goto_e
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_f
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    goto :goto_e
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5695
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/Observable;->mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;I)Lrx/Observable;
    .registers 6
    .param p4, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5730
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/Observable;->mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p4}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5758
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorMapPair;-><init>(Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func2;I)Lrx/Observable;
    .registers 5
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5790
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorMapPair;-><init>(Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p3}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5813
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;I)Lrx/Observable;
    .registers 4
    .param p2, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5843
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5872
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;Lrx/functions/Func2;I)Lrx/Observable;
    .registers 5
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5908
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lrx/Observable;->flatMap(Lrx/functions/Func1;Lrx/functions/Func2;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final forEach(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 5929
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 5930
    return-void
.end method

.method public final forEach(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5953
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 5954
    return-void
.end method

.method public final forEach(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 4
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5980
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 5981
    return-void
.end method

.method public final groupBy(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 6046
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final groupBy(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 6015
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final groupJoin(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "D1:",
            "Ljava/lang/Object;",
            "D2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TD1;>;>;",
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6079
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p2, "leftDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TD1;>;>;"
    .local p3, "rightDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p4, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-Lrx/Observable<TT2;>;+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeGroupJoin;-><init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6096
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorIgnoreElements;->instance()Lrx/internal/operators/OperatorIgnoreElements;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6116
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/Observable$HolderAnyForEmpty;->INSTANCE:Lrx/internal/operators/OperatorAny;

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftDuration:Ljava/lang/Object;",
            "TRightDuration:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TTRight;>;",
            "Lrx/functions/Func1",
            "<TT;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;",
            "Lrx/functions/Func2",
            "<TT;TTRight;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6153
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TTRight;>;"
    .local p2, "leftDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Lrx/Observable<TTLeftDuration;>;>;"
    .local p3, "rightDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p4, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TTRight;TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeJoin;-><init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6171
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final last(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6193
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6213
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6236
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lrx/Observable$Operator;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lrx/Observable;

    new-instance v1, Lrx/Observable$2;

    invoke-direct {v1, p0, p1}, Lrx/Observable$2;-><init>(Lrx/Observable;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public final limit(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6261
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6281
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMap;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMap;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final materialize()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 6303
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorMaterialize;->instance()Lrx/internal/operators/OperatorMaterialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6324
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final nest()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2723
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6352
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;I)Lrx/Observable;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6381
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;ZI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;Z)Lrx/Observable;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Z)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6410
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-virtual {p0, p1, p2, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;ZI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;ZI)Lrx/Observable;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "ZI)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6441
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_b

    .line 6442
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 6444
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_b
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/Scheduler;ZI)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_a
.end method

.method public final ofType(Ljava/lang/Class;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6462
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lrx/Observable$13;

    invoke-direct {v0, p0, p1}, Lrx/Observable$13;-><init>(Lrx/Observable;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->cast(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6484
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->instance()Lrx/internal/operators/OperatorOnBackpressureBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(J)Lrx/Observable;
    .registers 4
    .param p1, "capacity"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6505
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(J)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLrx/functions/Action0;)Lrx/Observable;
    .registers 5
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6527
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)Lrx/Observable;
    .registers 6
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .param p4, "overflowStrategy"    # Lrx/BackpressureOverflow$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/functions/Action0;",
            "Lrx/BackpressureOverflow$Strategy;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 6562
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6605
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureDrop;->instance()Lrx/internal/operators/OperatorOnBackpressureDrop;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop(Lrx/functions/Action1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6585
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onDrop":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureDrop;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>(Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureLatest()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6627
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureLatest;->instance()Lrx/internal/operators/OperatorOnBackpressureLatest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6693
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withOther(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6660
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6723
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withSingle(Lrx/functions/Func1;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onExceptionResumeNext(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6759
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withException(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6801
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lrx/observables/ConnectableObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6778
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6873
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/Observable;->scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Lrx/functions/Func2;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6840
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->scan(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6889
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/Observable;
    .registers 4
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6931
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(JLrx/Scheduler;)Lrx/Observable;
    .registers 5
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6954
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6908
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7013
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$15;

    invoke-direct {v0, p0, p1}, Lrx/Observable$15;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 7024
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final repeatWhen(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 5
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6979
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$14;

    invoke-direct {v0, p0, p1}, Lrx/Observable$14;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 6990
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0, p2}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final replay(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7075
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/Observable$16;

    invoke-direct {v0, p0}, Lrx/Observable$16;-><init>(Lrx/Observable;)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;I)Lrx/Observable;
    .registers 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7111
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/Observable$17;

    invoke-direct {v0, p0, p2}, Lrx/Observable$17;-><init>(Lrx/Observable;I)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 15
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7152
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 16
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7192
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    if-gez p2, :cond_a

    .line 7193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7195
    :cond_a
    new-instance v1, Lrx/Observable$18;

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lrx/Observable$18;-><init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v1, p1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;ILrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p2, "bufferSize"    # I
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7233
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/Observable$19;

    invoke-direct {v0, p0, p2}, Lrx/Observable$19;-><init>(Lrx/Observable;I)V

    new-instance v1, Lrx/Observable$20;

    invoke-direct {v1, p0, p1, p3}, Lrx/Observable$20;-><init>(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7276
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 12
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7311
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/Observable$21;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/Observable$21;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 5
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7346
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/Observable$22;

    invoke-direct {v0, p0}, Lrx/Observable$22;-><init>(Lrx/Observable;)V

    new-instance v1, Lrx/Observable$23;

    invoke-direct {v1, p0, p1, p2}, Lrx/Observable$23;-><init>(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay()Lrx/observables/ConnectableObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7048
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lrx/observables/ConnectableObservable;
    .registers 3
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7382
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lrx/observables/ConnectableObservable;
    .registers 11
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7413
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 14
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7448
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-gez p1, :cond_a

    .line 7449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 7451
    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(ILrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 4
    .param p1, "bufferSize"    # I
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7479
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->replay(I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/internal/operators/OperatorReplay;->observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lrx/observables/ConnectableObservable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7507
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7537
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7564
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lrx/Observable;->replay()Lrx/observables/ConnectableObservable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7589
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Observable;
    .registers 4
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7617
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7640
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Observable;->nest()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorRetryWithPredicate;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7692
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$24;

    invoke-direct {v0, p0, p1}, Lrx/Observable$24;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 7703
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final retryWhen(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 5
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7730
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$25;

    invoke-direct {v0, p0, p1}, Lrx/Observable$25;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 7741
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0, p2}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7767
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7795
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSampleWithTime;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSampleWithTime;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sample(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7820
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sampler":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorSampleWithObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSampleWithObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7876
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Lrx/functions/Func2;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7845
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final serialize()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7900
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorSerialize;->instance()Lrx/internal/operators/OperatorSerialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7925
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lrx/Observable;->publish()Lrx/observables/ConnectableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/ConnectableObservable;->refCount()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final single()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7947
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorSingle;->instance()Lrx/internal/operators/OperatorSingle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final single(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7973
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7996
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/OperatorSingle;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSingle;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8022
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8042
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkip;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkip;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8064
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->skip(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8088
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSkipTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8114
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkipLast;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8138
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->skipLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8164
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLastTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSkipLastTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipUntil(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8185
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipUntil;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkipUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhile(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8205
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile;

    invoke-static {p1}, Lrx/internal/operators/OperatorSkipWhile;->toPredicate2(Lrx/functions/Func1;)Lrx/functions/Func2;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorSkipWhile;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8245
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8265
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8287
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8311
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8337
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8365
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4, p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8395
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8427
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8461
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8497
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    .local p9, "t9":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p9}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8225
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "values":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .registers 2

    .prologue
    .line 8515
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$26;

    invoke-direct {v0, p0}, Lrx/Observable$26;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/Observer;)Lrx/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8695
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    instance-of v0, p1, Lrx/Subscriber;

    if-eqz v0, :cond_b

    .line 8696
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 8698
    :goto_a
    return-object v0

    .restart local p1    # "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    :cond_b
    new-instance v0, Lrx/Observable$30;

    invoke-direct {v0, p0, p1}, Lrx/Observable$30;-><init>(Lrx/Observable;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    goto :goto_a
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8801
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {p1, p0}, Lrx/Observable;->subscribe(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;

    move-result-object v0

    return-object v0
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
    .line 8553
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_a

    .line 8554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8557
    :cond_a
    new-instance v0, Lrx/Observable$27;

    invoke-direct {v0, p0, p1}, Lrx/Observable$27;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

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
    .line 8598
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_a

    .line 8599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8601
    :cond_a
    if-nez p2, :cond_14

    .line 8602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8605
    :cond_14
    new-instance v0, Lrx/Observable$28;

    invoke-direct {v0, p0, p2, p1}, Lrx/Observable$28;-><init>(Lrx/Observable;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    .registers 6
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8650
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_a

    .line 8651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8653
    :cond_a
    if-nez p2, :cond_14

    .line 8654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8656
    :cond_14
    if-nez p3, :cond_1e

    .line 8657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8660
    :cond_1e
    new-instance v0, Lrx/Observable$29;

    invoke-direct {v0, p0, p3, p2, p1}, Lrx/Observable$29;-><init>(Lrx/Observable;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8874
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_b

    .line 8875
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 8877
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_b
    new-instance v0, Lrx/internal/operators/OperatorSubscribeOn;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn;-><init>(Lrx/Observable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    goto :goto_a
.end method

.method public final switchIfEmpty(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4367
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "alternate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitchIfEmpty;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSwitchIfEmpty;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final switchMap(Lrx/functions/Func1;)Lrx/Observable;
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
    .line 8898
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->switchOnNext(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final switchMapDelayError(Lrx/functions/Func1;)Lrx/Observable;
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

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 8922
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->switchOnNextDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8946
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTake;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTake;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8967
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->take(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8991
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTakeTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeFirst(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9012
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9034
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-nez p1, :cond_7

    .line 9035
    invoke-virtual {p0}, Lrx/Observable;->ignoreElements()Lrx/Observable;

    move-result-object v0

    .line 9039
    :goto_6
    return-object v0

    .line 9036
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 9037
    invoke-static {}, Lrx/internal/operators/OperatorTakeLastOne;->instance()Lrx/internal/operators/OperatorTakeLastOne;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_6

    .line 9039
    :cond_13
    new-instance v0, Lrx/internal/operators/OperatorTakeLast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeLast;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_6
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9063
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 12
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9093
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorTakeLastTimed;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9115
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9141
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTakeLastTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9161
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 7
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9186
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 8
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9214
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9236
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9262
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TE;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9284
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntil;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9327
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "stopPredicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeUntilPredicate;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9305
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeWhile;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "windowDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9354
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "skipDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9384
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorThrottleFirst;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorThrottleFirst;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9413
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9445
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9483
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9525
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9542
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->timeInterval(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9561
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeInterval;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeInterval;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9711
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9735
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9762
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorTimeout;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
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
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9788
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9592
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9627
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-nez p2, :cond_a

    .line 9628
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timeoutSelector is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9630
    :cond_a
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    .line 9658
    invoke-virtual {p0, v0, p1, v0}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9688
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9805
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->timestamp(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9825
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimestamp;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimestamp;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/observables/BlockingObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/BlockingObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9839
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/observables/BlockingObservable;->from(Lrx/Observable;)Lrx/observables/BlockingObservable;

    move-result-object v0

    return-object v0
.end method

.method public toCompletable()Lrx/Completable;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9868
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorToObservableList;->instance()Lrx/internal/operators/OperatorToObservableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9892
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 9919
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 9945
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;TV;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9967
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9992
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 10019
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 10048
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public toSingle()Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeSingle;->create(Lrx/Observable;)Lrx/internal/operators/OnSubscribeSingle;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final toSortedList()Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10072
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lrx/Observable;
    .registers 3
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 10123
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10095
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(Lrx/functions/Func2;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/functions/Func2;I)Lrx/Observable;
    .registers 4
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 10150
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(Lrx/functions/Func2;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

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
    .line 8739
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 8741
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v4, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v3, p0, v4}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 8742
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    .line 8759
    :goto_14
    return-object v3

    .line 8743
    :catch_15
    move-exception v0

    .line 8745
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 8748
    :try_start_19
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_27

    .line 8759
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    goto :goto_14

    .line 8749
    :catch_27
    move-exception v1

    .line 8750
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 8753
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

    .line 8755
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8757
    throw v2
.end method

.method public final unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10168
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorUnsubscribeOn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorUnsubscribeOn;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(I)Lrx/Observable;
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10245
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/Observable;->window(II)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(II)Lrx/Observable;
    .registers 6
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10274
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-gtz p1, :cond_1b

    .line 10275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10277
    :cond_1b
    if-gtz p2, :cond_36

    .line 10278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10280
    :cond_36
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 15
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10308
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .registers 17
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10371
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorWindowWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 16
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10338
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .registers 13
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10398
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;I)Lrx/Observable;
    .registers 12
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10429
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .registers 15
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10462
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .registers 12
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10491
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10545
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TTOpening;>;",
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10518
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "windowOpenings":Lrx/Observable;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "closingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/functions/Func0;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10219
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "closingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory;-><init>(Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 10193
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorWithLatestFrom;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWithLatestFrom;-><init>(Lrx/Observable;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Ljava/lang/Iterable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 10575
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZipIterable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorZipIterable;-><init>(Ljava/lang/Iterable;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 10602
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
