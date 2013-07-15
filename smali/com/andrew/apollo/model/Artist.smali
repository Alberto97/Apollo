.class public Lcom/andrew/apollo/model/Artist;
.super Ljava/lang/Object;
.source "Artist.java"


# instance fields
.field public mAlbumNumber:I

.field public mArtistId:J

.field public mArtistName:Ljava/lang/String;

.field public mSongNumber:I


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .locals 0
    .parameter "artistId"
    .parameter "artistName"
    .parameter "songNumber"
    .parameter "albumNumber"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    .line 55
    iput-object p3, p0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/andrew/apollo/model/Artist;->mSongNumber:I

    .line 57
    iput p5, p0, Lcom/andrew/apollo/model/Artist;->mAlbumNumber:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 86
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/andrew/apollo/model/Artist;

    .line 89
    .local v0, other:Lcom/andrew/apollo/model/Artist;
    iget v3, p0, Lcom/andrew/apollo/model/Artist;->mAlbumNumber:I

    iget v4, v0, Lcom/andrew/apollo/model/Artist;->mAlbumNumber:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    iget-wide v3, p0, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    iget-wide v5, v0, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_5
    iget-object v3, p0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    iget-object v4, v0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_6
    iget v3, p0, Lcom/andrew/apollo/model/Artist;->mSongNumber:I

    iget v4, v0, Lcom/andrew/apollo/model/Artist;->mSongNumber:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, prime:I
    const/4 v1, 0x1

    .line 67
    .local v1, result:I
    iget v2, p0, Lcom/andrew/apollo/model/Artist;->mAlbumNumber:I

    add-int/lit8 v1, v2, 0x1f

    .line 68
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 69
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 70
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/andrew/apollo/model/Artist;->mSongNumber:I

    add-int v1, v2, v3

    .line 71
    return v1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    return-object v0
.end method
