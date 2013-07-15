.class Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$6;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$6;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$6;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$700(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/adapters/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/QueueFragment;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->scrollToCurrentSong()V

    .line 863
    return-void
.end method
