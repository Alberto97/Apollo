.class public Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;
.super Ljava/lang/Object;
.source "SimpleFloatViewManager.java"

# interfaces
.implements Lcom/andrew/apollo/dragdrop/DragSortListView$FloatViewManager;


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private final mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter "lv"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, -0x100

    iput v0, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBGColor:I

    .line 24
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, iv:Landroid/widget/ImageView;
    iget v2, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBGColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53
    iget-object v2, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 2
    .parameter "floatView"

    .prologue
    const/4 v1, 0x0

    .line 64
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    iput-object v1, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .parameter "floatView"
    .parameter "position"
    .parameter "touch"

    .prologue
    .line 76
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 28
    iput p1, p0, Lcom/andrew/apollo/dragdrop/SimpleFloatViewManager;->mFloatBGColor:I

    .line 29
    return-void
.end method
