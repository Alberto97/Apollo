.class public Lcom/andrew/apollo/loaders/RecentLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "RecentLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Album;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAlbumsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mAlbumsList:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public static final makeRecentCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/provider/RecentStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "albumhistory"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "albumid as id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "albumid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "itemname"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artistname"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "albumsongcount"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "albumyear"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "timeplayed"

    aput-object v5, v2, v4

    const-string v7, "timeplayed DESC"

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
    .line 31
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/RecentLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/RecentLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/andrew/apollo/loaders/RecentLoader;->makeRecentCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    .line 60
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    :cond_0
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    const-string v9, "albumid"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 67
    .local v1, id:J
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    const-string v9, "itemname"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, albumName:Ljava/lang/String;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    const-string v9, "artistname"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, artist:Ljava/lang/String;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    const-string v9, "albumsongcount"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 79
    .local v5, songCount:I
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    const-string v9, "albumyear"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, year:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Album;

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Album;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mAlbumsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 90
    .end local v0           #album:Lcom/andrew/apollo/model/Album;
    .end local v1           #id:J
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #songCount:I
    .end local v6           #year:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_2

    .line 91
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mCursor:Landroid/database/Cursor;

    .line 94
    :cond_2
    iget-object v7, p0, Lcom/andrew/apollo/loaders/RecentLoader;->mAlbumsList:Ljava/util/ArrayList;

    return-object v7
.end method
