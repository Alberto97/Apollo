.class Lcom/andrew/apollo/ui/activities/BaseActivity$2;
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
    .line 355
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 362
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    instance-of v0, v0, Lcom/andrew/apollo/ui/activities/ProfileActivity;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->finish()V

    .line 371
    :cond_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/BaseActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->shuffleAll(Landroid/content/Context;)V

    goto :goto_0
.end method
