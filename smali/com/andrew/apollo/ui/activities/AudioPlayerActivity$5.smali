.class Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$5;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 846
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$5;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$5;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void
.end method
