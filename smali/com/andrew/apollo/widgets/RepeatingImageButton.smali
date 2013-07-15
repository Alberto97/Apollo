.class public Lcom/andrew/apollo/widgets/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private final mRepeater:Ljava/lang/Runnable;

.field private final mResources:Lcom/andrew/apollo/utils/ThemeUtils;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance v0, Lcom/andrew/apollo/widgets/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/widgets/RepeatingImageButton$1;-><init>(Lcom/andrew/apollo/widgets/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 69
    new-instance v0, Lcom/andrew/apollo/widgets/theme/HoloSelector;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setLongClickable(Z)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->updateState()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/widgets/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "shouldRepeat"

    .prologue
    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 185
    .local v0, now:J
    iget-object v2, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 188
    :cond_0
    return-void

    .line 186
    :cond_1
    iget v2, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->previous(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->next()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f0d0044
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 145
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 156
    sparse-switch p1, :sswitch_data_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 160
    :sswitch_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    iget-wide v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->doRepeat(Z)V

    .line 163
    iput-wide v2, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    iget-wide v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v2}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->doRepeat(Z)V

    .line 127
    iput-wide v3, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    if-nez v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->showCheatSheet(Landroid/view/View;)V

    .line 111
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mStartTime:J

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeatCount:I

    .line 113
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    .line 101
    return-void
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_next"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/andrew/apollo/widgets/RepeatingImageButton;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v1, "btn_playback_previous"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x7f0d0044
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
