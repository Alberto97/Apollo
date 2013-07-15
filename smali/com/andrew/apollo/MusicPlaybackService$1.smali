.class Lcom/andrew/apollo/MusicPlaybackService$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/MusicPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 779
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v3}, Lcom/andrew/apollo/MusicPlaybackService;->access$100(Lcom/andrew/apollo/MusicPlaybackService;Z)V

    .line 782
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$202(Lcom/andrew/apollo/MusicPlaybackService;Z)Z

    .line 783
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-static {v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$308(Lcom/andrew/apollo/MusicPlaybackService;)I

    .line 786
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->getCardId()I
    invoke-static {v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$500(Lcom/andrew/apollo/MusicPlaybackService;)I

    move-result v2

    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$402(Lcom/andrew/apollo/MusicPlaybackService;I)I

    .line 787
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->reloadQueue()V
    invoke-static {v1}, Lcom/andrew/apollo/MusicPlaybackService;->access$600(Lcom/andrew/apollo/MusicPlaybackService;)V

    .line 788
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #setter for: Lcom/andrew/apollo/MusicPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v1, v3}, Lcom/andrew/apollo/MusicPlaybackService;->access$202(Lcom/andrew/apollo/MusicPlaybackService;Z)Z

    .line 789
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    const-string v2, "com.andrew.apollo.queuechanged"

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$700(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$1;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    const-string v2, "com.andrew.apollo.metachanged"

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->access$700(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
