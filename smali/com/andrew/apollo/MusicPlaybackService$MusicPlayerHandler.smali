.class final Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MusicPlayerHandler"
.end annotation


# instance fields
.field private mCurrentVolume:F

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
.method public constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;Landroid/os/Looper;)V
    .locals 1
    .parameter "service"
    .parameter "looper"

    .prologue
    .line 2232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2223
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    .line 2233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 2234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x3e4ccccd

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2241
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    .line 2242
    .local v0, service:Lcom/andrew/apollo/MusicPlaybackService;
    if-nez v0, :cond_0

    .line 2325
    :goto_0
    return-void

    .line 2246
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2283
    :pswitch_0
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2500(Lcom/andrew/apollo/MusicPlaybackService;)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 2284
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->seek(J)J

    .line 2285
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    goto :goto_0

    .line 2248
    :pswitch_1
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    const v2, 0x3d4ccccd

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    .line 2249
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 2250
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v4, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2254
    :goto_1
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1700(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 2252
    :cond_1
    iput v6, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    goto :goto_1

    .line 2257
    :pswitch_2
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    const v2, 0x3c23d70a

    add-float/2addr v1, v2

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    .line 2258
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 2259
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v5, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2263
    :goto_2
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1700(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 2261
    :cond_2
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    goto :goto_2

    .line 2266
    :pswitch_3
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2267
    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->gotoNext(Z)V

    goto :goto_0

    .line 2269
    :cond_3
    #calls: Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1800(Lcom/andrew/apollo/MusicPlaybackService;)V

    goto :goto_0

    .line 2273
    :pswitch_4
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2000(Lcom/andrew/apollo/MusicPlaybackService;)I

    move-result v1

    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$1902(Lcom/andrew/apollo/MusicPlaybackService;I)I

    .line 2274
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2100(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2275
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2100(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2277
    :cond_4
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2200(Lcom/andrew/apollo/MusicPlaybackService;)[J

    move-result-object v1

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1900(Lcom/andrew/apollo/MusicPlaybackService;)I

    move-result v2

    aget-wide v1, v1, v2

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$2300(Lcom/andrew/apollo/MusicPlaybackService;J)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$2102(Lcom/andrew/apollo/MusicPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2278
    const-string v1, "com.andrew.apollo.metachanged"

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$700(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->buildNotification()V

    .line 2280
    #calls: Lcom/andrew/apollo/MusicPlaybackService;->setNextTrack()V
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2400(Lcom/andrew/apollo/MusicPlaybackService;)V

    goto/16 :goto_0

    .line 2287
    :cond_5
    invoke-virtual {v0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->gotoNext(Z)V

    goto/16 :goto_0

    .line 2291
    :pswitch_5
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2600(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2294
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 2304
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->removeMessages(I)V

    .line 2305
    invoke-virtual {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2297
    :pswitch_9
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2298
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_7

    :goto_3
    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$1402(Lcom/andrew/apollo/MusicPlaybackService;Z)Z

    .line 2301
    :cond_6
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->pause()V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 2298
    goto :goto_3

    .line 2308
    :pswitch_a
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_8

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1400(Lcom/andrew/apollo/MusicPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2310
    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$1402(Lcom/andrew/apollo/MusicPlaybackService;Z)Z

    .line 2311
    const/4 v1, 0x0

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    .line 2312
    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$1700(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    move-result-object v1

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setVolume(F)V

    .line 2313
    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    goto/16 :goto_0

    .line 2315
    :cond_8
    invoke-virtual {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->removeMessages(I)V

    .line 2316
    invoke-virtual {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2294
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
