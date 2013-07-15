.class final Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/BaseActivity;
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
            "Lcom/andrew/apollo/ui/activities/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 403
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    .line 404
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 411
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #calls: Lcom/andrew/apollo/ui/activities/BaseActivity;->updateBottomActionBarInfo()V
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$000(Lcom/andrew/apollo/ui/activities/BaseActivity;)V

    .line 416
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-virtual {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->invalidateOptionsMenu()V

    .line 418
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$100(Lcom/andrew/apollo/ui/activities/BaseActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/MusicStateListener;

    .line 419
    .local v2, listener:Lcom/andrew/apollo/MusicStateListener;
    if-eqz v2, :cond_0

    .line 420
    invoke-interface {v2}, Lcom/andrew/apollo/MusicStateListener;->onMetaChanged()V

    goto :goto_0

    .line 423
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/andrew/apollo/MusicStateListener;
    :cond_1
    const-string v3, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$200(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/PlayPauseButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/andrew/apollo/widgets/PlayPauseButton;->updateState()V

    .line 440
    :cond_2
    :goto_1
    return-void

    .line 426
    :cond_3
    const-string v3, "com.andrew.apollo.repeatmodechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.andrew.apollo.shufflemodechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    :cond_4
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/BaseActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$300(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/RepeatButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/andrew/apollo/widgets/RepeatButton;->updateRepeatState()V

    .line 431
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/BaseActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$400(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/ShuffleButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/andrew/apollo/widgets/ShuffleButton;->updateShuffleState()V

    goto :goto_1

    .line 432
    :cond_5
    const-string v3, "com.andrew.apollo.refresh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/ui/activities/BaseActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->access$100(Lcom/andrew/apollo/ui/activities/BaseActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/MusicStateListener;

    .line 435
    .restart local v2       #listener:Lcom/andrew/apollo/MusicStateListener;
    if-eqz v2, :cond_6

    .line 436
    invoke-interface {v2}, Lcom/andrew/apollo/MusicStateListener;->restartLoader()V

    goto :goto_2
.end method
