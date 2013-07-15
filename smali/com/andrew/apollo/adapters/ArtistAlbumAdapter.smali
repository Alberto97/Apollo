.class public Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ArtistAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/andrew/apollo/model/Album;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Landroid/view/View;

.field private final mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 81
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mCount:Ljava/util/List;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mHeader:Landroid/view/View;

    .line 96
    iput p2, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mLayoutId:I

    .line 98
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 99
    return-void
.end method

.method private playAlbum(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "album"
    .parameter "position"

    .prologue
    .line 197
    new-instance v0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter$1;-><init>(Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageFetcher;->flush()V

    .line 245
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mCount:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    .local v0, size:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const-wide/16 v0, -0x1

    .line 168
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mHeader:Landroid/view/View;

    .line 140
    :goto_0
    return-object v0

    .line 114
    :cond_0
    if-nez p2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mLayoutId:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    new-instance v7, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v7, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 118
    .local v7, holder:Lcom/andrew/apollo/ui/MusicHolder;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 119
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    :goto_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/model/Album;

    .line 126
    .local v6, album:Lcom/andrew/apollo/model/Album;
    iget-object v2, v6, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    .line 129
    .local v2, albumName:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0002

    iget v4, v6, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    invoke-static {v1, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/andrew/apollo/model/Album;->mYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v1, v6, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    iget-wide v3, v6, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    iget-object v5, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 139
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->playAlbum(Landroid/widget/ImageView;I)V

    move-object v0, p2

    .line 140
    goto :goto_0

    .line 121
    .end local v2           #albumName:Ljava/lang/String;
    .end local v6           #album:Lcom/andrew/apollo/model/Album;
    .end local v7           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v7       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public setCount(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Album;>;"
    iput-object p1, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mCount:Ljava/util/List;

    .line 238
    return-void
.end method

.method public setPauseDiskCache(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageFetcher;->setPauseDiskCache(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->clear()V

    .line 213
    return-void
.end method
