.class public Lcom/andrew/apollo/model/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field public mAlbumId:J

.field public mAlbumName:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mSongNumber:I

.field public mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "songNumber"
    .parameter "albumYear"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    .line 61
    iput-object p3, p0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    .line 63
    iput p5, p0, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    .line 64
    iput-object p6, p0, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 94
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/andrew/apollo/model/Album;

    .line 97
    .local v0, other:Lcom/andrew/apollo/model/Album;
    iget-wide v3, p0, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    iget-wide v5, v0, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_4
    iget-object v3, p0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iget-object v4, v0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 101
    goto :goto_0

    .line 103
    :cond_5
    iget-object v3, p0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    iget-object v4, v0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_6
    iget v3, p0, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    iget v4, v0, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_7
    iget-object v3, p0, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    iget-object v4, v0, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, prime:I
    const/4 v1, 0x1

    .line 74
    .local v1, result:I
    iget-wide v4, p0, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 75
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 76
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 77
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    add-int v1, v2, v4

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 79
    return v1

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method
