.class Lcom/andrew/apollo/ui/activities/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 384
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/NavUtils;->openAudioPlayer(Landroid/app/Activity;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->shuffleAll(Landroid/content/Context;)V

    goto :goto_0
.end method
