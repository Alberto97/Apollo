.class Lcom/andrew/apollo/cache/ImageCache$2;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/cache/ImageCache;->initLruCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/cache/ImageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageCache$2;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 217
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 196
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache$2;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageCache;->evictAll()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache$2;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    #getter for: Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;
    invoke-static {v0}, Lcom/andrew/apollo/cache/ImageCache;->access$000(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$2;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    #getter for: Lcom/andrew/apollo/cache/ImageCache;->mLruCache:Lcom/andrew/apollo/cache/ImageCache$MemoryCache;
    invoke-static {v1}, Lcom/andrew/apollo/cache/ImageCache;->access$000(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/ImageCache$MemoryCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageCache$MemoryCache;->trimToSize(I)V

    goto :goto_0
.end method
