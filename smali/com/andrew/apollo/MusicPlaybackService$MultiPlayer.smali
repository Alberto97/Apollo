.class final Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiPlayer"
.end annotation


# instance fields
.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

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
    .locals 3
    .parameter "service"

    .prologue
    .line 2391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2380
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 2386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    .line 2393
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2394
    return-void
.end method

.method private setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z
    .locals 5
    .parameter "player"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 2416
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 2417
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2418
    const-string v2, "content://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2419
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2423
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2424
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2432
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2433
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2434
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2435
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2436
    const-string v3, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2437
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v2, v0}, Lcom/andrew/apollo/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2438
    const/4 v2, 0x1

    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v2

    .line 2421
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2425
    :catch_0
    move-exception v1

    .local v1, todo:Ljava/io/IOException;
    move v2, v3

    .line 2427
    goto :goto_1

    .line 2428
    .end local v1           #todo:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, todo:Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 2430
    goto :goto_1
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2482
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2597
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 2598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 2599
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2605
    :goto_0
    return-void

    .line 2601
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/MusicPlaybackService;

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/andrew/apollo/MusicPlaybackService;->access$2600(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2602
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2603
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2576
    packed-switch p2, :pswitch_data_0

    .line 2587
    :goto_0
    return v0

    .line 2578
    :pswitch_0
    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2579
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2580
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 2581
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2582
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    .line 2583
    goto :goto_0

    .line 2576
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2513
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2504
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->stop()V

    .line 2505
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2506
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2541
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2402
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 2403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 2405
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2475
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2476
    return-void
.end method

.method public setNextDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 2448
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 2449
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2451
    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 2453
    :cond_0
    if-nez p1, :cond_2

    .line 2467
    :cond_1
    :goto_0
    return-void

    .line 2456
    :cond_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 2457
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2458
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2459
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2460
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2462
    :cond_3
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2463
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2464
    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2551
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2490
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2498
    return-void
.end method
