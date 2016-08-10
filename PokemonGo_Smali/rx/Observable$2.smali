.class Lrx/Observable$2;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$operator:Lrx/Observable$Operator;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Observable$Operator;)V
    .registers 3

    .prologue
    .line 225
    .local p0, "this":Lrx/Observable$2;, "Lrx/Observable.2;"
    iput-object p1, p0, Lrx/Observable$2;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$2;->val$operator:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 225
    .local p0, "this":Lrx/Observable$2;, "Lrx/Observable.2;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lrx/Observable$2;, "Lrx/Observable.2;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    sget-object v2, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v3, p0, Lrx/Observable$2;->val$operator:Lrx/Observable$Operator;

    invoke-virtual {v2, v3}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_21

    .line 232
    .local v1, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_e
    invoke-virtual {v1}, Lrx/Subscriber;->onStart()V

    .line 233
    iget-object v2, p0, Lrx/Observable$2;->this$0:Lrx/Observable;

    iget-object v2, v2, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_19

    .line 247
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_18
    return-void

    .line 234
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_19
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1a
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 239
    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_18

    .line 241
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_21
    move-exception v0

    .line 242
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
