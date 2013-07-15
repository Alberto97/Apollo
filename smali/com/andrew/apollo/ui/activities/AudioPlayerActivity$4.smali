.class Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;
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
    .line 822
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$200(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAudioPlayerHeader:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$400(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mOpenAlbumProfile:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$300(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #calls: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->showAlbumArt()V
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$500(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    .line 840
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAudioPlayerHeader:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$400(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mScrollToCurrentSong:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$600(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->hideAlbumArt()V

    goto :goto_0
.end method
