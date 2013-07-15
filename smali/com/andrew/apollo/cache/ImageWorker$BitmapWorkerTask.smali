.class final Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/TransitionDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private final mImageReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageType:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

.field private mKey:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/andrew/apollo/cache/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/cache/ImageWorker;Landroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "imageType"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 199
    #getter for: Lcom/andrew/apollo/cache/ImageWorker;->mDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageWorker;->access$000(Lcom/andrew/apollo/cache/ImageWorker;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mImageReference:Ljava/lang/ref/WeakReference;

    .line 201
    iput-object p3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mImageType:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    .line 202
    return-void
.end method

.method static synthetic access$400(Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private final getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 284
    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mImageReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 285
    .local v1, imageView:Landroid/widget/ImageView;
    #calls: Lcom/andrew/apollo/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/andrew/apollo/cache/ImageWorker;->access$300(Landroid/widget/ImageView;)Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 286
    .local v0, bitmapWorkerTask:Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 289
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 210
    aget-object v3, p1, v8

    iput-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/cache/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    :cond_0
    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mAlbumId:J

    .line 225
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mImageType:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    sget-object v4, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mAlbumId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v4, v4, Lcom/andrew/apollo/cache/ImageWorker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    iget-wide v6, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mAlbumId:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/andrew/apollo/cache/ImageCache;->getCachedArtwork(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 235
    aget-object v3, p1, v9

    iput-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mArtistName:Ljava/lang/String;

    .line 236
    const/4 v3, 0x2

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mAlbumName:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mArtistName:Ljava/lang/String;

    iget-object v5, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mAlbumName:Ljava/lang/String;

    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mImageType:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/andrew/apollo/cache/ImageWorker;->processImageUrl(Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mUrl:Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/cache/ImageWorker;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v3, v3, Lcom/andrew/apollo/cache/ImageWorker;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v3, :cond_3

    .line 245
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    iget-object v4, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/andrew/apollo/cache/ImageWorker;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 249
    :cond_3
    if-eqz v0, :cond_4

    .line 250
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    #getter for: Lcom/andrew/apollo/cache/ImageWorker;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/andrew/apollo/cache/ImageWorker;->access$100(Lcom/andrew/apollo/cache/ImageWorker;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 251
    .local v1, layerTwo:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 252
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 253
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    #getter for: Lcom/andrew/apollo/cache/ImageWorker;->mArrayDrawable:[Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/andrew/apollo/cache/ImageWorker;->access$200(Lcom/andrew/apollo/cache/ImageWorker;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v1, v3, v9

    .line 256
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/andrew/apollo/cache/ImageWorker;

    #getter for: Lcom/andrew/apollo/cache/ImageWorker;->mArrayDrawable:[Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/andrew/apollo/cache/ImageWorker;->access$200(Lcom/andrew/apollo/cache/ImageWorker;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 257
    .local v2, result:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 258
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 261
    .end local v1           #layerTwo:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #result:Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-object v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 p1, 0x0

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 273
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/TransitionDrawable;)V

    return-void
.end method
