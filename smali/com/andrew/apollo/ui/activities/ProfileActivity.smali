.class public Lcom/andrew/apollo/ui/activities/ProfileActivity;
.super Lcom/andrew/apollo/ui/activities/BaseActivity;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mArtistName:Ljava/lang/String;

.field private mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

.field private mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

.field private mProfileName:Ljava/lang/String;

.field private mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

.field private mType:Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/andrew/apollo/ui/activities/ProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method private getAlbumSongFragment()Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    return-object v0
.end method

.method private getArtistAlbumFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    return-object v0
.end method

.method private getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    return-object v0
.end method

.method private goBack()V
    .locals 0

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->finish()V

    .line 614
    return-void
.end method

.method private final isAlbum()Z
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.dir/albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isArtist()Z
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.dir/artists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isArtistAlbumPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 667
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isArtistSongPage()Z
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isFavorites()Z
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isGenre()Z
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.dir/genre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isLastAdded()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isPlaylist()Z
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeFromCache()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    .line 599
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    .line 604
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v1, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->removeFromCache(Ljava/lang/String;)V

    .line 606
    const-wide/16 v1, 0x50

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 607
    return-void

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public fetchAlbumArt()V
    .locals 2

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->removeFromCache()V

    .line 576
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->fetchAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public googleSearch()V
    .locals 4

    .prologue
    .line 583
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    .line 584
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    .line 589
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, googleSearch:Landroid/content/Intent;
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 592
    return-void

    .line 586
    .end local v0           #googleSearch:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 501
    invoke-super {p0, p1, p2, p3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 502
    if-ne p1, v4, :cond_1

    .line 503
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 504
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 505
    .local v1, selectedImage:Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 509
    .local v2, filePathColumn:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 511
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    aget-object v0, v2, v11

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 513
    .local v7, columnIndex:I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, picturePath:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v8, 0x0

    .line 517
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    .line 518
    .local v9, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    .line 524
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/andrew/apollo/cache/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 525
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0, v9, v6}, Lcom/andrew/apollo/cache/ImageFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 526
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getAlbumArt()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    .end local v1           #selectedImage:Landroid/net/Uri;
    .end local v2           #filePathColumn:[Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #columnIndex:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #picturePath:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 520
    .restart local v1       #selectedImage:Landroid/net/Uri;
    .restart local v2       #filePathColumn:[Ljava/lang/String;
    .restart local v7       #columnIndex:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #picturePath:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "album"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 529
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 533
    .end local v1           #selectedImage:Landroid/net/Uri;
    .end local v2           #filePathColumn:[Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #columnIndex:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #picturePath:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->selectOldPhoto()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onBackPressed()V

    .line 422
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->goBack()V

    .line 423
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->setRequestedOrientation(I)V

    .line 114
    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    .line 117
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 120
    if-eqz p1, :cond_3

    :goto_0
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v1, "artist_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    .line 131
    :cond_1
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    .line 134
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 135
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->reset()V

    .line 136
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity$1;-><init>(Lcom/andrew/apollo/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 157
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setArtistProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    .line 228
    :cond_2
    :goto_1
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 230
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 232
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 234
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 236
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setListener(Lcom/andrew/apollo/widgets/ProfileTabCarousel$Listener;)V

    .line 237
    return-void

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    .line 170
    :cond_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setAlbumProfileHeader(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v2, "album_year"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setSubtitle(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_5
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isFavorites()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/FavoriteFragment;

    invoke-virtual {v0, v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 191
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_6
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isLastAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;

    invoke-virtual {v0, v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_7
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isPlaylist()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 213
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 216
    :cond_8
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isGenre()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/profile/GenreSongFragment;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 285
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistAlbumPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 404
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 303
    :sswitch_0
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->finish()V

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->goBack()V

    goto :goto_0

    .line 314
    :sswitch_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    .line 315
    .local v3, name:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 316
    .local v0, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mType:Ljava/lang/String;

    invoke-static {v3, v0, v5, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->createShortcutIntent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 314
    .end local v0           #id:Ljava/lang/Long;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    goto :goto_1

    .line 320
    :sswitch_2
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 321
    .local v0, id:J
    const/4 v2, 0x0

    .line 322
    .local v2, list:[J
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 329
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isPlaylist()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 330
    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 325
    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    goto :goto_2

    .line 326
    :cond_5
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isGenre()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 327
    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForGenre(Landroid/content/Context;J)[J

    move-result-object v2

    goto :goto_2

    .line 331
    :cond_6
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isFavorites()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 332
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->playFavorites(Landroid/content/Context;)V

    goto :goto_0

    .line 333
    :cond_7
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isLastAdded()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 334
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->playLastAdded(Landroid/content/Context;)V

    goto :goto_0

    .line 336
    :cond_8
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 337
    const/4 v5, 0x0

    invoke-static {p0, v2, v5, v4}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto/16 :goto_0

    .line 343
    .end local v0           #id:J
    .end local v2           #list:[J
    :sswitch_3
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 344
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "title_key"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 346
    :cond_9
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistAlbumPage()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 347
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "album_key"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistAlbumSortOrder(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistAlbumFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 350
    :cond_a
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "title_key"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSongSortOrder(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getAlbumSongFragment()Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;->refresh()V

    goto/16 :goto_0

    .line 355
    :sswitch_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 356
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "title_key DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 358
    :cond_b
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistAlbumPage()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 359
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "album_key DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistAlbumSortOrder(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistAlbumFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 362
    :cond_c
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "title_key DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSongSortOrder(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getAlbumSongFragment()Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;->refresh()V

    goto/16 :goto_0

    .line 367
    :sswitch_5
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "album"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 373
    :sswitch_6
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 374
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "year DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 376
    :cond_d
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistAlbumPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "minyear DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistAlbumSortOrder(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistAlbumFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 382
    :sswitch_7
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 383
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "duration DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 387
    :cond_e
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "duration DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSongSortOrder(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getAlbumSongFragment()Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;->refresh()V

    goto/16 :goto_0

    .line 392
    :sswitch_8
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtistSongPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "date_added DESC"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSongSortOrder(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getArtistSongFragment()Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/ArtistSongFragment;->refresh()V

    goto/16 :goto_0

    .line 398
    :sswitch_9
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v6, "track, title_key"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSongSortOrder(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getAlbumSongFragment()Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/andrew/apollo/ui/fragments/profile/AlbumSongFragment;->refresh()V

    goto/16 :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d008c -> :sswitch_1
        0x7f0d008e -> :sswitch_3
        0x7f0d008f -> :sswitch_4
        0x7f0d0090 -> :sswitch_7
        0x7f0d0091 -> :sswitch_9
        0x7f0d0092 -> :sswitch_6
        0x7f0d0095 -> :sswitch_5
        0x7f0d0096 -> :sswitch_8
        0x7f0d009f -> :sswitch_2
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/16 v1, 0x4b

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->restoreYCoordinate(II)V

    .line 456
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 435
    :cond_0
    int-to-float v1, p1

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->getAllowedHorizontalScrollLength()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 437
    .local v0, scrollToX:I
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->scrollTo(II)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setCurrentTab(I)V

    .line 446
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageFetcher;->flush()V

    .line 246
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v2, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setAddToHomeScreenIcon(Landroid/view/Menu;)V

    .line 264
    const v2, 0x7f0d009f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 265
    .local v0, shuffle:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 266
    .local v1, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isFavorites()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isLastAdded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isPlaylist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 272
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 269
    :cond_1
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 413
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    sub-int v1, p3, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    .line 486
    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 494
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    .line 466
    :cond_0
    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 476
    :cond_0
    return-void
.end method

.method public selectNewPhoto()V
    .locals 3

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->removeFromCache()V

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 546
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    return-void
.end method

.method public selectOldPhoto()V
    .locals 3

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->removeFromCache()V

    .line 558
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setArtistProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    .line 565
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ProfileActivity;->isAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setAlbumProfileHeader(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ProfileActivity;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/andrew/apollo/widgets/ProfileTabCarousel;->setPlaylistOrGenreProfileHeader(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentView()I
    .locals 1

    .prologue
    .line 253
    const v0, 0x7f030003

    return v0
.end method
