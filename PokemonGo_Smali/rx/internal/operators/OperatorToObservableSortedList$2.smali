.class Lrx/internal/operators/OperatorToObservableSortedList$2;
.super Lrx/Subscriber;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableSortedList;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableSortedList;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 6

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iget v1, v1, Lrx/internal/operators/OperatorToObservableSortedList;->initialCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v2, :cond_18

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    .line 73
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 74
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 77
    :try_start_c
    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iget-object v2, v2, Lrx/internal/operators/OperatorToObservableSortedList;->sortFunction:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_19

    .line 82
    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 84
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_18
    :goto_18
    return-void

    .line 78
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_19
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_18
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v0, :cond_9

    .line 94
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$2;->request(J)V

    .line 67
    return-void
.end method
