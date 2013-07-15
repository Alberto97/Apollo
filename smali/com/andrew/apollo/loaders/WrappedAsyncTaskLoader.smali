.class public abstract Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "WrappedAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    .local p0, this:Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;,"Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;,"Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->mData:Ljava/lang/Object;

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;,"Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 67
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->onStopLoading()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->mData:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 44
    .local p0, this:Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;,"Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader<TD;>;"
    iget-object v0, p0, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->mData:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 57
    .local p0, this:Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;,"Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Lcom/andrew/apollo/loaders/WrappedAsyncTaskLoader;->cancelLoad()Z

    .line 58
    return-void
.end method
