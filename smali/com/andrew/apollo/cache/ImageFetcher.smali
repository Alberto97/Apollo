.class public Lcom/andrew/apollo/cache/ImageFetcher;
.super Lcom/andrew/apollo/cache/ImageWorker;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/cache/ImageFetcher$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/andrew/apollo/cache/ImageFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/cache/ImageFetcher;->sInstance:Lcom/andrew/apollo/cache/ImageFetcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/andrew/apollo/cache/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public static final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 357
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 358
    .local v0, height:I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 359
    .local v4, width:I
    const/4 v1, 0x1

    .line 361
    .local v1, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 362
    :cond_0
    if-le v4, v0, :cond_1

    .line 363
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 375
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 378
    .local v2, totalPixels:F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 380
    .local v3, totalReqPixelsCap:F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    .end local v2           #totalPixels:F
    .end local v3           #totalReqPixelsCap:F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 384
    :cond_2
    return v1
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "filename"

    .prologue
    const/16 v2, 0x400

    .line 324
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 325
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 326
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 329
    invoke-static {v0, v2, v2}, Lcom/andrew/apollo/cache/ImageFetcher;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static final downloadBitmapToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "context"
    .parameter "urlString"
    .parameter "uniqueName"

    .prologue
    const/4 v10, 0x0

    .line 269
    invoke-static {p0, p2}, Lcom/andrew/apollo/cache/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 271
    .local v1, cacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 275
    :cond_0
    const/4 v8, 0x0

    .line 276
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 279
    .local v4, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    const-string v9, "bitmap"

    const/4 v11, 0x0

    invoke-static {v9, v11, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 281
    .local v6, tempFile:Ljava/io/File;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 283
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v9

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_3

    .line 297
    if-eqz v8, :cond_1

    .line 298
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    :cond_1
    if-eqz v4, :cond_2

    .line 302
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    move-object v6, v10

    .line 307
    .end local v6           #tempFile:Ljava/io/File;
    .end local v7           #url:Ljava/net/URL;
    :goto_1
    return-object v6

    .line 286
    .restart local v6       #tempFile:Ljava/io/File;
    .restart local v7       #url:Ljava/net/URL;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v11, 0x400

    invoke-direct {v2, v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 288
    .local v2, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x400

    invoke-direct {v5, v9, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 291
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .local v5, out:Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, oneByte:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    .line 292
    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 295
    .end local v3           #oneByte:I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 297
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .end local v6           #tempFile:Ljava/io/File;
    .end local v7           #url:Ljava/net/URL;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    :goto_3
    if-eqz v8, :cond_4

    .line 298
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    :cond_4
    if-eqz v4, :cond_5

    .line 302
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    move-object v6, v10

    .line 307
    goto :goto_1

    .line 297
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #oneByte:I
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #tempFile:Ljava/io/File;
    .restart local v7       #url:Ljava/net/URL;
    :cond_6
    if-eqz v8, :cond_7

    .line 298
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    :cond_7
    if-eqz v5, :cond_8

    .line 302
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    :goto_5
    move-object v4, v5

    .line 304
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 297
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #oneByte:I
    .end local v6           #tempFile:Ljava/io/File;
    .end local v7           #url:Ljava/net/URL;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v8, :cond_9

    .line 298
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    :cond_9
    if-eqz v4, :cond_a

    .line 302
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 304
    :cond_a
    :goto_7
    throw v9

    .line 303
    .restart local v6       #tempFile:Ljava/io/File;
    .restart local v7       #url:Ljava/net/URL;
    :catch_1
    move-exception v9

    goto :goto_0

    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #oneByte:I
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v9

    goto :goto_5

    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #oneByte:I
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .end local v6           #tempFile:Ljava/io/File;
    .end local v7           #url:Ljava/net/URL;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v9

    goto :goto_4

    :catch_4
    move-exception v10

    goto :goto_7

    .line 297
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #tempFile:Ljava/io/File;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 295
    .end local v2           #in:Ljava/io/InputStream;
    .end local v6           #tempFile:Ljava/io/File;
    .end local v7           #url:Ljava/net/URL;
    :catch_5
    move-exception v9

    goto :goto_3
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageFetcher;
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    sget-object v0, Lcom/andrew/apollo/cache/ImageFetcher;->sInstance:Lcom/andrew/apollo/cache/ImageFetcher;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/cache/ImageFetcher;->sInstance:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 75
    :cond_0
    sget-object v0, Lcom/andrew/apollo/cache/ImageFetcher;->sInstance:Lcom/andrew/apollo/cache/ImageFetcher;

    return-object v0
.end method


# virtual methods
.method public getArtwork(Ljava/lang/String;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "albumName"
    .parameter "albumId"
    .parameter "artistName"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, artwork:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    :cond_0
    if-nez v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p3}, Lcom/andrew/apollo/cache/ImageCache;->getArtworkFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    :cond_1
    if-eqz v0, :cond_2

    .line 256
    .end local v0           #artwork:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0       #artwork:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getDefaultArtwork()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCachedArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "key"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForAlbum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/andrew/apollo/cache/ImageCache;->getCachedArtwork(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getDefaultArtwork()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getDefaultArtwork()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public loadAlbumImage(Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;)V
    .locals 8
    .parameter "artistName"
    .parameter "albumName"
    .parameter "albumId"
    .parameter "imageView"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/andrew/apollo/cache/ImageFetcher;->loadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V

    .line 153
    return-void
.end method

.method public loadArtistImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 8
    .parameter "key"
    .parameter "imageView"

    .prologue
    .line 168
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    sget-object v7, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ARTIST:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/andrew/apollo/cache/ImageFetcher;->loadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V

    .line 169
    return-void
.end method

.method public loadCurrentArtwork(Landroid/widget/ImageView;)V
    .locals 8
    .parameter "imageView"

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v4

    sget-object v7, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/andrew/apollo/cache/ImageFetcher;->loadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)V

    .line 162
    return-void
.end method

.method protected processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p1, :cond_1

    move-object v0, v2

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    const-string v4, "http"

    invoke-static {v3, p1, v4}, Lcom/andrew/apollo/cache/ImageFetcher;->downloadBitmapToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 87
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/cache/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    if-nez v0, :cond_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, v2

    .line 95
    goto :goto_0
.end method

.method protected processImageUrl(Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/cache/ImageWorker$ImageType;)Ljava/lang/String;
    .locals 8
    .parameter "artistName"
    .parameter "albumName"
    .parameter "imageType"

    .prologue
    .line 104
    sget-object v6, Lcom/andrew/apollo/cache/ImageFetcher$1;->$SwitchMap$com$andrew$apollo$cache$ImageWorker$ImageType:[I

    invoke-virtual {p3}, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 143
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 106
    :pswitch_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->downloadMissingArtistImages()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/andrew/apollo/lastfm/Artist;->getImages(Landroid/content/Context;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/PaginatedResult;

    move-result-object v3

    .line 110
    .local v3, paginatedResult:Lcom/andrew/apollo/lastfm/PaginatedResult;,"Lcom/andrew/apollo/lastfm/PaginatedResult<Lcom/andrew/apollo/lastfm/Image;>;"
    if-eqz v3, :cond_0

    .line 111
    iget-object v6, v3, Lcom/andrew/apollo/lastfm/PaginatedResult;->pageResults:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/Image;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/lastfm/Image;

    .line 114
    .local v4, temp:Lcom/andrew/apollo/lastfm/Image;
    sget-object v6, Lcom/andrew/apollo/lastfm/ImageSize;->EXTRALARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    invoke-virtual {v4, v6}, Lcom/andrew/apollo/lastfm/Image;->getImageURL(Lcom/andrew/apollo/lastfm/ImageSize;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_1

    goto :goto_0

    .line 124
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/Image;>;"
    .end local v3           #paginatedResult:Lcom/andrew/apollo/lastfm/PaginatedResult;,"Lcom/andrew/apollo/lastfm/PaginatedResult<Lcom/andrew/apollo/lastfm/Image;>;"
    .end local v4           #temp:Lcom/andrew/apollo/lastfm/Image;
    .end local v5           #url:Ljava/lang/String;
    :pswitch_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/andrew/apollo/utils/PreferenceUtils;->downloadMissingArtwork()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/andrew/apollo/lastfm/Artist;->getCorrection(Landroid/content/Context;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Artist;

    move-result-object v1

    .line 127
    .local v1, correction:Lcom/andrew/apollo/lastfm/Artist;
    if-eqz v1, :cond_0

    .line 128
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/andrew/apollo/lastfm/Artist;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lcom/andrew/apollo/lastfm/Album;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Album;

    move-result-object v0

    .line 130
    .local v0, album:Lcom/andrew/apollo/lastfm/Album;
    if-eqz v0, :cond_0

    .line 131
    sget-object v6, Lcom/andrew/apollo/lastfm/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    invoke-virtual {v0, v6}, Lcom/andrew/apollo/lastfm/Album;->getImageURL(Lcom/andrew/apollo/lastfm/ImageSize;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .restart local v5       #url:Ljava/lang/String;
    if-eqz v5, :cond_0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeFromCache(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageCache;->removeFromCache(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setPauseDiskCache(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageFetcher;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/cache/ImageCache;->setPauseDiskCache(Z)V

    .line 186
    :cond_0
    return-void
.end method
