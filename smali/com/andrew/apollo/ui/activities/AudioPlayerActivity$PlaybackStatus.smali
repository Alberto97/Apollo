.class final Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackStatus"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 903
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 904
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    .line 905
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #calls: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updateNowPlayingInfo()V
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$1000(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    .line 917
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$1100(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/PlayPauseButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/PlayPauseButton;->updateState()V

    goto :goto_0

    .line 921
    :cond_2
    const-string v1, "com.andrew.apollo.repeatmodechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.andrew.apollo.shufflemodechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    :cond_3
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$1200(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/RepeatButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/RepeatButton;->updateRepeatState()V

    .line 926
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;
    invoke-static {v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$1300(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/ShuffleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/ShuffleButton;->updateShuffleState()V

    goto :goto_0
.end method
