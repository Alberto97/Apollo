.class public Lcom/andrew/apollo/widgets/ShuffleButton;
.super Landroid/widget/ImageButton;
.source "ShuffleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mResources:Lcom/andrew/apollo/utils/ThemeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ShuffleButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 59
    new-instance v0, Lcom/andrew/apollo/widgets/theme/HoloSelector;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 71
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->cycleShuffle()V

    .line 72
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->updateShuffleState()V

    .line 73
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->showCheatSheet(Landroid/view/View;)V

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateShuffleState()V
    .locals 2

    .prologue
    const v1, 0x7f090048

    .line 92
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ShuffleButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_shuffle_all"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ShuffleButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_shuffle_all"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ShuffleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ShuffleButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_shuffle"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
