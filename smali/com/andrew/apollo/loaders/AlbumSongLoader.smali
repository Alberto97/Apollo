.class public Lcom/andrew/apollo/loaders/AlbumSongLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "AlbumSongLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Song;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAlbumID:Ljava/lang/Long;

.field private mCursor:Landroid/database/Cursor;

.field private final mSongList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 1
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mSongList:Ljava/util/ArrayList;

    .line 58
    iput-object p2, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mAlbumID:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public static final makeAlbumSongCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v6, selection:Ljava/lang/StringBuilder;
    const-string v0, "is_music=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, " AND title != \'\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "album"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "duration"

    aput-object v4, v2, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/utils/PreferenceUtils;->getAlbumSongSortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/AlbumSongLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/AlbumSongLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mAlbumID:Ljava/lang/Long;

    invoke-static {v9, v10}, Lcom/andrew/apollo/loaders/AlbumSongLoader;->makeAlbumSongCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v9

    iput-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    .line 69
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 72
    :cond_0
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 75
    .local v1, id:J
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, songName:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, artist:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, album:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 87
    .local v7, duration:J
    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    long-to-int v6, v9

    .line 90
    .local v6, seconds:I
    new-instance v0, Lcom/andrew/apollo/model/Song;

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Song;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .local v0, song:Lcom/andrew/apollo/model/Song;
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    .end local v0           #song:Lcom/andrew/apollo/model/Song;
    .end local v1           #id:J
    .end local v3           #songName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #album:Ljava/lang/String;
    .end local v6           #seconds:I
    .end local v7           #duration:J
    :cond_1
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_2

    .line 98
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 99
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mCursor:Landroid/database/Cursor;

    .line 101
    :cond_2
    iget-object v9, p0, Lcom/andrew/apollo/loaders/AlbumSongLoader;->mSongList:Ljava/util/ArrayList;

    return-object v9
.end method
