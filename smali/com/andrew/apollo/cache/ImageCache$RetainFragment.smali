.class public final Lcom/andrew/apollo/cache/ImageCache$RetainFragment;
.super Landroid/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 718
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 727
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 728
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 737
    return-void
.end method
