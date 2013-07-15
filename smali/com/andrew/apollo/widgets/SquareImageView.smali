.class public Lcom/andrew/apollo/widgets/SquareImageView;
.super Lcom/andrew/apollo/widgets/LayoutSuppressingImageView;
.source "SquareImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/widgets/LayoutSuppressingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/andrew/apollo/widgets/LayoutSuppressingImageView;->onMeasure(II)V

    .line 41
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/SquareImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/SquareImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    .local v0, mSize:I
    invoke-virtual {p0, v0, v0}, Lcom/andrew/apollo/widgets/SquareImageView;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method
