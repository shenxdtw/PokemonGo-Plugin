.class public final Ldagger/internal/MembersInjectors;
.super Ljava/lang/Object;
.source "MembersInjectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delegatingTo(Ldagger/MembersInjector;)Ldagger/MembersInjector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/MembersInjector",
            "<-TT;>;)",
            "Ldagger/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "delegate":Ldagger/MembersInjector;, "Ldagger/MembersInjector<-TT;>;"
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/MembersInjector;

    return-object v0
.end method

.method public static injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/MembersInjector",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "membersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 37
    return-object p1
.end method

.method public static noOp()Ldagger/MembersInjector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method
