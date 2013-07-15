.class public Lcom/andrew/apollo/adapters/ArtistAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ArtistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/andrew/apollo/model/Artist;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

.field private final mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private final mLayoutId:I

.field private mLoadExtraData:Z

.field private final mOverlay:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 70
    iput-boolean v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mLoadExtraData:Z

    .line 81
    iput p2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mLayoutId:I

    .line 83
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mOverlay:I

    .line 86
    return-void
.end method

.method private playArtist(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "artist"
    .parameter "position"

    .prologue
    .line 175
    new-instance v0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/andrew/apollo/adapters/ArtistAdapter$1;-><init>(Lcom/andrew/apollo/adapters/ArtistAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method


# virtual methods
.method public buildCache()V
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    iput-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Artist;

    .line 153
    .local v0, artist:Lcom/andrew/apollo/model/Artist;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    new-instance v3, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    invoke-direct {v3}, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;-><init>()V

    aput-object v3, v2, v1

    .line 155
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    iget-wide v3, v0, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    iput-wide v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mItemId:J

    .line 157
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/andrew/apollo/model/Artist;->mArtistName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0001

    iget v5, v0, Lcom/andrew/apollo/model/Artist;->mAlbumNumber:I

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0002

    iget v5, v0, Lcom/andrew/apollo/model/Artist;->mSongNumber:I

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineThree:Ljava/lang/String;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0           #artist:Lcom/andrew/apollo/model/Artist;
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageFetcher;->flush()V

    .line 217
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    if-nez p2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v1, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v1, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 98
    .local v1, holder:Lcom/andrew/apollo/ui/MusicHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v0, v2, p1

    .line 107
    .local v0, dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v4, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 112
    iget-boolean v2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mLoadExtraData:Z

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mOverlay:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 116
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineThree:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v4, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mBackground:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 120
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2, p1}, Lcom/andrew/apollo/adapters/ArtistAdapter;->playArtist(Landroid/widget/ImageView;I)V

    .line 122
    :cond_0
    return-object p2

    .line 100
    .end local v0           #dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    .end local v1           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v1       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public setLoadExtraData(Z)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mLoadExtraData:Z

    .line 225
    return-void
.end method

.method public setPauseDiskCache(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageFetcher;->setPauseDiskCache(Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->clear()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 192
    return-void
.end method
