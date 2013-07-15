.class public Lcom/andrew/apollo/widgets/RepeatButton;
.super Landroid/widget/ImageButton;
.source "RepeatButton.java"

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
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/RepeatButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 66
    new-instance v0, Lcom/andrew/apollo/widgets/theme/HoloSelector;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/RepeatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/RepeatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 78
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->cycleRepeat()V

    .line 79
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatButton;->updateRepeatState()V

    .line 80
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->showCheatSheet(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRepeatState()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_repeat_all"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_repeat_one"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_repeat"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
