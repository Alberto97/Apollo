.class public Lcom/andrew/apollo/loaders/ArtistLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "ArtistLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Artist;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mArtistsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Artist;",
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
    .line 52
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mArtistsList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public static final makeArtistCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "number_of_albums"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "number_of_tracks"

    aput-object v5, v2, v4

    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/andrew/apollo/utils/PreferenceUtils;->getArtistSortOrder()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/ArtistLoader;->loadInBackground()Ljava/util/List;

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
            "Lcom/andrew/apollo/model/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/ArtistLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/andrew/apollo/loaders/ArtistLoader;->makeArtistCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    .line 63
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    :cond_0
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 69
    .local v1, id:J
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, artistName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 75
    .local v5, albumCount:I
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    .local v4, songCount:I
    new-instance v0, Lcom/andrew/apollo/model/Artist;

    invoke-direct/range {v0 .. v5}, Lcom/andrew/apollo/model/Artist;-><init>(JLjava/lang/String;II)V

    .line 81
    .local v0, artist:Lcom/andrew/apollo/model/Artist;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mArtistsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    .end local v0           #artist:Lcom/andrew/apollo/model/Artist;
    .end local v1           #id:J
    .end local v3           #artistName:Ljava/lang/String;
    .end local v4           #songCount:I
    .end local v5           #albumCount:I
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 86
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mCursor:Landroid/database/Cursor;

    .line 89
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/loaders/ArtistLoader;->mArtistsList:Ljava/util/ArrayList;

    return-object v6
.end method
