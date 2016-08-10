.class final Lrx/internal/operators/OperatorMaterialize$Holder;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorMaterialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMaterialize",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lrx/internal/operators/OperatorMaterialize;

    invoke-direct {v0}, Lrx/internal/operators/OperatorMaterialize;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorMaterialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorMaterialize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
