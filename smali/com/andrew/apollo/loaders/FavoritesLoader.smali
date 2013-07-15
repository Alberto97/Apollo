.class public Lcom/andrew/apollo/loaders/FavoritesLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "FavoritesLoader.java"


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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mSongList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public static final makeFavoritesCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/provider/FavoritesStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "favorites"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "songid as _id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "songid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "songname"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "albumname"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "artistname"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "playcount"

    aput-object v5, v2, v4

    const-string v7, "playcount DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/FavoritesLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 9
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
    .line 57
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/FavoritesLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/andrew/apollo/loaders/FavoritesLoader;->makeFavoritesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    .line 59
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    :cond_0
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "songid"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 67
    .local v1, id:J
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "songname"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, songName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "artistname"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, artist:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "albumname"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, album:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Song;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Song;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .local v0, song:Lcom/andrew/apollo/model/Song;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    .end local v0           #song:Lcom/andrew/apollo/model/Song;
    .end local v1           #id:J
    .end local v3           #songName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #album:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mCursor:Landroid/database/Cursor;

    .line 90
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/loaders/FavoritesLoader;->mSongList:Ljava/util/ArrayList;

    return-object v6
.end method
