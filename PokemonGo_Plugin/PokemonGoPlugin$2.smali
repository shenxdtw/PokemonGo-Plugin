.class final Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;
.super Ljava/lang/Object;
.source "PokemonGoPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccu/ant/pokemon_crackview/PokemonGoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 194
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mFloatView:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$500()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5e

    .line 195
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$600()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 196
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$700()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$800()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$900()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1000()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1100()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z
    invoke-static {v1}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$602(Z)Z

    .line 247
    :cond_36
    :goto_36
    return-void

    .line 203
    :cond_37
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$700()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$800()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$900()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1000()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1100()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->vis:Z
    invoke-static {v3}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$602(Z)Z

    goto :goto_36

    .line 210
    :cond_5e
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveUp:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$700()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_68

    .line 211
    invoke-static {v3}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->writePokeminTxt(I)V

    goto :goto_36

    .line 212
    :cond_68
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1100()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_a8

    .line 213
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 214
    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z
    invoke-static {v1}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1202(Z)Z

    .line 215
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1300()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 216
    const/4 v0, 0x0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1302(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 239
    :goto_82
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mSetting:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1100()Landroid/widget/Button;

    move-result-object v1

    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "\ud83d\udd2f\ufe0f\ufe0f"

    :goto_8e
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 218
    :cond_92
    new-instance v0, Lccu/ant/pokemon_crackview/PokemonGoPlugin$2$1;

    invoke-direct {v0, p0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin$2$1;-><init>(Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;)V

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1302(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 235
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->ocrThread:Ljava/lang/Thread;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1300()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z
    invoke-static {v3}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1202(Z)Z

    goto :goto_82

    .line 239
    :cond_a5
    const-string v0, "\u2721"

    goto :goto_8e

    .line 240
    :cond_a8
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveLeft:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$900()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_b3

    .line 241
    const/4 v0, 0x3

    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->writePokeminTxt(I)V

    goto :goto_36

    .line 242
    :cond_b3
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveDown:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$800()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_bf

    .line 243
    const/4 v0, 0x2

    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->writePokeminTxt(I)V

    goto/16 :goto_36

    .line 244
    :cond_bf
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->mMoveRight:Landroid/widget/Button;
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1000()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_36

    .line 245
    const/4 v0, 0x4

    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->writePokeminTxt(I)V

    goto/16 :goto_36
.end method
