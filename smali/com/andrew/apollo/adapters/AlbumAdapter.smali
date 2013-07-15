.class public Lcom/andrew/apollo/adapters/AlbumAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlbumAdapter.java"


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
.field private mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

.field private final mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private final mLayoutId:I

.field private mLoadExtraData:Z

.field private final mOverlay:I

.field private mTouchPlay:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-boolean v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mLoadExtraData:Z

    .line 69
    iput-boolean v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mTouchPlay:Z

    .line 87
    iput p2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mLayoutId:I

    .line 89
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mOverlay:I

    .line 92
    return-void
.end method

.method private playAlbum(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "album"
    .parameter "position"

    .prologue
    .line 183
    new-instance v0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/andrew/apollo/adapters/AlbumAdapter$1;-><init>(Lcom/andrew/apollo/adapters/AlbumAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method


# virtual methods
.method public buildCache()V
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    iput-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    .line 163
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    new-instance v3, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    invoke-direct {v3}, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;-><init>()V

    aput-object v3, v2, v1

    .line 165
    iget-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    iget-wide v3, v0, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    iput-wide v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mItemId:J

    .line 167
    iget-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0002

    iget v5, v0, Lcom/andrew/apollo/model/Album;->mSongNumber:I

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineThree:Ljava/lang/String;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0           #album:Lcom/andrew/apollo/model/Album;
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageFetcher;->flush()V

    .line 225
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 101
    if-nez p2, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v7, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v7, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 104
    .local v7, holder:Lcom/andrew/apollo/ui/MusicHolder;
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v6, v0, p1

    .line 113
    .local v6, dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v1, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    iget-object v2, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    iget-wide v3, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mItemId:J

    iget-object v5, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 120
    iget-boolean v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mLoadExtraData:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mOverlay:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 124
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineThree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v2, v6, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mBackground:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mTouchPlay:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->playAlbum(Landroid/widget/ImageView;I)V

    .line 132
    :cond_1
    return-object p2

    .line 106
    .end local v6           #dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    .end local v7           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v7       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public setLoadExtraData(Z)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mLoadExtraData:Z

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setTouchPlay(Z)V

    .line 234
    return-void
.end method

.method public setPauseDiskCache(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageFetcher;->setPauseDiskCache(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public setTouchPlay(Z)V
    .locals 0
    .parameter "play"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mTouchPlay:Z

    .line 242
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->clear()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 200
    return-void
.end method
