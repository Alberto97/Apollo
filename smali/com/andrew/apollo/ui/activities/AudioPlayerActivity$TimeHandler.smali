.class final Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;
.super Landroid/os/Handler;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeHandler"
.end annotation


# instance fields
.field private final mAudioPlayer:Ljava/lang/ref/WeakReference;
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
    .parameter "player"

    .prologue
    .line 876
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 877
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->mAudioPlayer:Ljava/lang/ref/WeakReference;

    .line 878
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 882
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 890
    :goto_0
    return-void

    .line 884
    :pswitch_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->mAudioPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #calls: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->refreshCurrentTime()J
    invoke-static {v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$800(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)J

    move-result-wide v0

    .line 885
    .local v0, next:J
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->mAudioPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #calls: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->queueNextRefresh(J)V
    invoke-static {v2, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$900(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;J)V

    goto :goto_0

    .line 882
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
