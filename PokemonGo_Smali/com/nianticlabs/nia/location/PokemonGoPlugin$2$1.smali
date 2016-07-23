.class Lccu/ant/pokemon_crackview/PokemonGoPlugin$2$1;
.super Ljava/lang/Thread;
.source "PokemonGoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;


# direct methods
.method constructor <init>(Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;)V
    .registers 2
    .param p1, "this$0"    # Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;

    .prologue
    .line 218
    iput-object p1, p0, Lccu/ant/pokemon_crackview/PokemonGoPlugin$2$1;->this$0:Lccu/ant/pokemon_crackview/PokemonGoPlugin$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 220
    :goto_0
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->RUN_THREAD:Z
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 222
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1400()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1a

    .line 223
    const/4 v0, 0x0

    # setter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1402(I)I

    .line 229
    :goto_12
    const-wide/16 v0, 0x3e8

    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_0

    .line 230
    :catch_18
    move-exception v0

    goto :goto_0

    .line 225
    :cond_1a
    # operator++ for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1408()I

    .line 226
    # getter for: Lccu/ant/pokemon_crackview/PokemonGoPlugin;->range:I
    invoke-static {}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->access$1400()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_2a

    const/4 v0, 0x3

    :goto_26
    invoke-static {v0}, Lccu/ant/pokemon_crackview/PokemonGoPlugin;->writePokeminTxt(I)V

    goto :goto_12

    :cond_2a
    const/4 v0, 0x4

    goto :goto_26

    .line 233
    :cond_2c
    return-void
.end method
