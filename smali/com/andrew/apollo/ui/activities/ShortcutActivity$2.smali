.class Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;
.super Ljava/lang/Object;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Song;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/andrew/apollo/loaders/SearchLoader;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mVoiceQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$500(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/loaders/SearchLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Song;>;"
    const/4 v8, 0x0

    .line 237
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->isFavorite()Z
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$600(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->playFavorites(Landroid/content/Context;)V

    .line 244
    :cond_0
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->allDone()V
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$400(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V

    .line 285
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 251
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/andrew/apollo/model/Song;

    .line 252
    .local v5, song:Lcom/andrew/apollo/model/Song;
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    .end local v5           #song:Lcom/andrew/apollo/model/Song;
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/model/Song;

    iget-object v5, v6, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    .line 265
    .local v5, song:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/model/Song;

    iget-object v0, v6, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    .line 266
    .local v0, album:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/model/Song;

    iget-object v1, v6, Lcom/andrew/apollo/model/Song;->mArtistName:Ljava/lang/String;

    .line 268
    .local v1, artist:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/model/Song;

    iget-wide v3, v6, Lcom/andrew/apollo/model/Song;->mSongId:J

    .line 270
    .local v3, id:J
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$200(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)[J

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    .line 271
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    const/4 v7, 0x1

    new-array v7, v7, [J

    aput-wide v3, v7, v8

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6, v7}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    .line 284
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #calls: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->allDone()V
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$400(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$200(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)[J

    move-result-object v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    .line 277
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v7, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v7, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v7

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6, v7}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto :goto_2

    .line 280
    :cond_5
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$200(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)[J

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 281
    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    iget-object v7, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-static {v7, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v7

    #setter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J
    invoke-static {v6, v7}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J

    goto :goto_2
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    return-void
.end method
