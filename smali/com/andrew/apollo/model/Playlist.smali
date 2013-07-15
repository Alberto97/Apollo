.class public Lcom/andrew/apollo/model/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"


# instance fields
.field public mPlaylistId:J

.field public mPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    .line 42
    iput-object p3, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 63
    const/4 v1, 0x1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/andrew/apollo/model/Playlist;

    .line 72
    .local v0, other:Lcom/andrew/apollo/model/Playlist;
    iget-wide v2, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    iget-wide v4, v0, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    iget-object v2, v0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, prime:I
    const/4 v1, 0x1

    .line 52
    .local v1, result:I
    iget-wide v2, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 53
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 54
    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method
