.class public Lcom/andrew/apollo/widgets/VerticalScrollListener;
.super Ljava/lang/Object;
.source "VerticalScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;
    }
.end annotation


# instance fields
.field private final mHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

.field private final mPageIndex:I

.field private final mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V
    .locals 0
    .parameter "header"
    .parameter "carousel"
    .parameter "pageIndex"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

    .line 34
    iput-object p2, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 35
    iput p3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mPageIndex:I

    .line 36
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 45
    iget-object v3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v3}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->isTabCarouselIsAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, top:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 54
    if-eqz p2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget v4, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mPageIndex:I

    iget-object v5, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v5}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getAllowedVerticalScrollLength()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->moveToYCoordinate(IF)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    .line 61
    .local v2, y:F
    iget-object v3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v3}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getAllowedVerticalScrollLength()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 62
    .local v0, amtToScroll:F
    iget-object v3, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget v4, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mPageIndex:I

    invoke-virtual {v3, v4, v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->moveToYCoordinate(IF)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/widgets/VerticalScrollListener;->mHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

    invoke-interface {v0, p1, p2}, Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 73
    :cond_0
    return-void
.end method
