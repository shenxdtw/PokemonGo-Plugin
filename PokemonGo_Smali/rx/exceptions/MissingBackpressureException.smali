.class public Lrx/exceptions/MissingBackpressureException;
.super Ljava/lang/Exception;
.source "MissingBackpressureException.java"


# static fields
.field private static final serialVersionUID:J = 0x64a044776671d702L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
