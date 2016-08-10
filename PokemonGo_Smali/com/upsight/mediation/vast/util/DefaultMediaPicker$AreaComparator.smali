.class Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/vast/util/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/upsight/mediation/vast/model/VASTMediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/util/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/upsight/mediation/vast/util/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;Lcom/upsight/mediation/vast/util/DefaultMediaPicker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/mediation/vast/util/DefaultMediaPicker;
    .param p2, "x1"    # Lcom/upsight/mediation/vast/util/DefaultMediaPicker$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/upsight/mediation/vast/model/VASTMediaFile;Lcom/upsight/mediation/vast/model/VASTMediaFile;)I
    .registers 9
    .param p1, "obj1"    # Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .param p2, "obj2"    # Lcom/upsight/mediation/vast/model/VASTMediaFile;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v0, v4, v5

    .line 151
    .local v0, "obj1Area":I
    invoke-virtual {p2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v2, v4, v5

    .line 154
    .local v2, "obj2Area":I
    iget-object v4, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/upsight/mediation/vast/util/DefaultMediaPicker;

    # getter for: Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceArea:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->access$100(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 155
    .local v1, "obj1Diff":I
    iget-object v4, p0, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/upsight/mediation/vast/util/DefaultMediaPicker;

    # getter for: Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->deviceArea:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;->access$100(Lcom/upsight/mediation/vast/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 159
    .local v3, "obj2Diff":I
    if-ge v1, v3, :cond_40

    .line 160
    const/4 v4, -0x1

    .line 164
    :goto_3f
    return v4

    .line 161
    :cond_40
    if-le v1, v3, :cond_44

    .line 162
    const/4 v4, 0x1

    goto :goto_3f

    .line 164
    :cond_44
    const/4 v4, 0x0

    goto :goto_3f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 145
    check-cast p1, Lcom/upsight/mediation/vast/model/VASTMediaFile;

    check-cast p2, Lcom/upsight/mediation/vast/model/VASTMediaFile;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker$AreaComparator;->compare(Lcom/upsight/mediation/vast/model/VASTMediaFile;Lcom/upsight/mediation/vast/model/VASTMediaFile;)I

    move-result v0

    return v0
.end method
