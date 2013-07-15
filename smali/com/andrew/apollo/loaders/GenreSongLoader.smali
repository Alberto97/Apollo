.class public Lcom/andrew/apollo/loaders/GenreSongLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "GenreSongLoader.java"


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
.field private mCursor:Landroid/database/Cursor;

.field private final mGenreID:Ljava/lang/Long;

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
    .parameter "genreId"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mSongList:Ljava/util/ArrayList;

    .line 55
    iput-object p2, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mGenreID:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public static final makeGenreSongCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "genreId"

    .prologue
    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v6, selection:Ljava/lang/StringBuilder;
    const-string v0, "is_music=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, " AND title!=\'\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "album"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "artist"

    aput-object v4, v2, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/GenreSongLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 8
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
    .line 64
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/GenreSongLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mGenreID:Ljava/lang/Long;

    invoke-static {v6, v7}, Lcom/andrew/apollo/loaders/GenreSongLoader;->makeGenreSongCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    .line 66
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 72
    .local v1, id:J
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, songName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, album:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, artist:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Song;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Song;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    .local v0, song:Lcom/andrew/apollo/model/Song;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    .end local v0           #song:Lcom/andrew/apollo/model/Song;
    .end local v1           #id:J
    .end local v3           #songName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #album:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 89
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mCursor:Landroid/database/Cursor;

    .line 92
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/loaders/GenreSongLoader;->mSongList:Ljava/util/ArrayList;

    return-object v6
.end method
