.class public Lcom/andrew/apollo/widgets/CarouselTab;
.super Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;
.source "CarouselTab.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlphaLayer:Landroid/view/View;

.field private mColorstrip:Landroid/view/View;

.field private final mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private mLabelView:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 57
    return-void
.end method


# virtual methods
.method public blurPhoto(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "artist"
    .parameter "album"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v2, p2}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, artistImage:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v2, p3}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :cond_0
    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/CarouselTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020026

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    :cond_1
    invoke-static {v0}, Lcom/andrew/apollo/utils/BitmapUtils;->createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, blur:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    return-void
.end method

.method public fetchAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "album"

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->removeFromCache(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-static {p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlbumArt:Landroid/widget/ImageView;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getAlbumArt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->onFinishInflate()V

    .line 65
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlbumArt:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mLabelView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlphaLayer:Landroid/view/View;

    .line 69
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mColorstrip:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlphaLayer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/CarouselTab;->setAlphaLayer(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public setAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "album"

    .prologue
    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlbumArt:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-static {p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForAlbum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mAlbumArt:Landroid/widget/ImageView;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setArtistAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artist"

    .prologue
    .line 166
    invoke-static {p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->getLastAlbumForArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, lastAlbum:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-static {p1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForAlbum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 172
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    new-instance v1, Lcom/andrew/apollo/widgets/CarouselTab$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/andrew/apollo/widgets/CarouselTab$1;-><init>(Lcom/andrew/apollo/widgets/CarouselTab;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setArtistPhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "artist"

    .prologue
    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v1, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setDefault(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public setPlaylistOrGenrePhoto(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "profileName"

    .prologue
    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v1, p2}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    .end local v0           #image:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 199
    .restart local v0       #image:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    .end local v0           #image:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/widgets/CarouselTab;->setDefault(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/andrew/apollo/widgets/FrameLayoutWithOverlay;->setSelected(Z)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mColorstrip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mColorstrip:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDeselectedState()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 232
    return-void
.end method

.method public showSelectedState()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/andrew/apollo/widgets/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 225
    return-void
.end method
