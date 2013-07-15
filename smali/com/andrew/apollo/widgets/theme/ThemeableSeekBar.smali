.class public Lcom/andrew/apollo/widgets/theme/ThemeableSeekBar;
.super Landroid/widget/SeekBar;
.source "ThemeableSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v1, "audio_player_seekbar"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/ThemeableSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method
