.class Lrx/internal/operators/OperatorToMap$1;
.super Lrx/Subscriber;
.source "OperatorToMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToMap;

.field final synthetic val$fLocalMap:Ljava/util/Map;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToMap;Lrx/Subscriber;Ljava/util/Map;Lrx/Subscriber;)V
    .registers 6

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorToMap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object p4, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 96
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 128
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 129
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 122
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iget-object v3, v3, Lrx/internal/operators/OperatorToMap;->keySelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iget-object v3, v3, Lrx/internal/operators/OperatorToMap;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_16

    move-result-object v2

    .line 116
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_15
    return-void

    .line 111
    :catch_16
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {v0, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_15
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToMap$1;->request(J)V

    .line 101
    return-void
.end method
