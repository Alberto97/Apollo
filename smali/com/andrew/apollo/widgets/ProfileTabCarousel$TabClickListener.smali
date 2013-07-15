.class final Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;
.super Ljava/lang/Object;
.source "ProfileTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/widgets/ProfileTabCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTab:I

.field final synthetic this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V
    .locals 0
    .parameter
    .parameter "tab"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput p2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;->mTab:I

    .line 511
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    #getter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mListener:Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$400(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$TabClickListener;->mTab:I

    invoke-interface {v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;->onTabSelected(I)V

    .line 516
    return-void
.end method
