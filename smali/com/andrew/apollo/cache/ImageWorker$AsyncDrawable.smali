.class final Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;)V
    .locals 1
    .parameter "res"
    .parameter "bitmap"
    .parameter "mBitmapWorkerTask"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;->mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 361
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageWorker$AsyncDrawable;->mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/cache/ImageWorker$BitmapWorkerTask;

    return-object v0
.end method
