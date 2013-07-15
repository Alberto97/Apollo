.class public final Lcom/andrew/apollo/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/cache/ImageCache$MemoryCache;,
        Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    }
.end annotation


# static fields
.field private static final COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final TAG:Ljava/lang/String;

.field private static final mArtworkUri:Landroid/net/Uri;

.field private static sInstance:Lcom/andrew/apollo/cache/ImageCache;


# instance fields
.field private mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

.field private mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

.field public mPauseDiskAccess:Z

.field private mPauseLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/andrew/apollo/cache/ImageCache;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 103
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/cache/ImageCache;->mArtworkUri:Landroid/net/Uri;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseDiskAccess:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseLock:Ljava/lang/Object;

    .line 112
    invoke-direct {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/ImageCache$MemoryCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/DiskLruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$102(Lcom/andrew/apollo/cache/ImageCache;Lcom/andrew/apollo/cache/DiskLruCache;)Lcom/andrew/apollo/cache/DiskLruCache;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 693
    .local v1, b:B
    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, hex:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 695
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    .end local v1           #b:B
    .end local v3           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static final findOrCreateCache(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageCache;
    .locals 3
    .parameter "activity"

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/cache/ImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/andrew/apollo/cache/ImageCache$RetainFragment;

    move-result-object v1

    .line 237
    .local v1, retainFragment:Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    invoke-virtual {v1}, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/cache/ImageCache;

    .line 240
    .local v0, cache:Lcom/andrew/apollo/cache/ImageCache;
    if-nez v0, :cond_0

    .line 241
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-object v0
.end method

.method public static final findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    .locals 3
    .parameter "fm"

    .prologue
    .line 257
    sget-object v1, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;

    .line 260
    .local v0, retainFragment:Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;

    .end local v0           #retainFragment:Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    invoke-direct {v0}, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;-><init>()V

    .line 262
    .restart local v0       #retainFragment:Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 264
    :cond_0
    return-object v0
.end method

.method public static final getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 628
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/andrew/apollo/cache/ImageCache;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 628
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    sget-object v0, Lcom/andrew/apollo/cache/ImageCache;->sInstance:Lcom/andrew/apollo/cache/ImageCache;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/cache/ImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/cache/ImageCache;->sInstance:Lcom/andrew/apollo/cache/ImageCache;

    .line 125
    :cond_0
    sget-object v0, Lcom/andrew/apollo/cache/ImageCache;->sInstance:Lcom/andrew/apollo/cache/ImageCache;

    return-object v0
.end method

.method public static final getUsableSpace(Ljava/io/File;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 662
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 674
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 675
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 676
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/cache/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 680
    .end local v1           #digest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 677
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 678
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/cache/ImageCache$1;

    invoke-direct {v2, p0, p1}, Lcom/andrew/apollo/cache/ImageCache$1;-><init>(Lcom/andrew/apollo/cache/ImageCache;Landroid/content/Context;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->initLruCache(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public static final isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method private waitUntilUnpaused()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 601
    :goto_0
    iget-boolean v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseDiskAccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 603
    :try_start_1
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    goto :goto_0

    .line 609
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 274
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/cache/ImageCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v5, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    if-eqz v5, :cond_0

    .line 283
    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 286
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/andrew/apollo/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 287
    .local v4, snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    if-nez v4, :cond_3

    .line 288
    iget-object v5, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/andrew/apollo/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 289
    .local v1, editor:Lcom/andrew/apollo/cache/DiskLruCache$Editor;
    if-eqz v1, :cond_2

    .line 290
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 291
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x62

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    invoke-virtual {v1}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->commit()V

    .line 293
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 294
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageCache;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1           #editor:Lcom/andrew/apollo/cache/DiskLruCache$Editor;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 304
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    const/4 v3, 0x0

    goto :goto_0

    .line 297
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v5}, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 299
    .end local v4           #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    if-eqz v3, :cond_0

    .line 304
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 305
    const/4 v3, 0x0

    goto :goto_0

    .line 307
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    :catch_1
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    .end local v4           #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    .local v0, e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 308
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :catch_4
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    .line 303
    if-eqz v3, :cond_4

    .line 304
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6

    .line 305
    const/4 v3, 0x0

    .line 311
    :cond_4
    :goto_2
    throw v5

    .line 307
    :catch_5
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 323
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearCaches()V
    .locals 3

    .prologue
    .line 502
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/cache/ImageCache$4;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/cache/ImageCache$4;-><init>(Lcom/andrew/apollo/cache/ImageCache;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method public evictAll()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->evictAll()V

    .line 555
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 556
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 480
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/cache/ImageCache$3;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/cache/ImageCache$3;-><init>(Lcom/andrew/apollo/cache/ImageCache;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method public final getArtworkFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 451
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_1

    .line 452
    const/4 v0, 0x0

    .line 472
    :cond_0
    :goto_0
    return-object v0

    .line 454
    :cond_1
    const/4 v0, 0x0

    .line 455
    .local v0, artwork:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageCache;->waitUntilUnpaused()V

    .line 457
    :try_start_0
    sget-object v5, Lcom/andrew/apollo/cache/ImageCache;->mArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 458
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 460
    .local v3, parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 462
    .local v2, fileDescriptor:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 468
    .end local v2           #fileDescriptor:Ljava/io/FileDescriptor;
    .end local v3           #parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 470
    .local v1, evict:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageCache;->evictAll()V

    goto :goto_0

    .line 466
    .end local v1           #evict:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 464
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public final getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 358
    if-nez p1, :cond_1

    move-object v0, v5

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 365
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/andrew/apollo/cache/ImageCache;->waitUntilUnpaused()V

    .line 369
    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    if-eqz v6, :cond_4

    .line 371
    const/4 v2, 0x0

    .line 373
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-virtual {v6, v3}, Lcom/andrew/apollo/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 374
    .local v4, snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    if-eqz v4, :cond_3

    .line 375
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_3

    .line 377
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 378
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 387
    if-eqz v2, :cond_0

    .line 388
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v5

    goto :goto_0

    .line 387
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v2, :cond_4

    .line 388
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    :cond_4
    :goto_1
    move-object v0, v5

    .line 394
    goto :goto_0

    .line 383
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 384
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBitmapFromDiskCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    if-eqz v2, :cond_4

    .line 388
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 390
    :catch_2
    move-exception v6

    goto :goto_1

    .line 386
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 387
    if-eqz v2, :cond_5

    .line 388
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 391
    :cond_5
    :goto_2
    throw v5

    .line 390
    .restart local v4       #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v4           #snapshot:Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
    :catch_4
    move-exception v6

    goto :goto_2
.end method

.method public final getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_1

    move-object v0, v1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    if-eqz v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    invoke-virtual {v2, p1}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 344
    .local v0, lruBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .end local v0           #lruBitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, v1

    .line 348
    goto :goto_0
.end method

.method public final getCachedArtwork(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 429
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 440
    :goto_0
    return-object v0

    .line 432
    :cond_1
    invoke-virtual {p0, p2}, Lcom/andrew/apollo/cache/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    .local v0, cachedImage:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_2

    .line 434
    invoke-virtual {p0, p1, p3, p4}, Lcom/andrew/apollo/cache/ImageCache;->getArtworkFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    :cond_2
    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {p0, p2, v0}, Lcom/andrew/apollo/cache/ImageCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 440
    goto :goto_0
.end method

.method public final getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 405
    if-nez p1, :cond_0

    move-object v0, v1

    .line 416
    :goto_0
    return-object v0

    .line 408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, cachedImage:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    :cond_1
    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/cache/ImageCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method public initDiskCache(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/32 v4, 0xa00000

    .line 158
    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-virtual {v2}, Lcom/andrew/apollo/cache/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    :cond_0
    sget-object v2, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/andrew/apollo/cache/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, diskCacheDir:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 164
    :cond_1
    invoke-static {v0}, Lcom/andrew/apollo/cache/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 166
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    :try_start_0
    invoke-static {v0, v2, v3, v4, v5}, Lcom/andrew/apollo/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/andrew/apollo/cache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0           #diskCacheDir:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 167
    .restart local v0       #diskCacheDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public initLruCache(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x4480

    .line 182
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/high16 v2, 0x3e80

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 186
    .local v1, lruCacheSize:I
    new-instance v2, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    invoke-direct {v2, v1}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;-><init>(I)V

    iput-object v2, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    .line 189
    new-instance v2, Lcom/andrew/apollo/cache/ImageCache$2;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/cache/ImageCache$2;-><init>(Lcom/andrew/apollo/cache/ImageCache;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 219
    return-void
.end method

.method public isDiskCachePaused()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseDiskAccess:Z

    return v0
.end method

.method public removeFromCache(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 562
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    invoke-virtual {v1, p1}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/cache/ImageCache;->flush()V

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/andrew/apollo/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPauseDiskCache(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-boolean v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseDiskAccess:Z

    if-eq v0, p1, :cond_0

    .line 590
    iput-boolean p1, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseDiskAccess:Z

    .line 591
    if-nez p1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 595
    :cond_0
    monitor-exit v1

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
