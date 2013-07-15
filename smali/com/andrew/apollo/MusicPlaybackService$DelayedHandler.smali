.class final Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedHandler"
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
.method public constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 2197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 2199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 2206
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    .line 2207
    .local v0, service:Lcom/andrew/apollo/MusicPlaybackService;
    if-nez v0, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return-void

    .line 2210
    :cond_1
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1400(Lcom/andrew/apollo/MusicPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1500(Lcom/andrew/apollo/MusicPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1300(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    #calls: Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$100(Lcom/andrew/apollo/MusicPlaybackService;Z)V

    .line 2217
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mServiceStartId:I
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1600(Lcom/andrew/apollo/MusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
