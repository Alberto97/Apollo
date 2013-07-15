.class Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/dragdrop/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHeights"
.end annotation


# instance fields
.field child:I

.field item:I

.field final synthetic this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;


# direct methods
.method private constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;->this$0:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/dragdrop/DragSortListView;Lcom/andrew/apollo/dragdrop/DragSortListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/andrew/apollo/dragdrop/DragSortListView$ItemHeights;-><init>(Lcom/andrew/apollo/dragdrop/DragSortListView;)V

    return-void
.end method
