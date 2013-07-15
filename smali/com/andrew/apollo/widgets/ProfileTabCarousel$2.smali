.class Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;
.super Ljava/lang/Object;
.source "ProfileTabCarousel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/widgets/ProfileTabCarousel;
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
    .line 375
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v1, 0x0

    #setter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$302(Lcom/andrew/apollo/widgets/ProfileTabCarousel;Z)Z

    .line 380
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v1, 0x0

    #setter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$302(Lcom/andrew/apollo/widgets/ProfileTabCarousel;Z)Z

    .line 385
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v1, 0x1

    #setter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$302(Lcom/andrew/apollo/widgets/ProfileTabCarousel;Z)Z

    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ProfileTabCarousel$2;->this$0:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v1, 0x1

    #setter for: Lcom/andrew/apollo/widgets/ProfileTabCarousel;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->access$302(Lcom/andrew/apollo/widgets/ProfileTabCarousel;Z)Z

    .line 395
    return-void
.end method
