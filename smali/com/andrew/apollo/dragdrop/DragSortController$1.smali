.class Lcom/andrew/apollo/dragdrop/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/dragdrop/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/dragdrop/DragSortController;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortController;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortController$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortController;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveEnabled:Z
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortController;->access$000(Lcom/andrew/apollo/dragdrop/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortController;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortController;->mRemoveMode:I
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortController;->access$100(Lcom/andrew/apollo/dragdrop/DragSortController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 427
    :pswitch_0
    const/high16 v0, 0x43fa

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortController;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortController;->access$200(Lcom/andrew/apollo/dragdrop/DragSortController;)Lcom/andrew/apollo/dragdrop/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 432
    :pswitch_1
    const/high16 v0, -0x3c06

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortController$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortController;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortController;->mDslv:Lcom/andrew/apollo/dragdrop/DragSortListView;
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortController;->access$200(Lcom/andrew/apollo/dragdrop/DragSortController;)Lcom/andrew/apollo/dragdrop/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/dragdrop/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
