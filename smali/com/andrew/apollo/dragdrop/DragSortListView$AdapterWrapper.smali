.class Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;
.super Landroid/widget/HeaderViewListAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/dragdrop/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    const/4 v0, 0x0

    .line 484
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    .line 485
    invoke-direct {p0, v0, v0, p2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 486
    iput-object p2, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 487
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 501
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 503
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 504
    .local v3, v:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 506
    .local v1, oldChild:Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v1, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 508
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 509
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    .end local v0           #child:Landroid/view/View;
    .end local v1           #oldChild:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v5, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v5}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    const/4 v6, 0x1

    #calls: Lcom/andrew/apollo/dragdrop/DragSortListView;->adjustItem(ILandroid/view/View;Z)V
    invoke-static {v4, v5, v3, v6}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$200(Lcom/andrew/apollo/dragdrop/DragSortListView;ILandroid/view/View;Z)V

    .line 527
    return-object v3

    .line 515
    .end local v3           #v:Landroid/widget/RelativeLayout;
    :cond_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 517
    .local v2, params:Landroid/widget/AbsListView$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 518
    .restart local v3       #v:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    :try_start_1
    iget-object v4, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 521
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 522
    .end local v0           #child:Landroid/view/View;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 511
    .end local v2           #params:Landroid/widget/AbsListView$LayoutParams;
    .restart local v1       #oldChild:Landroid/view/View;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
