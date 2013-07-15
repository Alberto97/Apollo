.class public final Lcom/andrew/apollo/cache/ImageCache$MemoryCache;
.super Lcom/andrew/apollo/cache/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/cache/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSize"

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/andrew/apollo/cache/LruCache;-><init>(I)V

    .line 761
    return-void
.end method

.method public static final getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 767
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "paramString"
    .parameter "paramBitmap"

    .prologue
    .line 775
    invoke-static {p2}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
