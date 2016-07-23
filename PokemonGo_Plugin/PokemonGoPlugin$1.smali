.class final Lccu/ant/pokemon_crackview/PokemonGoPlugin$1;
.super Ljava/lang/Object;
.source "PokemonGoPlugin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccu/ant/pokemon_crackview/PokemonGoPlugin;->showTool(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 115
    :goto_9
    :pswitch_9
    return v4

    .line 95
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->x:F
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$002(F)F

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->y:F
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$102(F)F

    goto :goto_9

    .line 106
    :pswitch_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->x:F
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$000()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$202(I)I

    .line 107
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$200()I

    move-result v0

    if-gez v0, :cond_2f

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I
    invoke-static {v4}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$202(I)I

    .line 108
    :cond_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->y:F
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$100()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$302(I)I

    .line 109
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$300()I

    move-result v0

    if-gez v0, :cond_45

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I
    invoke-static {v4}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$302(I)I

    .line 110
    :cond_45
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->layout_main:Landroid/widget/LinearLayout;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$400()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mx:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$200()I

    move-result v2

    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->my:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$300()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 92
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_19
    .end packed-switch
.end method
