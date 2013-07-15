.class public Lcom/andrew/apollo/loaders/ArtistAlbumLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "ArtistAlbumLoader.java"


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

.field private final mArtistID:Ljava/lang/Long;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 1
    .parameter "context"
    .parameter "artistId"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mAlbumsList:Ljava/util/ArrayList;

    .line 59
    iput-object p2, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mArtistID:Ljava/lang/Long;

    .line 60
    return-void
.end method

.method public static final makeArtistAlbumCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "artistId"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "numsongs"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "minyear"

    aput-object v5, v2, v4

    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/andrew/apollo/utils/PreferenceUtils;->getArtistAlbumSortOrder()Ljava/lang/String;

    move-result-object v5

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
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->loadInBackground()Ljava/util/List;

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
            "Lcom/andrew/apollo/model/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mArtistID:Ljava/lang/Long;

    invoke-static {v7, v8}, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->makeArtistAlbumCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    .line 70
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    :cond_0
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 76
    .local v1, id:J
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, albumName:Ljava/lang/String;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, artist:Ljava/lang/String;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 85
    .local v5, songCount:I
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, year:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Album;

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Album;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mAlbumsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 95
    .end local v0           #album:Lcom/andrew/apollo/model/Album;
    .end local v1           #id:J
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #songCount:I
    .end local v6           #year:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_2

    .line 96
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mCursor:Landroid/database/Cursor;

    .line 99
    :cond_2
    iget-object v7, p0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;->mAlbumsList:Ljava/util/ArrayList;

    return-object v7
.end method
