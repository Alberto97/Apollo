.class public Lcom/andrew/apollo/widgets/SquareView;
.super Landroid/view/ViewGroup;
.source "SquareView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "u"
    .parameter "r"
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/widgets/SquareView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/widgets/SquareView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, mChildren:Landroid/view/View;
    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/andrew/apollo/widgets/SquareView;->resolveSize(II)I

    move-result v1

    .line 43
    .local v1, mWidth:I
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 44
    invoke-virtual {p0, v1, v1}, Lcom/andrew/apollo/widgets/SquareView;->setMeasuredDimension(II)V

    .line 45
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/SquareView;->forceLayout()V

    .line 62
    return-void
.end method
