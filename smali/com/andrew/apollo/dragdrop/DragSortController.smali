.class public Lcom/andrew/apollo/dragdrop/DragSortController;
.super Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private final mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private final mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

.field private final mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private final mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mFlingSpeed:F

.field private mHitPos:I

.field private mItemX:I

.field private mItemY:I

.field private mOrigFloatAlpha:F

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private final mTempLoc:[I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;III)V
    .locals 4
    .parameter "dslv"
    .parameter "dragHandleId"
    .parameter "dragInitMode"
    .parameter "removeMode"

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    .line 47
    const/high16 v0, 0x43fa

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingSpeed:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mSortEnabled:Z

    .line 53
    iput-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    .line 55
    iput-boolean v3, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    .line 57
    iput v3, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragInitMode:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    .line 73
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mOrigFloatAlpha:F

    .line 416
    new-instance v0, Lcom/andrew/apollo/dragdrop/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/dragdrop/DragSortController$1;-><init>(Lcom/andrew/apollo/dragdrop/DragSortController;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 96
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    .line 97
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 98
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 99
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTouchSlop:I

    .line 101
    iput p2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragHandleId:I

    .line 102
    invoke-virtual {p0, p4}, Lcom/andrew/apollo/dragdrop/DragSortController;->setRemoveMode(I)V

    .line 103
    invoke-virtual {p0, p3}, Lcom/andrew/apollo/dragdrop/DragSortController;->setDragInitMode(I)V

    .line 104
    invoke-virtual {p1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFloatAlpha()F

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mOrigFloatAlpha:F

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/dragdrop/DragSortController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/dragdrop/DragSortController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/dragdrop/DragSortController;)Lcom/andrew/apollo/dragdrop/DragSortListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    return-object v0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 12
    .parameter "ev"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 309
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 311
    .local v9, y:I
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/andrew/apollo/dragdrop/DragSortListView;->pointToPosition(II)I

    move-result v7

    .line 313
    .local v7, touchPos:I
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 314
    .local v4, numHeaders:I
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 315
    .local v3, numFooters:I
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v10}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getCount()I

    move-result v0

    .line 317
    .local v0, count:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    if-lt v7, v4, :cond_0

    sub-int v10, v0, v3

    if-ge v7, v10, :cond_0

    .line 319
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v11, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v11}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, item:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 321
    .local v5, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 323
    .local v6, rawY:I
    iget v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragHandleId:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, dragBox:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 325
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_0

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_0

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_0

    iget-object v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_0

    .line 331
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemX:I

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemY:I

    .line 338
    .end local v1           #dragBox:Landroid/view/View;
    .end local v2           #item:Landroid/view/View;
    .end local v5           #rawX:I
    .end local v6           #rawY:I
    .end local v7           #touchPos:I
    :goto_0
    return v7

    .restart local v7       #touchPos:I
    :cond_0
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    .line 348
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_0

    .line 349
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortController;->startDrag(III)Z

    .line 352
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6
    .parameter "floatView"
    .parameter "position"
    .parameter "touch"

    .prologue
    .line 251
    iget-boolean v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_0

    .line 252
    iget v3, p3, Landroid/graphics/Point;->x:I

    .line 254
    .local v3, x:I
    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 255
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getWidth()I

    move-result v2

    .line 256
    .local v2, width:I
    div-int/lit8 v1, v2, 0x3

    .line 259
    .local v1, thirdWidth:I
    if-ge v3, v1, :cond_1

    .line 260
    const/high16 v0, 0x3f80

    .line 266
    .local v0, alpha:F
    :goto_0
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mOrigFloatAlpha:F

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setFloatAlpha(F)V

    .line 282
    .end local v0           #alpha:F
    .end local v1           #thirdWidth:I
    .end local v2           #width:I
    .end local v3           #x:I
    :cond_0
    :goto_1
    return-void

    .line 261
    .restart local v1       #thirdWidth:I
    .restart local v2       #width:I
    .restart local v3       #x:I
    :cond_1
    sub-int v4, v2, v1

    if-ge v3, v4, :cond_2

    .line 262
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v0, v4, v5

    .restart local v0       #alpha:F
    goto :goto_0

    .line 264
    .end local v0           #alpha:F
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #alpha:F
    goto :goto_0

    .line 267
    .end local v0           #alpha:F
    .end local v1           #thirdWidth:I
    .end local v2           #width:I
    :cond_3
    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 268
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getWidth()I

    move-result v2

    .line 269
    .restart local v2       #width:I
    div-int/lit8 v1, v2, 0x3

    .line 272
    .restart local v1       #thirdWidth:I
    if-ge v3, v1, :cond_4

    .line 273
    const/4 v0, 0x0

    .line 279
    .restart local v0       #alpha:F
    :goto_2
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mOrigFloatAlpha:F

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setFloatAlpha(F)V

    goto :goto_1

    .line 274
    .end local v0           #alpha:F
    :cond_4
    sub-int v4, v2, v1

    if-ge v3, v4, :cond_5

    .line 275
    sub-int v4, v3, v1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v0, v4, v5

    .restart local v0       #alpha:F
    goto :goto_2

    .line 277
    .end local v0           #alpha:F
    :cond_5
    const/high16 v0, 0x3f80

    .restart local v0       #alpha:F
    goto :goto_2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 387
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->performHapticFeedback(I)Z

    .line 389
    iget v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortController;->startDrag(III)Z

    .line 391
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 360
    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragInitMode:I

    if-ne v7, v5, :cond_1

    iget-boolean v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    if-nez v7, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    .line 362
    .local v1, x1:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    .line 363
    .local v3, y1:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 364
    .local v2, x2:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 366
    .local v4, y2:I
    const/4 v0, 0x0

    .line 367
    .local v0, start:Z
    iget-boolean v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mSortEnabled:Z

    if-eqz v7, :cond_2

    .line 368
    const/4 v0, 0x1

    .line 375
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 376
    iget v5, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mHitPos:I

    iget v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemX:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mItemY:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/andrew/apollo/dragdrop/DragSortController;->startDrag(III)Z

    .line 379
    .end local v0           #start:Z
    .end local v1           #x1:I
    .end local v2           #x2:I
    .end local v3           #y1:I
    .end local v4           #y2:I
    :cond_1
    return v6

    .line 369
    .restart local v0       #start:Z
    .restart local v1       #x1:I
    .restart local v2       #x2:I
    .restart local v3       #y1:I
    .restart local v4       #y2:I
    :cond_2
    iget-boolean v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v7, :cond_4

    .line 370
    sub-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_3

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    .line 371
    :cond_4
    iget-boolean v7, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mSortEnabled:Z

    if-eqz v7, :cond_0

    .line 372
    sub-int v7, v4, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_5

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 414
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    iget-boolean v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    if-ne v4, v7, :cond_1

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 221
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 223
    .local v0, mAction:I
    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    :pswitch_0
    return v6

    .line 225
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mCurrX:I

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mCurrY:I

    goto :goto_0

    .line 229
    :pswitch_2
    iget-boolean v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_4

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 231
    .local v3, x:I
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 232
    .local v1, thirdW:I
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getWidth()I

    move-result v4

    sub-int v2, v4, v1

    .line 233
    .local v2, twoThirdW:I
    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-gt v3, v2, :cond_3

    :cond_2
    iget v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    if-ge v3, v1, :cond_4

    .line 235
    :cond_3
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4, v7}, Lcom/andrew/apollo/dragdrop/DragSortListView;->stopDrag(Z)Z

    .line 239
    .end local v1           #thirdW:I
    .end local v2           #twoThirdW:I
    .end local v3           #x:I
    :cond_4
    :pswitch_3
    iput-boolean v6, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDragInitMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 121
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragInitMode:I

    .line 122
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    .line 161
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 146
    iput p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    .line 147
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mSortEnabled:Z

    .line 132
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .parameter "position"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, mDragFlags:I
    iget-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    .line 194
    or-int/lit8 v0, v0, 0xc

    .line 197
    :cond_0
    iget-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    .line 198
    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    if-nez v1, :cond_2

    .line 199
    or-int/lit8 v0, v0, 0x1

    .line 205
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/andrew/apollo/dragdrop/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    .line 207
    iget-boolean v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mDragging:Z

    return v1

    .line 200
    :cond_2
    iget v1, p0, Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 201
    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "ev"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
