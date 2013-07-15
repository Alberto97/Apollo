.class Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 1
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    #calls: Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->scanBackward(IJ)V
    invoke-static {v0, p4, p2, p3}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->access$000(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;IJ)V

    .line 802
    return-void
.end method
