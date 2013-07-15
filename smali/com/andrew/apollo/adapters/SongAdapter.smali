.class public Lcom/andrew/apollo/adapters/SongAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SongAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/andrew/apollo/model/Song;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 59
    iput p2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mLayoutId:I

    .line 60
    return-void
.end method


# virtual methods
.method public buildCache()V
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/SongAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    iput-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/SongAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/adapters/SongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Song;

    .line 117
    .local v1, song:Lcom/andrew/apollo/model/Song;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    new-instance v3, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    invoke-direct {v3}, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;-><init>()V

    aput-object v3, v2, v0

    .line 119
    iget-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v0

    iget-wide v3, v1, Lcom/andrew/apollo/model/Song;->mSongId:J

    iput-wide v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mItemId:J

    .line 121
    iget-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1           #song:Lcom/andrew/apollo/model/Song;
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/SongAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v1, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v1, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 73
    .local v1, holder:Lcom/andrew/apollo/ui/MusicHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v0, v2, p1

    .line 83
    .local v0, dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineTwo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object p2

    .line 76
    .end local v0           #dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    .end local v1           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v1       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/SongAdapter;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/SongAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 133
    return-void
.end method
