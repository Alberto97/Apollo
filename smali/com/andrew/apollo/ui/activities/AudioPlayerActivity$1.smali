.class Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 301
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-static {v0, p1}, Lcom/andrew/apollo/utils/NavUtils;->openSearch(Landroid/app/Activity;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    return v0
.end method
