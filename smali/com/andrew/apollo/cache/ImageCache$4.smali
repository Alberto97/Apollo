.class Lcom/andrew/apollo/cache/ImageCache$4;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/cache/ImageCache;->clearCaches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/cache/ImageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageCache$4;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 502
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "unused"

    .prologue
    const/4 v4, 0x0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$4;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    #getter for: Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;
    invoke-static {v1}, Lcom/andrew/apollo/cache/ImageCache;->access$100(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/DiskLruCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$4;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    #getter for: Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;
    invoke-static {v1}, Lcom/andrew/apollo/cache/ImageCache;->access$100(Lcom/andrew/apollo/cache/ImageCache;)Lcom/andrew/apollo/cache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/cache/DiskLruCache;->delete()V

    .line 510
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$4;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    const/4 v2, 0x0

    #setter for: Lcom/andrew/apollo/cache/ImageCache;->mDiskCache:Lcom/andrew/apollo/cache/DiskLruCache;
    invoke-static {v1, v2}, Lcom/andrew/apollo/cache/ImageCache;->access$102(Lcom/andrew/apollo/cache/ImageCache;Lcom/andrew/apollo/cache/DiskLruCache;)Lcom/andrew/apollo/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$4;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    invoke-virtual {v1}, Lcom/andrew/apollo/cache/ImageCache;->evictAll()V

    .line 517
    return-object v4

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/andrew/apollo/cache/ImageCache;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCaches - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
