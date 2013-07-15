.class Lcom/devspark/appmsg/MsgManager;
.super Landroid/os/Handler;
.source "MsgManager.java"


# static fields
.field private static mInstance:Lcom/devspark/appmsg/MsgManager;


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private msgQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/devspark/appmsg/AppMsg;",
            ">;"
        }
    .end annotation
.end field

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    .line 46
    return-void
.end method

.method private addMsgToView(Lcom/devspark/appmsg/AppMsg;)V
    .locals 4
    .parameter "appMsg"

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/devspark/appmsg/MsgManager;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    const v1, -0x3dff821f

    invoke-virtual {p0, v1}, Lcom/devspark/appmsg/MsgManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/devspark/appmsg/MsgManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method

.method private displayMsg()V
    .locals 6

    .prologue
    .line 99
    iget-object v2, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devspark/appmsg/AppMsg;

    .line 105
    .local v0, appMsg:Lcom/devspark/appmsg/AppMsg;
    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    const v2, -0x3dff8b23

    invoke-virtual {p0, v2}, Lcom/devspark/appmsg/MsgManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, v1}, Lcom/devspark/appmsg/MsgManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 115
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    const v2, 0xc2007

    invoke-virtual {p0, v2}, Lcom/devspark/appmsg/MsgManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 116
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->getDuration()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/devspark/appmsg/MsgManager;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/devspark/appmsg/MsgManager;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/devspark/appmsg/MsgManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lcom/devspark/appmsg/MsgManager;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/devspark/appmsg/MsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/devspark/appmsg/MsgManager;->mInstance:Lcom/devspark/appmsg/MsgManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/devspark/appmsg/MsgManager;

    invoke-direct {v0}, Lcom/devspark/appmsg/MsgManager;-><init>()V

    sput-object v0, Lcom/devspark/appmsg/MsgManager;->mInstance:Lcom/devspark/appmsg/MsgManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/devspark/appmsg/MsgManager;->mInstance:Lcom/devspark/appmsg/MsgManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeMsg(Lcom/devspark/appmsg/AppMsg;)V
    .locals 4
    .parameter "appMsg"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 128
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/devspark/appmsg/MsgManager;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v2, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    const v2, 0xc2007

    invoke-virtual {p0, v2}, Lcom/devspark/appmsg/MsgManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/devspark/appmsg/MsgManager;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method add(Lcom/devspark/appmsg/AppMsg;)V
    .locals 2
    .parameter "appMsg"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/devspark/appmsg/MsgManager;->msgQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/devspark/appmsg/MsgManager;->inAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/devspark/appmsg/MsgManager;->inAnimation:Landroid/view/animation/Animation;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/devspark/appmsg/MsgManager;->outAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/devspark/appmsg/AppMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/devspark/appmsg/MsgManager;->outAnimation:Landroid/view/animation/Animation;

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/devspark/appmsg/MsgManager;->displayMsg()V

    .line 74
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 154
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 167
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 170
    :goto_0
    return-void

    .line 156
    :sswitch_0
    invoke-direct {p0}, Lcom/devspark/appmsg/MsgManager;->displayMsg()V

    goto :goto_0

    .line 159
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/devspark/appmsg/AppMsg;

    .line 160
    .local v0, appMsg:Lcom/devspark/appmsg/AppMsg;
    invoke-direct {p0, v0}, Lcom/devspark/appmsg/MsgManager;->addMsgToView(Lcom/devspark/appmsg/AppMsg;)V

    goto :goto_0

    .line 163
    .end local v0           #appMsg:Lcom/devspark/appmsg/AppMsg;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/devspark/appmsg/AppMsg;

    .line 164
    .restart local v0       #appMsg:Lcom/devspark/appmsg/AppMsg;
    invoke-direct {p0, v0}, Lcom/devspark/appmsg/MsgManager;->removeMsg(Lcom/devspark/appmsg/AppMsg;)V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dff8b23 -> :sswitch_1
        -0x3dff821f -> :sswitch_2
        0xc2007 -> :sswitch_0
    .end sparse-switch
.end method
