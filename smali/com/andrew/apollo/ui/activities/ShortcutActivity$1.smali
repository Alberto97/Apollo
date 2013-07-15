.class Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;
.super Ljava/lang/Object;
.source "ShortcutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/ShortcutActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$000(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, requestedMimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.dir/artists"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v5}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 134
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v4, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getId()J
    invoke-static {v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$300(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    .line 186
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->allDone()V
    invoke-static {v2}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$400(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V

    .line 187
    return-void

    .line 137
    :cond_1
    const-string v2, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v5}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 143
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v4, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getId()J
    invoke-static {v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$300(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "vnd.android.cursor.dir/genre"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v5}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 152
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v4, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getId()J
    invoke-static {v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$300(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForGenre(Landroid/content/Context;J)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto :goto_0

    .line 155
    :cond_3
    const-string v2, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 161
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v4, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getId()J
    invoke-static {v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$300(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 170
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForFavorites(Landroid/content/Context;)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto/16 :goto_0

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z
    invoke-static {v2, v4}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z

    .line 179
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v2}, Lcom/andrew/apollo/loaders/LastAddedLoader;->makeLastAddedCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v3

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v2, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
