.class public Lcom/andrew/apollo/widgets/PlayPauseButton;
.super Landroid/widget/ImageButton;
.source "PlayPauseButton.java"

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
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/PlayPauseButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 60
    new-instance v0, Lcom/andrew/apollo/widgets/theme/HoloSelector;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 72
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->playOrPause()V

    .line 73
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->updateState()V

    .line 74
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->showCheatSheet(Landroid/view/View;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/widgets/PlayPauseButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_pause"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/andrew/apollo/widgets/PlayPauseButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_play"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
