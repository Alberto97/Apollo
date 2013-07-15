.class public Lcom/andrew/apollo/loaders/GenreLoader;
.super Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.source "GenreLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Genre;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mGenreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Genre;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mGenreList:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public static final makeGenreCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v6, selection:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/GenreLoader;->loadInBackground()Ljava/util/List;

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
            "Lcom/andrew/apollo/model/Genre;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/GenreLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/loaders/GenreLoader;->makeGenreCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    .line 61
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    :cond_0
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 67
    .local v1, id:J
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, name:Ljava/lang/String;
    new-instance v0, Lcom/andrew/apollo/model/Genre;

    invoke-direct {v0, v1, v2, v3}, Lcom/andrew/apollo/model/Genre;-><init>(JLjava/lang/String;)V

    .line 73
    .local v0, genre:Lcom/andrew/apollo/model/Genre;
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mGenreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    .end local v0           #genre:Lcom/andrew/apollo/model/Genre;
    .end local v1           #id:J
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 79
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mCursor:Landroid/database/Cursor;

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/andrew/apollo/loaders/GenreLoader;->mGenreList:Ljava/util/ArrayList;

    return-object v4
.end method
