.class public final Lrx/exceptions/UnsubscribeFailedException;
.super Ljava/lang/RuntimeException;
.source "UnsubscribeFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x3fc38e1f743aa0eeL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    if-eqz p2, :cond_6

    .end local p2    # "throwable":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void

    .line 47
    .restart local p2    # "throwable":Ljava/lang/Throwable;
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    .end local p2    # "throwable":Ljava/lang/Throwable;
    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    if-eqz p1, :cond_6

    .end local p1    # "throwable":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void

    .line 34
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2
.end method
