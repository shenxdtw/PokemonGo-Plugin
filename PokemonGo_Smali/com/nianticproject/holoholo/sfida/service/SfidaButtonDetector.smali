.class public Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;
.super Ljava/lang/Object;
.source "SfidaButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;,
        Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;
    }
.end annotation


# static fields
.field private static final NOTIFY_BIT_SIZE:I = 0xa

.field private static final SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field count:I

.field private onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

.field private preButtonStatus:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->preButtonStatus:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->count:I

    .line 31
    return-void
.end method

.method private createTestCase()[Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    const/16 v1, 0xa

    new-array v0, v1, [Z

    .line 134
    .local v0, "result":[Z
    iget v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->count:I

    if-nez v1, :cond_2f

    .line 135
    aput-boolean v2, v0, v2

    .line 136
    aput-boolean v2, v0, v3

    .line 137
    aput-boolean v2, v0, v4

    .line 138
    aput-boolean v2, v0, v5

    .line 139
    aput-boolean v2, v0, v6

    .line 140
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 141
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 142
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 143
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 144
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 159
    :cond_28
    :goto_28
    iget v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->count:I

    .line 161
    return-object v0

    .line 145
    :cond_2f
    iget v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->count:I

    if-ne v1, v3, :cond_28

    .line 146
    aput-boolean v2, v0, v2

    .line 147
    aput-boolean v3, v0, v3

    .line 148
    aput-boolean v2, v0, v4

    .line 149
    aput-boolean v3, v0, v5

    .line 150
    aput-boolean v2, v0, v6

    .line 151
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 152
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 153
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 154
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 155
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_28
.end method

.method private getButtonStatus([ZZ)Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;
    .registers 9
    .param p1, "states"    # [Z
    .param p2, "isOnBackground"    # Z

    .prologue
    .line 84
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;-><init>()V

    .line 86
    .local v0, "buttonStatus":Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;
    iget-object v3, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->preButtonStatus:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    iget-object v3, v3, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->value:[Z

    const/16 v4, 0x9

    aget-boolean v1, v3, v4

    .line 87
    .local v1, "isPreValuePressed":Z
    sget-object v3, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPreValuePressed start with : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    array-length v4, p1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v4, :cond_63

    aget-boolean v2, p1, v3

    .line 91
    .local v2, "isPressed":Z
    if-eqz v2, :cond_42

    .line 92
    if-nez v1, :cond_3e

    .line 93
    iget v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->pressedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->pressedCount:I

    .line 94
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    if-eqz v5, :cond_3e

    .line 95
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    invoke-interface {v5}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;->onPress()V

    .line 113
    :cond_3e
    :goto_3e
    move v1, v2

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 99
    :cond_42
    if-eqz v1, :cond_3e

    .line 102
    iget v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->clickedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->clickedCount:I

    .line 103
    iget v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->releasedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->releasedCount:I

    .line 105
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    if-eqz v5, :cond_59

    .line 106
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    invoke-interface {v5}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;->onClick()V

    .line 108
    :cond_59
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    if-eqz v5, :cond_3e

    .line 109
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    invoke-interface {v5}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;->onRelease()V

    goto :goto_3e

    .line 115
    .end local v2    # "isPressed":Z
    :cond_63
    iput-object p1, v0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->value:[Z

    .line 116
    return-object v0
.end method


# virtual methods
.method public release()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->setOnclickListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 39
    return-void
.end method

.method public setButtonStatus([BZ)V
    .registers 14
    .param p1, "buttonValue"    # [B
    .param p2, "isOnBackground"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 57
    if-eqz p1, :cond_8

    array-length v5, p1

    if-eq v5, v10, :cond_9

    .line 79
    :cond_8
    :goto_8
    return-void

    .line 61
    :cond_9
    const/16 v5, 0xa

    new-array v3, v5, [Z

    .line 63
    .local v3, "result":[Z
    aget-byte v5, p1, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 64
    .local v4, "value":Ljava/lang/Integer;
    const/4 v0, 0x1

    .line 65
    .local v0, "bitmask":I
    const/4 v2, 0x0

    .local v2, "count":B
    :goto_15
    if-ge v2, v10, :cond_2b

    .line 66
    rsub-int/lit8 v8, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int v9, v0, v2

    and-int/2addr v5, v9

    if-eqz v5, :cond_29

    move v5, v6

    :goto_23
    aput-boolean v5, v3, v8

    .line 65
    add-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    goto :goto_15

    :cond_29
    move v5, v7

    .line 66
    goto :goto_23

    .line 68
    :cond_2b
    aget-byte v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 69
    const/4 v2, 0x0

    :goto_32
    const/16 v5, 0x8

    if-ge v2, v5, :cond_4a

    .line 70
    rsub-int/lit8 v8, v2, 0x9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int v9, v0, v2

    and-int/2addr v5, v9

    if-eqz v5, :cond_48

    move v5, v6

    :goto_42
    aput-boolean v5, v3, v8

    .line 69
    add-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    goto :goto_32

    :cond_48
    move v5, v7

    .line 70
    goto :goto_42

    .line 73
    :cond_4a
    invoke-direct {p0, v3, p2}, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->getButtonStatus([ZZ)Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    move-result-object v1

    .line 78
    .local v1, "buttonStatus":Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;
    iput-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->preButtonStatus:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;

    goto :goto_8
.end method

.method public setOnclickListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V
    .registers 2
    .param p1, "onClickListener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;->onClickListener:Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;

    .line 35
    return-void
.end method
