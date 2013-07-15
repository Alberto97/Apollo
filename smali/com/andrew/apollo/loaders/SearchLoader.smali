.class public Lcom/andrew/apollo/loaders/SearchLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "SearchLoader.java"


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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "query"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mSongList:Ljava/util/ArrayList;

    .line 51
    invoke-static {p1, p2}, Lcom/andrew/apollo/loaders/SearchLoader;->makeSearchCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    .line 52
    return-void
.end method

.method public static final makeSearchCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/search/fancy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "data2"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/SearchLoader;->loadInBackground()Ljava/util/List;

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
    const-wide/16 v9, 0x0

    .line 60
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 63
    :cond_0
    const-wide/16 v1, -0x1

    .line 66
    .local v1, id:J
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "title"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, songName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 76
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "album"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, album:Ljava/lang/String;
    cmp-long v6, v1, v9

    if-gez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 86
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "artist"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, artist:Ljava/lang/String;
    cmp-long v6, v1, v9

    if-gez v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 91
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 96
    :cond_3
    new-instance v0, Lcom/andrew/apollo/model/Song;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Song;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .local v0, song:Lcom/andrew/apollo/model/Song;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    .end local v0           #song:Lcom/andrew/apollo/model/Song;
    .end local v1           #id:J
    .end local v3           #songName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #album:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_5

    .line 104
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mCursor:Landroid/database/Cursor;

    .line 107
    :cond_5
    iget-object v6, p0, Lcom/andrew/apollo/loaders/SearchLoader;->mSongList:Ljava/util/ArrayList;

    return-object v6
.end method
