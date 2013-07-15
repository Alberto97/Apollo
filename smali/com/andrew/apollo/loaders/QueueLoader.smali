.class public Lcom/andrew/apollo/loaders/QueueLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "QueueLoader.java"


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
.field private mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

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
    .line 46
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mSongList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static final makeQueueCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    new-instance v0, Lcom/andrew/apollo/loaders/NowPlayingCursor;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/loaders/NowPlayingCursor;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/QueueLoader;->loadInBackground()Ljava/util/List;

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
    .line 55
    new-instance v6, Lcom/andrew/apollo/loaders/NowPlayingCursor;

    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/QueueLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/andrew/apollo/loaders/NowPlayingCursor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    .line 57
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    invoke-virtual {v6}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    :cond_0
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->getLong(I)J

    move-result-wide v1

    .line 63
    .local v1, id:J
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, songName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, artist:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, album:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Song;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/model/Song;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .local v0, song:Lcom/andrew/apollo/model/Song;
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    invoke-virtual {v6}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    .end local v0           #song:Lcom/andrew/apollo/model/Song;
    .end local v1           #id:J
    .end local v3           #songName:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v5           #album:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    if-eqz v6, :cond_2

    .line 80
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    invoke-virtual {v6}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->close()V

    .line 81
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mCursor:Lcom/andrew/apollo/loaders/NowPlayingCursor;

    .line 83
    :cond_2
    iget-object v6, p0, Lcom/andrew/apollo/loaders/QueueLoader;->mSongList:Ljava/util/ArrayList;

    return-object v6
.end method
