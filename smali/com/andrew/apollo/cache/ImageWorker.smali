.class public abstract Lcom/andrew/apollo/cache/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/cache/ImageWorker$ImageType;,
        Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;,
        Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# instance fields
.field private final mArrayDrawable:[Landroid/graphics/drawable/Drawable;

.field protected mContext:Landroid/content/Context;

.field private final mCurrentDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private final mDefault:Landroid/graphics/Bitmap;

.field private final mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

.field protected mImageCache:Lcom/andrew/apollo/cache/ImageCache;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 88
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, theme:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v1, "default_artwork"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefault:Landroid/graphics/Bitmap;

    .line 90
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefault:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 93
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 95
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mCurrentDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mArrayDrawable:[Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mArrayDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageWorker;->mCurrentDrawable:Landroid/graphics/drawable/ColorDrawable;

    aput-object v2, v1, v4

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/cache/ImageWorker;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/cache/ImageWorker;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/cache/ImageWorker;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mArrayDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static final executePotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "data"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 311
    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 312
    .local v1, bitmapWorkerTask:Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 313
    #getter for: Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->access$400(Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, bitmapData:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 315
    :cond_0
    invoke-virtual {v1, v2}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 321
    .end local v0           #bitmapData:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 318
    .restart local v0       #bitmapData:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 335
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 336
    check-cast v0, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;

    .line 337
    .local v0, asyncDrawable:Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 340
    .end local v0           #asyncDrawable:Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/cache/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageCache;->flush()V

    .line 130
    :cond_0
    return-void
.end method

.method public getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected loadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V
    .locals 7
    .parameter "key"
    .parameter "artistName"
    .parameter "albumName"
    .parameter "albumId"
    .parameter "imageView"
    .parameter "imageType"

    .prologue
    const/4 v6, 0x0

    .line 384
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v3, :cond_0

    if-nez p6, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v3, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 389
    .local v2, lruBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    if-eqz p6, :cond_2

    .line 391
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 392
    :cond_2
    invoke-static {p1, p6}, Lcom/andrew/apollo/cache/ImageWorker;->executePotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p6, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v3}, Lcom/andrew/apollo/cache/ImageCache;->isDiskCachePaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    new-instance v1, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    invoke-direct {v1, p0, p6, p7}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;-><init>(Lcom/andrew/apollo/cache/ImageWorker;Landroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V

    .line 396
    .local v1, bitmapWorkerTask:Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker;->mDefault:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v1}, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;)V

    .line 398
    .local v0, asyncDrawable:Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;
    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6, v1, v3}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method protected abstract processImageUrl(Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)Ljava/lang/String;
.end method

.method public setImageCache(Lcom/andrew/apollo/cache/ImageCache;)V
    .locals 0
    .parameter "cacheCallback"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    .line 109
    return-void
.end method
