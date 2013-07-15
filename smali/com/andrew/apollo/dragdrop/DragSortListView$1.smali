.class Lcom/andrew/apollo/dragdrop/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/dragdrop/DragSortListView;
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
    .line 245
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .parameter "w"
    .parameter "t"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$1;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    #getter for: Lcom/andrew/apollo/dragdrop/DragSortListView;->mMaxScrollSpeed:F
    invoke-static {v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->access$000(Lcom/andrew/apollo/dragdrop/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
