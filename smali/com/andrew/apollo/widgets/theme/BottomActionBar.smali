.class public Lcom/andrew/apollo/widgets/theme/BottomActionBar;
.super Landroid/widget/RelativeLayout;
.source "BottomActionBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v1, "bottom_action_bar"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/BottomActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/BottomActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    .local v0, bottomActionBar:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/andrew/apollo/widgets/theme/HoloSelector;

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/theme/BottomActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/andrew/apollo/widgets/theme/HoloSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method
