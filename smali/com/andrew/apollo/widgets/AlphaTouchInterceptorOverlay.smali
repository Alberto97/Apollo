.class public Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;
.super Landroid/widget/FrameLayout;
.source "AlphaTouchInterceptorOverlay.java"


# instance fields
.field private mAlpha:F

.field private mAlphaLayer:Landroid/view/View;

.field private final mInterceptorLayer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlpha:F

    .line 46
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->addView(Landroid/view/View;)V

    .line 50
    iput-object p0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    .line 51
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "input"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 104
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 109
    .end local p1
    :goto_0
    return p1

    .line 106
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 107
    goto :goto_0

    :cond_1
    move p1, p0

    .line 109
    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v0, v1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public setAlphaLayer(Landroid/view/View;)V
    .locals 1
    .parameter "alphaLayer"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 70
    .end local p1
    :goto_0
    return-void

    .line 64
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 68
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .end local p1
    :cond_2
    iput-object p1, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    .line 69
    iget v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlpha:F

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setAlphaLayerValue(F)V

    goto :goto_0
.end method

.method public setAlphaLayerValue(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 74
    iput p1, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlpha:F

    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    iget v1, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mAlpha:F

    invoke-static {v0, v1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 78
    :cond_0
    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 88
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
