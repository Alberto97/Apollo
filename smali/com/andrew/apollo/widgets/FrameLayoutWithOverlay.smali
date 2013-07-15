.class public Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithOverlay.java"


# instance fields
.field private final mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    .line 39
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->bringToFront()V

    .line 50
    return-void
.end method

.method protected setAlphaLayer(Landroid/view/View;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setAlphaLayer(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setAlphaLayerValue(F)V

    .line 64
    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setOverlayClickable(Z)V

    .line 74
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->mOverlay:Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
