.class Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;
.super Ljava/lang/Object;
.source "ProfileTabCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/widgets/ProfileTabCarousel;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    #getter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mCurrentTab:I
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$000(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->scrollTo(II)V

    .line 220
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    #calls: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->updateAlphaLayers()V
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$200(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)V

    .line 221
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$1;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    #getter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mAllowedHorizontalScrollLength:I
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$100(Lcom/andrew/apollo/widgets/ProfileTabCarousel;)I

    move-result v0

    goto :goto_0
.end method
