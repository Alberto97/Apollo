.class public Lcom/andrew/apollo/widgets/ProfileTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ProfileTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;,
        Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;
    }
.end annotation


# static fields
.field private static final mYCoordinateArray:[F


# instance fields
.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mEnableSwipe:Z

.field private mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

.field private mLastScrollPosition:I

.field private mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

.field private mScrollScaleFactor:F

.field private mScrollToCurrentTab:Z

.field private mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTabCarouselIsAnimating:Z

.field private final mTabDisplayLabelHeight:I

.field private final mTabOneTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

.field private final mTabShadowHeight:I

.field private final mTabTwoTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

.field private final tabHeightScreenWidthFraction:F

.field private final tabWidthScreenWidthFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mYCoordinateArray:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v2, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v1, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    invoke-direct {v1, p0, v4}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;-><init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V

    iput-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabOneTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    .line 96
    new-instance v1, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;-><init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V

    iput-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabTwoTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    .line 102
    iput v3, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mLastScrollPosition:I

    .line 107
    iput v3, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 112
    iput v3, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedVerticalScrollLength:I

    .line 117
    iput v4, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mCurrentTab:I

    .line 122
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollScaleFactor:F

    .line 124
    iput-boolean v4, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollToCurrentTab:Z

    .line 375
    new-instance v1, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;-><init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)V

    iput-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 142
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    .local v0, mResources:Landroid/content/res/Resources;
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabDisplayLabelHeight:I

    .line 146
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabShadowHeight:I

    .line 147
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->tabWidthScreenWidthFraction:F

    .line 149
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->tabHeightScreenWidthFraction:F

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->updateAlphaLayers()V

    return-void
.end method

.method static synthetic access$302(Lcom/andrew/apollo/widgets/ProfileTabCarousel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const v3, 0x3f19999a

    .line 350
    iget v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 351
    .local v0, alpha:F
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/widgets/AlphaTouchInterceptorOverlay;->clamp(FFF)F

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v1, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->setAlphaLayerValue(F)V

    .line 353
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/widgets/CarouselTab;->setAlphaLayerValue(F)V

    .line 354
    return-void
.end method


# virtual methods
.method public fetchAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->fetchAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public getAlbumArt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/CarouselTab;->getAlbumArt()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedHorizontalScrollLength()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/CarouselTab;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 328
    sget-object v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public isTabCarouselIsAnimating()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method public moveToYCoordinate(IF)V
    .locals 1
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->storeYCoordinate(IF)V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->restoreYCoordinate(II)V

    .line 313
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 159
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/CarouselTab;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 160
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabOneTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/CarouselTab;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 162
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabTwoTouchInterceptListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 263
    .local v0, mInterceptTouch:Z
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    invoke-interface {v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;->onTouchDown()V

    .line 266
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 211
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 212
    iget-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollToCurrentTab:Z

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollToCurrentTab:Z

    .line 216
    new-instance v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;-><init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)V

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x4000

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 171
    .local v1, screenWidth:I
    iget v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->tabWidthScreenWidthFraction:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 173
    .local v4, tabWidth:I
    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 174
    iget v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    if-nez v5, :cond_1

    .line 175
    iput v8, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollScaleFactor:F

    .line 180
    :goto_0
    int-to-float v5, v1

    iget v6, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->tabHeightScreenWidthFraction:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabShadowHeight:I

    add-int v3, v5, v6

    .line 182
    .local v3, tabHeight:I
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 183
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 189
    .local v2, seperatorPixels:I
    iget-boolean v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mEnableSwipe:Z

    if-eqz v5, :cond_2

    .line 190
    mul-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 199
    .end local v0           #child:Landroid/view/View;
    .end local v2           #seperatorPixels:I
    :cond_0
    :goto_1
    iget v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabShadowHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedVerticalScrollLength:I

    .line 200
    invoke-static {v1, p1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->resolveSize(II)I

    move-result v5

    invoke-static {v3, p2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setMeasuredDimension(II)V

    .line 202
    return-void

    .line 177
    .end local v3           #tabHeight:I
    :cond_1
    iget v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I

    div-int v5, v1, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollScaleFactor:F

    goto :goto_0

    .line 195
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #seperatorPixels:I
    .restart local v3       #tabHeight:I
    :cond_2
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 231
    iget v2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mLastScrollPosition:I

    if-ne v2, p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    int-to-float v2, p1

    iget v3, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 235
    .local v1, scaledL:I
    int-to-float v2, p3

    iget v3, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 236
    .local v0, oldScaledL:I
    iget-object v2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    invoke-interface {v2, v1, p2, v0, p4}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;->onScrollChanged(IIII)V

    .line 237
    iput p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mLastScrollPosition:I

    .line 238
    invoke-direct {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->updateAlphaLayers()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 254
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 248
    :pswitch_0
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    invoke-interface {v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;->onTouchDown()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    invoke-interface {v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0, v1, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->scrollTo(II)V

    .line 275
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setCurrentTab(I)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->moveToYCoordinate(IF)V

    .line 277
    return-void
.end method

.method public restoreYCoordinate(II)V
    .locals 5
    .parameter "duration"
    .parameter "tabIndex"

    .prologue
    .line 295
    invoke-virtual {p0, p2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    .line 297
    .local v0, storedYCoordinate:F
    const-string v2, "y"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 299
    .local v1, tabCarouselAnimator:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 303
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 304
    return-void
.end method

.method public setAlbumProfileHeader(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->setAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p3, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->blurPhoto(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setVisibility(I)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mEnableSwipe:Z

    .line 469
    return-void
.end method

.method public setArtistProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->setArtistPhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->setArtistAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mEnableSwipe:Z

    .line 453
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 421
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tab position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 414
    .local v1, selected:Lcom/andrew/apollo/widgets/CarouselTab;
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 423
    .local v0, deselected:Lcom/andrew/apollo/widgets/CarouselTab;
    :goto_0
    invoke-virtual {v1, v3}, Lcom/andrew/apollo/widgets/CarouselTab;->setSelected(Z)V

    .line 424
    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/CarouselTab;->showSelectedState()V

    .line 425
    invoke-virtual {v1, v2}, Lcom/andrew/apollo/widgets/CarouselTab;->setOverlayClickable(Z)V

    .line 426
    invoke-virtual {v0, v2}, Lcom/andrew/apollo/widgets/CarouselTab;->setSelected(Z)V

    .line 427
    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/CarouselTab;->showDeselectedState()V

    .line 428
    invoke-virtual {v0, v3}, Lcom/andrew/apollo/widgets/CarouselTab;->setOverlayClickable(Z)V

    .line 429
    iput p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mCurrentTab:I

    .line 430
    return-void

    .line 417
    .end local v0           #deselected:Lcom/andrew/apollo/widgets/CarouselTab;
    .end local v1           #selected:Lcom/andrew/apollo/widgets/CarouselTab;
    :pswitch_1
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 418
    .restart local v1       #selected:Lcom/andrew/apollo/widgets/CarouselTab;
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    .line 419
    .restart local v0       #deselected:Lcom/andrew/apollo/widgets/CarouselTab;
    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    .line 437
    return-void
.end method

.method public setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "profileName"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    .line 481
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mFirstTab:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/widgets/CarouselTab;->setPlaylistOrGenrePhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mSecondTab:Lcom/andrew/apollo/widgets/CarouselTab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/CarouselTab;->setVisibility(I)V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mEnableSwipe:Z

    .line 485
    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 320
    sget-object v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 321
    return-void
.end method
