.class public Lcom/andrew/apollo/dragdrop/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$DragListener;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;,
        Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private final mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private final mController:Lcom/andrew/apollo/dragdrop/DragSortController;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DragListener;

.field private final mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private final mFloatAlpha:F

.field private final mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewLeft:I

.field private mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewTop:I

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastY:I

.field private mMaxScrollSpeed:F

.field private final mObserver:Landroid/database/DataSetObserver;

.field private mRemoveListener:Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

.field private mScrollY:I

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private final mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 381
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 81
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatAlpha:F

    .line 83
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAnimate:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragEnabled:Z

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mWidthMeasureSpec:I

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 204
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollStartFrac:F

    .line 211
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollStartFrac:F

    .line 238
    const v0, 0x3e99999a

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mMaxScrollSpeed:F

    .line 245
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortListView$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView$1;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastCallWasIntercept:Z

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    .line 342
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideRegionFrac:F

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mTrackDragSort:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mBlockLayoutRequests:Z

    .line 382
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    .line 384
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    .line 386
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideRegionFrac:F

    .line 388
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideRegionFrac:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAnimate:Z

    .line 390
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDragScrollStart(F)V

    .line 392
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortController;

    const v1, 0x7f0d005c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/andrew/apollo/dragdrop/DragSortController;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;III)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    .line 394
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortController;->setRemoveEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortController;->setSortEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortController;->setBackgroundColor(I)V

    .line 400
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    .line 401
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    .line 404
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 406
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 409
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortListView$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView$2;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 432
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/andrew/apollo/dragdrop/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/dragdrop/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/andrew/apollo/dragdrop/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$1100(Lcom/andrew/apollo/dragdrop/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$1212(Lcom/andrew/apollo/dragdrop/DragSortListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/andrew/apollo/dragdrop/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/andrew/apollo/dragdrop/DragSortListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->dragView(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/andrew/apollo/dragdrop/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/andrew/apollo/dragdrop/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$500(Lcom/andrew/apollo/dragdrop/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$600(Lcom/andrew/apollo/dragdrop/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$700(Lcom/andrew/apollo/dragdrop/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$800(Lcom/andrew/apollo/dragdrop/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$900(Lcom/andrew/apollo/dragdrop/DragSortListView;)Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1253
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1254
    .local v2, first:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1256
    .local v4, last:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1257
    .local v0, begin:I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1259
    .local v1, end:I
    move v3, v0

    .local v3, i:I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1260
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1261
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1262
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1259
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1265
    .end local v5           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 11
    .parameter "position"
    .parameter "v"
    .parameter "needsMeasure"

    .prologue
    .line 1269
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1270
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1271
    .local v5, oldHeight:I
    move v0, v5

    .line 1273
    .local v0, height:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getDividerHeight()I

    .line 1275
    iget-boolean v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAnimate:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_5

    const/4 v1, 0x1

    .line 1276
    .local v1, isSliding:Z
    :goto_0
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    sub-int v4, v9, v10

    .line 1277
    .local v4, maxNonSrcBlankHeight:I
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1279
    .local v7, slideHeight:I
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_9

    .line 1280
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    iget v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-ne v9, v10, :cond_7

    .line 1281
    if-eqz v1, :cond_6

    .line 1282
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    add-int v0, v7, v9

    .line 1316
    :goto_1
    if-eq v0, v5, :cond_0

    .line 1317
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1319
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    :cond_0
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-eq p1, v9, :cond_1

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    .line 1325
    :cond_1
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ge p1, v9, :cond_f

    move-object v9, p2

    .line 1326
    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v10, 0x50

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1334
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 1335
    .local v6, oldVis:I
    const/4 v8, 0x0

    .line 1337
    .local v8, vis:I
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    iget-object v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v9, :cond_3

    .line 1338
    const/4 v8, 0x4

    .line 1341
    :cond_3
    if-eq v8, v6, :cond_4

    .line 1342
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    :cond_4
    return-void

    .line 1275
    .end local v1           #isSliding:Z
    .end local v4           #maxNonSrcBlankHeight:I
    .end local v6           #oldVis:I
    .end local v7           #slideHeight:I
    .end local v8           #vis:I
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1284
    .restart local v1       #isSliding:Z
    .restart local v4       #maxNonSrcBlankHeight:I
    .restart local v7       #slideHeight:I
    :cond_6
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    goto :goto_1

    .line 1286
    :cond_7
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    iget v10, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne v9, v10, :cond_8

    .line 1288
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v9, v7

    goto :goto_1

    .line 1290
    :cond_8
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    goto :goto_1

    .line 1292
    :cond_9
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-eq p1, v9, :cond_a

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_e

    .line 1295
    :cond_a
    new-instance v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 1296
    .local v2, itemHeights:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    if-eqz p3, :cond_b

    .line 1297
    invoke-direct {p0, p1, p2, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->measureItemAndGetHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 1302
    :goto_3
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-ne p1, v9, :cond_d

    .line 1303
    if-eqz v1, :cond_c

    .line 1304
    iget v9, v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    add-int v0, v9, v7

    goto :goto_1

    .line 1299
    :cond_b
    invoke-direct {p0, p1, p2, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    goto :goto_3

    .line 1306
    :cond_c
    iget v9, v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    add-int v0, v9, v4

    goto :goto_1

    .line 1310
    :cond_d
    iget v9, v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    add-int/2addr v9, v4

    sub-int v0, v9, v7

    goto :goto_1

    .line 1313
    .end local v2           #itemHeights:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    :cond_e
    const/4 v0, -0x2

    goto :goto_1

    .line 1327
    :cond_f
    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_2

    move-object v9, p2

    .line 1328
    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_2
.end method

.method private continueDrag(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1141
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->dragView(II)V

    .line 1147
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->requestLayout()V

    .line 1149
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1150
    .local v2, minY:I
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1153
    .local v1, maxY:I
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1155
    .local v0, currentScrollDir:I
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1159
    if-eq v0, v6, :cond_0

    .line 1161
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1165
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1184
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1170
    if-eq v0, v6, :cond_3

    .line 1172
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1176
    :cond_3
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1177
    :cond_4
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private doActionUpOrCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1031
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    .line 1032
    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    .line 1033
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    .line 1034
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    .line 1035
    return-void
.end method

.method private doDragScroll(II)V
    .locals 16
    .parameter "oldFirstExpPos"
    .parameter "oldSecondExpPos"

    .prologue
    .line 1357
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    if-nez v14, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1361
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingTop()I

    move-result v12

    .line 1362
    .local v12, padTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeight()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingBottom()I

    move-result v15

    sub-int v5, v14, v15

    .line 1363
    .local v5, listHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1364
    .local v1, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1368
    .local v4, last:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    if-ltz v14, :cond_3

    .line 1369
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    .line 1370
    move v11, v1

    .line 1376
    .local v11, movePos:I
    :goto_1
    sub-int v14, v11, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1377
    .local v10, moveItem:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    add-int v13, v14, v15

    .line 1379
    .local v13, top:I
    if-nez v11, :cond_1

    if-le v13, v12, :cond_1

    .line 1380
    move v13, v12

    .line 1383
    :cond_1
    new-instance v3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 1384
    .local v3, itemHeightsBefore:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 1385
    iget v9, v3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    .line 1386
    .local v9, moveHeightBefore:I
    iget v14, v3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int v7, v9, v14

    .line 1388
    .local v7, moveBlankBefore:I
    new-instance v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 1389
    .local v2, itemHeightsAfter:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->measureItemAndGetHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 1390
    iget v8, v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    .line 1391
    .local v8, moveHeightAfter:I
    iget v14, v2, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int v6, v8, v14

    .line 1393
    .local v6, moveBlankAfter:I
    move/from16 v0, p1

    if-gt v11, v0, :cond_4

    .line 1394
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-le v11, v14, :cond_2

    .line 1395
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v14, v6

    add-int/2addr v13, v14

    .line 1413
    :cond_2
    :goto_2
    sub-int v14, v13, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setSelectionFromTop(II)V

    .line 1415
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    goto/16 :goto_0

    .line 1372
    .end local v2           #itemHeightsAfter:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    .end local v3           #itemHeightsBefore:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    .end local v6           #moveBlankAfter:I
    .end local v7           #moveBlankBefore:I
    .end local v8           #moveHeightAfter:I
    .end local v9           #moveHeightBefore:I
    .end local v10           #moveItem:Landroid/view/View;
    .end local v11           #movePos:I
    .end local v13           #top:I
    :cond_3
    neg-int v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    .line 1373
    move v11, v4

    .restart local v11       #movePos:I
    goto :goto_1

    .line 1397
    .restart local v2       #itemHeightsAfter:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    .restart local v3       #itemHeightsBefore:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    .restart local v6       #moveBlankAfter:I
    .restart local v7       #moveBlankBefore:I
    .restart local v8       #moveHeightAfter:I
    .restart local v9       #moveHeightBefore:I
    .restart local v10       #moveItem:Landroid/view/View;
    .restart local v13       #top:I
    :cond_4
    move/from16 v0, p2

    if-ne v11, v0, :cond_7

    .line 1398
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-gt v11, v14, :cond_5

    .line 1399
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int v14, v7, v14

    add-int/2addr v13, v14

    goto :goto_2

    .line 1400
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne v11, v14, :cond_6

    .line 1401
    sub-int v14, v9, v8

    add-int/2addr v13, v14

    goto :goto_2

    .line 1403
    :cond_6
    add-int/2addr v13, v7

    goto :goto_2

    .line 1406
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-gt v11, v14, :cond_8

    .line 1407
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v13, v14

    goto :goto_2

    .line 1408
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne v11, v14, :cond_2

    .line 1409
    sub-int/2addr v13, v6

    goto :goto_2
.end method

.method private dragView(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaX:I

    sub-int v2, p1, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1672
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaY:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1674
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1677
    .local v0, touch:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    if-eqz v1, :cond_0

    .line 1678
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    invoke-interface {v1, v2, v3, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->updateFloatView(II)V

    .line 1685
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .parameter "expPosition"
    .parameter "canvas"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 534
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 536
    .local v3, dividerHeight:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 538
    .local v4, expItem:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 540
    .local v5, l:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 544
    .local v6, r:I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 546
    .local v1, childHeight:I
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 547
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 548
    .local v7, t:I
    add-int v0, v7, v3

    .line 554
    .local v0, b:I
    :goto_0
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 555
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    .end local v0           #b:I
    .end local v1           #childHeight:I
    .end local v4           #expItem:Landroid/view/ViewGroup;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #t:I
    :cond_0
    return-void

    .line 550
    .restart local v1       #childHeight:I
    .restart local v4       #expItem:Landroid/view/ViewGroup;
    .restart local v5       #l:I
    .restart local v6       #r:I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 551
    .restart local v0       #b:I
    sub-int v7, v0, v3

    .restart local v7       #t:I
    goto :goto_0
.end method

.method private dropFloatView(Z)V
    .locals 8
    .parameter "removeSrcItem"

    .prologue
    const/4 v7, -0x1

    .line 1212
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragScroller:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1214
    if-eqz p1, :cond_1

    .line 1215
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mRemoveListener:Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;

    if-eqz v4, :cond_0

    .line 1216
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mRemoveListener:Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;->remove(I)V

    .line 1240
    :cond_0
    :goto_0
    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    .line 1241
    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 1242
    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 1243
    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    .line 1245
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->removeFloatView()V

    .line 1250
    return-void

    .line 1219
    :cond_1
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDropListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1220
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 1221
    .local v1, numHeaders:I
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDropListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    sub-int/2addr v6, v1

    invoke-interface {v4, v5, v6}, Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;->drop(II)V

    .line 1226
    .end local v1           #numHeaders:I
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1227
    .local v0, firstPos:I
    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ge v4, v0, :cond_0

    .line 1230
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1231
    .local v3, v:Landroid/view/View;
    const/4 v2, 0x0

    .line 1232
    .local v2, top:I
    if-eqz v3, :cond_3

    .line 1233
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1236
    :cond_3
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private getItemHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V
    .locals 4
    .parameter "position"
    .parameter "item"
    .parameter "heights"

    .prologue
    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 656
    .local v0, isHeadFoot:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    .line 658
    if-eqz v0, :cond_2

    .line 659
    iget v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    iput v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    .line 665
    .end local p2
    :goto_1
    return-void

    .end local v0           #isHeadFoot:Z
    .restart local p2
    :cond_1
    move v0, v1

    .line 653
    goto :goto_0

    .line 660
    .restart local v0       #isHeadFoot:Z
    :cond_2
    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v2, :cond_3

    .line 661
    iput v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_1

    .line 663
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_1
.end method

.method private getItemHeights(ILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V
    .locals 8
    .parameter "position"
    .parameter "heights"

    .prologue
    const/4 v7, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 679
    .local v1, first:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 681
    .local v2, last:I
    if-lt p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    .line 682
    sub-int v6, p1, v1

    invoke-virtual {p0, v6}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, p1, v6, p2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 711
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 687
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 690
    .local v3, type:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    .line 691
    .local v4, typeCount:I
    iget-object v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v6, v6

    if-eq v4, v6, :cond_1

    .line 692
    new-array v6, v4, [Landroid/view/View;

    iput-object v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 696
    :cond_1
    if-ltz v3, :cond_3

    .line 697
    iget-object v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v6, v6, v3

    if-nez v6, :cond_2

    .line 698
    invoke-interface {v0, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 699
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v5, v6, v3

    .line 708
    :goto_1
    invoke-direct {p0, p1, v5, p2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->measureItemAndGetHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    goto :goto_0

    .line 701
    .end local v5           #v:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .restart local v5       #v:Landroid/view/View;
    goto :goto_1

    .line 705
    .end local v5           #v:Landroid/view/View;
    :cond_3
    invoke-interface {v0, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .restart local v5       #v:Landroid/view/View;
    goto :goto_1
.end method

.method private getShuffleEdge(IILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)I
    .locals 11
    .parameter "position"
    .parameter "top"
    .parameter "heights"

    .prologue
    const/4 v10, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    .line 735
    .local v5, numHeaders:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 741
    .local v4, numFooters:I
    if-le p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt p1, v8, :cond_1

    :cond_0
    move v2, p2

    .line 793
    :goto_0
    return v2

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getDividerHeight()I

    move-result v1

    .line 749
    .local v1, divHeight:I
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v8, v9

    .line 751
    .local v3, maxBlankHeight:I
    if-nez p3, :cond_2

    .line 752
    new-instance p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    .end local p3
    invoke-direct {p3, p0, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 753
    .restart local p3
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 758
    :cond_2
    move v6, p2

    .line 759
    .local v6, otop:I
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-gt v8, v9, :cond_6

    .line 762
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne p1, v8, :cond_5

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-eq v8, v9, :cond_5

    .line 763
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v8, :cond_4

    .line 764
    iget v8, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    add-int/2addr v8, p2

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int v6, v8, v9

    .line 785
    :cond_3
    :goto_1
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-gt p1, v8, :cond_8

    .line 786
    new-instance v7, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    invoke-direct {v7, p0, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 787
    .local v7, tmpHeights:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v8, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 788
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v8, v1

    iget v9, v7, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v2, v6, v8

    .line 789
    .local v2, edge:I
    goto :goto_0

    .line 766
    .end local v2           #edge:I
    .end local v7           #tmpHeights:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    :cond_4
    iget v8, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    iget v9, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int v0, v8, v9

    .line 767
    .local v0, blankHeight:I
    add-int v8, p2, v0

    sub-int v6, v8, v3

    .line 768
    goto :goto_1

    .line 769
    .end local v0           #blankHeight:I
    :cond_5
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-le p1, v8, :cond_3

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-gt p1, v8, :cond_3

    .line 770
    sub-int v6, p2, v3

    goto :goto_1

    .line 776
    :cond_6
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_7

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-gt p1, v8, :cond_7

    .line 777
    add-int v6, p2, v3

    goto :goto_1

    .line 778
    :cond_7
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-ne p1, v8, :cond_3

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    if-eq v8, v9, :cond_3

    .line 779
    iget v8, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    iget v9, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int v0, v8, v9

    .line 780
    .restart local v0       #blankHeight:I
    add-int v6, p2, v0

    goto :goto_1

    .line 790
    .end local v0           #blankHeight:I
    :cond_8
    iget v8, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    sub-int/2addr v8, v1

    iget v9, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v2, v6, v8

    .restart local v2       #edge:I
    goto/16 :goto_0
.end method

.method private measureFloatView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1419
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1420
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1421
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1422
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1425
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1428
    .local v2, wspec:I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 1429
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1433
    .local v0, hspec:I
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1434
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    .line 1435
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I

    .line 1437
    .end local v0           #hspec:I
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #wspec:I
    :cond_1
    return-void

    .line 1431
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #wspec:I
    :cond_2
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #hspec:I
    goto :goto_0
.end method

.method private measureItemAndGetHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V
    .locals 10
    .parameter "position"
    .parameter "item"
    .parameter "heights"

    .prologue
    const/4 v7, 0x0

    .line 598
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 600
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    if-lt p1, v6, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v6, v8

    if-lt p1, v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 603
    .local v3, isHeadFoot:Z
    :goto_0
    if-nez v4, :cond_2

    move v1, v7

    .line 604
    .local v1, height:I
    :goto_1
    if-lez v1, :cond_7

    .line 605
    iput v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    .line 608
    if-eqz v3, :cond_3

    .line 609
    iget v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    iput v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    .line 642
    .end local p2
    :goto_2
    return-void

    .end local v1           #height:I
    .end local v3           #isHeadFoot:Z
    .restart local p2
    :cond_1
    move v3, v7

    .line 600
    goto :goto_0

    .line 603
    .restart local v3       #isHeadFoot:Z
    :cond_2
    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 610
    .restart local v1       #height:I
    :cond_3
    iget v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v6, :cond_4

    .line 611
    iput v7, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2

    .line 613
    :cond_4
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 615
    if-nez v4, :cond_5

    move v1, v7

    .line 616
    :goto_3
    if-lez v1, :cond_6

    .line 617
    iput v1, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2

    .line 615
    :cond_5
    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 619
    :cond_6
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 620
    .local v2, hspec:I
    iget v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 622
    .local v5, wspec:I
    invoke-virtual {v0, v5, v2}, Landroid/view/View;->measure(II)V

    .line 623
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2

    .line 627
    .end local v0           #child:Landroid/view/View;
    .end local v2           #hspec:I
    .end local v5           #wspec:I
    .restart local p2
    :cond_7
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 628
    .restart local v2       #hspec:I
    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getListPaddingRight()I

    move-result v9

    add-int/2addr v9, v6

    if-nez v4, :cond_8

    const/4 v6, -0x1

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 631
    .restart local v5       #wspec:I
    invoke-virtual {p2, v5, v2}, Landroid/view/View;->measure(II)V

    .line 633
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    .line 634
    if-eqz v3, :cond_9

    .line 635
    iget v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    iput v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2

    .line 628
    .end local v5           #wspec:I
    :cond_8
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    .line 636
    .restart local v5       #wspec:I
    :cond_9
    iget v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-ne p1, v6, :cond_a

    .line 637
    iput v7, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2

    .line 639
    :cond_a
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p3, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->child:I

    goto :goto_2
.end method

.method private removeFloatView()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 1693
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1695
    :cond_1
    return-void
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1039
    .local v0, action:I
    if-eqz v0, :cond_0

    .line 1040
    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I

    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastY:I

    .line 1042
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mX:I

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I

    .line 1044
    if-nez v0, :cond_1

    .line 1045
    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I

    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastY:I

    .line 1047
    :cond_1
    return-void
.end method

.method private updateFloatView(II)V
    .locals 9
    .parameter "floatX"
    .parameter "floatY"

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 1614
    .local v5, padLeft:I
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    if-le p1, v5, :cond_4

    .line 1615
    iput v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewLeft:I

    .line 1623
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 1624
    .local v4, numHeaders:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 1625
    .local v3, numFooters:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1626
    .local v1, firstPos:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1630
    .local v2, lastPos:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingTop()I

    move-result v6

    .line 1631
    .local v6, topLimit:I
    if-ge v1, v4, :cond_0

    .line 1632
    sub-int v7, v4, v1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1634
    :cond_0
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 1635
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-gt v1, v7, :cond_1

    .line 1636
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1641
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1642
    .local v0, bottomLimit:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_2

    .line 1643
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1645
    :cond_2
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_3

    .line 1646
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-lt v2, v7, :cond_3

    .line 1647
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1655
    :cond_3
    if-ge p2, v6, :cond_6

    .line 1656
    iput v6, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewTop:I

    .line 1664
    :goto_1
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewTop:I

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    .line 1665
    return-void

    .line 1616
    .end local v0           #bottomLimit:I
    .end local v1           #firstPos:I
    .end local v2           #lastPos:I
    .end local v3           #numFooters:I
    .end local v4           #numHeaders:I
    .end local v6           #topLimit:I
    :cond_4
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    if-ge p1, v5, :cond_5

    .line 1617
    iput v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewLeft:I

    goto/16 :goto_0

    .line 1619
    :cond_5
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewLeft:I

    goto/16 :goto_0

    .line 1657
    .restart local v0       #bottomLimit:I
    .restart local v1       #firstPos:I
    .restart local v2       #lastPos:I
    .restart local v3       #numFooters:I
    .restart local v4       #numHeaders:I
    .restart local v6       #topLimit:I
    :cond_6
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v7, p2

    if-le v7, v0, :cond_7

    .line 1658
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewHeight:I

    sub-int v7, v0, v7

    iput v7, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewTop:I

    goto :goto_1

    .line 1660
    :cond_7
    iput p2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewTop:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 799
    .local v9, first:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 800
    .local v23, startPos:I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 802
    .local v25, startView:Landroid/view/View;
    if-nez v25, :cond_0

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 804
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 806
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    move/from16 v28, v0

    add-int v24, v27, v28

    .line 808
    .local v24, startTop:I
    new-instance v10, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V

    .line 809
    .local v10, itemHeights:Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILandroid/view/View;Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 811
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getShuffleEdge(IILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)I

    move-result v5

    .line 812
    .local v5, edge:I
    move v13, v5

    .line 814
    .local v13, lastEdge:I
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 818
    .local v4, divHeight:I
    move/from16 v11, v23

    .line 819
    .local v11, itemPos:I
    move/from16 v12, v24

    .line 820
    .local v12, itemTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 823
    :goto_0
    if-ltz v11, :cond_1

    .line 824
    add-int/lit8 v11, v11, -0x1

    .line 825
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 828
    if-nez v11, :cond_7

    .line 829
    sub-int v27, v12, v4

    iget v0, v10, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    move/from16 v28, v0

    sub-int v5, v27, v28

    .line 869
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 870
    .local v15, numHeaders:I
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 872
    .local v14, numFooters:I
    const/16 v26, 0x0

    .line 874
    .local v26, updated:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 875
    .local v16, oldFirstExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 876
    .local v17, oldSecondExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 878
    .local v18, oldSlideFrac:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 879
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 882
    .local v7, edgeToEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 883
    move v6, v5

    .line 884
    .local v6, edgeBottom:I
    move v8, v13

    .line 891
    .local v8, edgeTop:I
    :goto_2
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 892
    .local v21, slideRgnHeight:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 893
    .local v22, slideRgnHeightF:F
    add-int v20, v8, v21

    .line 894
    .local v20, slideEdgeTop:I
    sub-int v19, v6, v21

    .line 897
    .local v19, slideEdgeBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 898
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 899
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 900
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    .line 920
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 921
    move v11, v15

    .line 922
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 923
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 930
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 932
    :cond_3
    const/16 v26, 0x1

    .line 935
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/andrew/apollo/dragdrop/DragSortListView$DragListener;->drag(II)V

    .line 940
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    .line 941
    const/16 v26, 0x1

    .line 944
    :cond_6
    return v26

    .line 834
    .end local v14           #numFooters:I
    .end local v15           #numHeaders:I
    .end local v16           #oldFirstExpPos:I
    .end local v17           #oldSecondExpPos:I
    .end local v18           #oldSlideFrac:F
    .end local v26           #updated:Z
    :cond_7
    iget v0, v10, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    move/from16 v27, v0

    add-int v27, v27, v4

    sub-int v12, v12, v27

    .line 835
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getShuffleEdge(IILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)I

    move-result v5

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 842
    move v13, v5

    goto/16 :goto_0

    .line 847
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v3

    .line 848
    .local v3, count:I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 849
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 850
    add-int v27, v12, v4

    iget v0, v10, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    move/from16 v28, v0

    add-int v5, v27, v28

    .line 851
    goto/16 :goto_1

    .line 854
    :cond_9
    iget v0, v10, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->item:I

    move/from16 v27, v0

    add-int v27, v27, v4

    add-int v12, v12, v27

    .line 855
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getItemHeights(ILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)V

    .line 856
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12, v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getShuffleEdge(IILcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;)I

    move-result v5

    .line 860
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 864
    move v13, v5

    .line 865
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 886
    .end local v3           #count:I
    .restart local v7       #edgeToEdge:I
    .restart local v14       #numFooters:I
    .restart local v15       #numHeaders:I
    .restart local v16       #oldFirstExpPos:I
    .restart local v17       #oldSecondExpPos:I
    .restart local v18       #oldSlideFrac:F
    .restart local v26       #updated:Z
    :cond_a
    move v8, v5

    .line 887
    .restart local v8       #edgeTop:I
    move v6, v13

    .restart local v6       #edgeBottom:I
    goto/16 :goto_2

    .line 903
    .restart local v19       #slideEdgeBottom:I
    .restart local v20       #slideEdgeTop:I
    .restart local v21       #slideRgnHeight:I
    .restart local v22       #slideRgnHeightF:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 904
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 905
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 907
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 908
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 909
    const/high16 v27, 0x3f00

    const/high16 v28, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 915
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 916
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 924
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 926
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 927
    move-object/from16 v0, p0

    iput v11, v0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1188
    .local v2, padTop:I
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1189
    .local v1, listHeight:I
    int-to-float v0, v1

    .line 1191
    .local v0, heightF:F
    int-to-float v3, v2

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartYF:F

    .line 1192
    int-to-float v3, v2

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartYF:F

    .line 1194
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartY:I

    .line 1195
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartY:I

    .line 1197
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollHeight:F

    .line 1198
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollHeight:F

    .line 1199
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 565
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 567
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 568
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 569
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 571
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 572
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 576
    .local v8, w:I
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 577
    .local v7, h:I
    const/high16 v0, 0x437f

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 579
    .local v5, alpha:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 580
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewLeft:I

    int-to-float v0, v0

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 581
    invoke-virtual {p1, v3, v3, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 583
    int-to-float v3, v8

    int-to-float v4, v7

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 584
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 585
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 588
    .end local v5           #alpha:I
    .end local v7           #h:I
    .end local v8           #w:I
    :cond_2
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method protected layoutChildren()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1459
    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1460
    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1463
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 1464
    .local v0, oldFirstExpPos:I
    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 1466
    .local v1, oldSecondExpPos:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mBlockLayoutRequests:Z

    .line 1468
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1469
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->adjustAllItems()V

    .line 1472
    :cond_0
    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollY:I

    if-eqz v2, :cond_1

    .line 1473
    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->doDragScroll(II)V

    .line 1476
    :cond_1
    iput-boolean v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mBlockLayoutRequests:Z

    .line 1479
    .end local v0           #oldFirstExpPos:I
    .end local v1           #oldSecondExpPos:I
    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1480
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1494
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1486
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->stopDrag(Z)Z

    .line 1487
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1490
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 957
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 1054
    iget-boolean v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_1

    .line 1055
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1098
    :cond_0
    :goto_0
    return v1

    .line 1058
    :cond_1
    invoke-direct {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1059
    iput-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastCallWasIntercept:Z

    .line 1061
    const/4 v1, 0x0

    .line 1063
    .local v1, intercept:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1065
    .local v0, action:I
    if-nez v0, :cond_2

    .line 1066
    iput-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    .line 1070
    :cond_2
    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1072
    const/4 v1, 0x1

    .line 1094
    :goto_1
    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1095
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1074
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1075
    const/4 v1, 0x1

    .line 1078
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 1084
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1085
    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1081
    :pswitch_1
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1087
    :cond_6
    const/4 v2, 0x2

    iput v2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1444
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1445
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->measureFloatView()V

    .line 1450
    :cond_0
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mWidthMeasureSpec:I

    .line 1451
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1207
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->updateScrollStarts()V

    .line 1208
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 987
    iget-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 988
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1026
    :cond_0
    :goto_0
    return v2

    .line 991
    :cond_1
    const/4 v2, 0x0

    .line 993
    .local v2, more:Z
    iget-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastCallWasIntercept:Z

    .line 994
    .local v1, lastCallWasIntercept:Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mLastCallWasIntercept:Z

    .line 996
    if-nez v1, :cond_2

    .line 997
    invoke-direct {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1000
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1001
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1002
    const/4 v2, 0x1

    goto :goto_0

    .line 1007
    :cond_3
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    if-eq v3, v4, :cond_4

    .line 1008
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1009
    const/4 v2, 0x1

    .line 1013
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1014
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1020
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1021
    iput v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1017
    :pswitch_1
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1352
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1354
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 461
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAdapterWrapper:Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;

    .line 462
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 463
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mAdapterWrapper:Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    return-void
.end method

.method public setDragScrollProfile(Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;)V
    .locals 0
    .parameter "ssp"

    .prologue
    .line 1840
    if-eqz p1, :cond_0

    .line 1841
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mScrollProfile:Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;

    .line 1843
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .parameter "heightFraction"

    .prologue
    .line 1108
    invoke-virtual {p0, p1, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDragScrollStarts(FF)V

    .line 1109
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .parameter "upperFrac"
    .parameter "lowerFrac"

    .prologue
    const/high16 v1, 0x3f00

    .line 1121
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1122
    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1127
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1128
    iput v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1133
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->updateScrollStarts()V

    .line 1136
    :cond_0
    return-void

    .line 1124
    :cond_1
    iput p2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1130
    :cond_2
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDropListener(Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDropListener:Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;

    .line 1780
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 439
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCurrFloatAlpha:F

    .line 440
    return-void
.end method

.method public setRemoveListener(Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mController:Lcom/andrew/apollo/dragdrop/DragSortController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortController;->setRemoveEnabled(Z)V

    .line 1795
    :cond_0
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mRemoveListener:Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;

    .line 1796
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .parameter "position"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return v0

    .line 1523
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatViewManager:Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 1525
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1528
    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/dragdrop/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 6
    .parameter "position"
    .parameter "floatView"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1554
    iget-boolean v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 1603
    :goto_0
    return v2

    .line 1558
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1559
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1562
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 1563
    .local v0, pos:I
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFirstExpPos:I

    .line 1564
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSecondExpPos:I

    .line 1565
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    .line 1566
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatPos:I

    .line 1569
    const/4 v4, 0x2

    iput v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    .line 1570
    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    .line 1571
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragFlags:I

    .line 1573
    iput-object p2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1574
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->measureFloatView()V

    .line 1576
    iput p4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaX:I

    .line 1577
    iput p5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaY:I

    .line 1578
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mX:I

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mY:I

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->updateFloatView(II)V

    .line 1581
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1582
    .local v1, srcItem:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1583
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    :cond_3
    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 1601
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->requestLayout()V

    goto :goto_0

    .line 1594
    :pswitch_0
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1597
    :pswitch_1
    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 2
    .parameter "remove"

    .prologue
    const/4 v0, 0x1

    .line 968
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 969
    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I

    .line 972
    invoke-direct {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->dropFloatView(Z)V

    .line 977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
