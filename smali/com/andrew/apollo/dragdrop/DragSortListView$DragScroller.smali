.class Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/dragdrop/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    .line 1900
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1992
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mX:I
    invoke-static {v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$1300(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I
    invoke-static {v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$400(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v2

    #calls: Lcom/andrew/apollo/dragdrop/DragSortListView;->dragView(II)V
    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$1400(Lcom/andrew/apollo/dragdrop/DragSortListView;II)V

    .line 1995
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2002
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1929
    iget-boolean v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v8, :cond_0

    .line 1930
    iput-boolean v11, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    .line 1984
    :goto_0
    return-void

    .line 1934
    :cond_0
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1935
    .local v1, first:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1936
    .local v2, last:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v0

    .line 1937
    .local v0, count:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingTop()I

    move-result v6

    .line 1938
    .local v6, padTop:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget-object v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1940
    .local v3, listHeight:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I
    invoke-static {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$400(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I
    invoke-static {v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$500(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v9

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$600(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1941
    .local v5, minY:I
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I
    invoke-static {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$400(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I
    invoke-static {v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$500(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v9

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$600(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1943
    .local v4, maxY:I
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->scrollDir:I

    if-nez v8, :cond_3

    .line 1944
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8, v11}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1945
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_1

    .line 1946
    iput-boolean v11, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 1949
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 1950
    iput-boolean v11, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 1954
    :cond_2
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;
    invoke-static {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$900(Lcom/andrew/apollo/dragdrop/DragSortListView;)Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

    move-result-object v8

    iget-object v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartYF:F
    invoke-static {v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$700(Lcom/andrew/apollo/dragdrop/DragSortListView;)F

    move-result v9

    int-to-float v10, v4

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollHeight:F
    invoke-static {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$800(Lcom/andrew/apollo/dragdrop/DragSortListView;)F

    move-result v10

    div-float/2addr v9, v10

    iget-wide v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v8, v9, v10, v11}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v8

    iput v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 1971
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    iput v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->dt:F

    .line 1976
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->dy:I

    .line 1977
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->dy:I

    invoke-static {v8, v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$1212(Lcom/andrew/apollo/dragdrop/DragSortListView;I)I

    .line 1979
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->requestLayout()V

    .line 1981
    iget-wide v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    long-to-float v8, v8

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->dt:F

    add-float/2addr v8, v9

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    .line 1983
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v8, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1957
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    sub-int v9, v2, v1

    invoke-virtual {v8, v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1958
    .restart local v7       #v:Landroid/view/View;
    if-nez v7, :cond_4

    .line 1959
    iput-boolean v11, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 1962
    :cond_4
    add-int/lit8 v8, v0, -0x1

    if-ne v2, v8, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v9, v3, v6

    if-gt v8, v9, :cond_5

    .line 1963
    iput-boolean v11, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 1967
    :cond_5
    iget-object v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;
    invoke-static {v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$900(Lcom/andrew/apollo/dragdrop/DragSortListView;)Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

    move-result-object v8

    int-to-float v9, v5

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartYF:F
    invoke-static {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$1000(Lcom/andrew/apollo/dragdrop/DragSortListView;)F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollHeight:F
    invoke-static {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$1100(Lcom/andrew/apollo/dragdrop/DragSortListView;)F

    move-result v10

    div-float/2addr v9, v10

    iget-wide v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v8, v9, v10, v11}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v8

    neg-float v8, v8

    iput v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrollSpeed:F

    goto :goto_1
.end method

.method public startScrolling(I)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 1903
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mAbort:Z

    .line 1906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    .line 1907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->tStart:J

    .line 1908
    iget-wide v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mPrevTime:J

    .line 1909
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->scrollDir:I

    .line 1910
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1912
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .parameter "now"

    .prologue
    .line 1915
    if-eqz p1, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mScrolling:Z

    .line 1922
    :goto_0
    return-void

    .line 1919
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
