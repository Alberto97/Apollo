.class final Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/activities/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchAdapter"
.end annotation


# instance fields
.field private final mHighlighter:Lcom/andrew/apollo/format/PrefixHighlighter;

.field private final mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private mPrefix:[C


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 435
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 437
    invoke-static {p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 439
    new-instance v0, Lcom/andrew/apollo/format/PrefixHighlighter;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/format/PrefixHighlighter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mHighlighter:Lcom/andrew/apollo/format/PrefixHighlighter;

    .line 440
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "convertView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/andrew/apollo/ui/MusicHolder;

    .line 449
    .local v7, holder:Lcom/andrew/apollo/ui/MusicHolder;
    if-nez v7, :cond_0

    .line 450
    new-instance v7, Lcom/andrew/apollo/ui/MusicHolder;

    .end local v7           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    invoke-direct {v7, p1}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 451
    .restart local v7       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 455
    :cond_0
    const-string v0, "mime_type"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, mimetype:Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 462
    const-string v0, "artist"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, artist:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const-string v0, "data1"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 468
    .local v6, albumCount:I
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0b0001

    invoke-static {p2, v5, v6}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const-string v0, "data2"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 473
    .local v9, songCount:I
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0b0002

    invoke-static {p2, v5, v9}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v1, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 480
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mHighlighter:Lcom/andrew/apollo/format/PrefixHighlighter;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mPrefix:[C

    invoke-virtual {v5, v0, v1, v11}, Lcom/andrew/apollo/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    .line 530
    .end local v1           #artist:Ljava/lang/String;
    .end local v6           #albumCount:I
    .end local v9           #songCount:I
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    const-string v0, "album"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 485
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 489
    .local v3, id:J
    const-string v0, "album"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, album:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const-string v0, "artist"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    .restart local v1       #artist:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v5, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/cache/ImageFetcher;->loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V

    .line 501
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mBackground:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v1, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 504
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mHighlighter:Lcom/andrew/apollo/format/PrefixHighlighter;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mPrefix:[C

    invoke-virtual {v5, v0, v2, v11}, Lcom/andrew/apollo/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    goto :goto_0

    .line 506
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #album:Ljava/lang/String;
    .end local v3           #id:J
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/ogg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/x-ogg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_4
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 509
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f020019

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    const-string v0, "title"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, track:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const-string v0, "album"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    .restart local v2       #album:Ljava/lang/String;
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    const-string v0, "artist"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    .restart local v1       #artist:Ljava/lang/String;
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mBackground:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v1, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 525
    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mHighlighter:Lcom/andrew/apollo/format/PrefixHighlighter;

    iget-object v0, v7, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mPrefix:[C

    invoke-virtual {v5, v0, v10, v11}, Lcom/andrew/apollo/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 537
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setPauseDiskCache(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageFetcher;->setPauseDiskCache(Z)V

    .line 565
    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "prefix"

    .prologue
    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mPrefix:[C

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->mPrefix:[C

    goto :goto_0
.end method
