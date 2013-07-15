.class Lcom/andrew/apollo/dragdrop/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/dragdrop/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$2;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$2;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$100(Lcom/andrew/apollo/dragdrop/DragSortListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$2;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->stopDrag(Z)Z

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView$2;->cancel()V

    .line 422
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/andrew/apollo/dragdrop/DragSortListView$2;->cancel()V

    .line 430
    return-void
.end method
