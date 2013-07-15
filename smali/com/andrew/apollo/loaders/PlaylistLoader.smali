.class public Lcom/andrew/apollo/loaders/PlaylistLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Playlist;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mPlaylistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mPlaylistList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method private makeDefaultPlaylists()V
    .locals 6

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/PlaylistLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 94
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/andrew/apollo/model/Playlist;

    const-wide/16 v3, -0x1

    const v5, 0x7f09002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/andrew/apollo/model/Playlist;-><init>(JLjava/lang/String;)V

    .line 96
    .local v0, favorites:Lcom/andrew/apollo/model/Playlist;
    iget-object v3, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mPlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/andrew/apollo/model/Playlist;

    const-wide/16 v3, -0x2

    const v5, 0x7f09002b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/andrew/apollo/model/Playlist;-><init>(JLjava/lang/String;)V

    .line 101
    .local v1, lastAdded:Lcom/andrew/apollo/model/Playlist;
    iget-object v3, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mPlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public static final makePlaylistCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/PlaylistLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/andrew/apollo/loaders/PlaylistLoader;->makeDefaultPlaylists()V

    .line 64
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/PlaylistLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/loaders/PlaylistLoader;->makePlaylistCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    .line 66
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 72
    .local v0, id:J
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, name:Ljava/lang/String;
    new-instance v3, Lcom/andrew/apollo/model/Playlist;

    invoke-direct {v3, v0, v1, v2}, Lcom/andrew/apollo/model/Playlist;-><init>(JLjava/lang/String;)V

    .line 78
    .local v3, playlist:Lcom/andrew/apollo/model/Playlist;
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mPlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #playlist:Lcom/andrew/apollo/model/Playlist;
    :cond_1
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 84
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mCursor:Landroid/database/Cursor;

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/andrew/apollo/loaders/PlaylistLoader;->mPlaylistList:Ljava/util/ArrayList;

    return-object v4
.end method
