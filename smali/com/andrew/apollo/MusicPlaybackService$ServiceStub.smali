.class final Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;
.super Lcom/andrew/apollo/IApolloService$Stub;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceStub"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 2612
    invoke-direct {p0}, Lcom/andrew/apollo/IApolloService$Stub;-><init>()V

    .line 2613
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2614
    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;Lcom/andrew/apollo/MusicPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->enqueue([JI)V

    .line 2678
    return-void
.end method

.method public getAlbumId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->moveQueueItem(II)V

    .line 2710
    return-void
.end method

.method public next()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->gotoNext(Z)V

    .line 2670
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->open([JI)V

    .line 2630
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->openFile(Ljava/lang/String;)Z

    .line 2622
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->pause()V

    .line 2646
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 2654
    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->prev()V

    .line 2662
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->refresh()V

    .line 2726
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->setQueuePosition(I)V

    .line 2686
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->setRepeatMode(I)V

    .line 2702
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->setShuffleMode(I)V

    .line 2694
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->stop()V

    .line 2638
    return-void
.end method

.method public toggleFavorite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->toggleFavorite()V

    .line 2718
    return-void
.end method
