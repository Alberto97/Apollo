.class Lcom/andrew/apollo/MusicPlaybackService$2;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V
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
    .line 810
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService$2;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$2;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService;->killNotification()V

    .line 818
    return-void
.end method
