.class public Lcom/andrew/apollo/adapters/PlaylistAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/andrew/apollo/model/Playlist;",
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
    iput p2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mLayoutId:I

    .line 60
    return-void
.end method


# virtual methods
.method public buildCache()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    iput-object v2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Playlist;

    .line 119
    .local v1, playlist:Lcom/andrew/apollo/model/Playlist;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    new-instance v3, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    invoke-direct {v3}, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;-><init>()V

    aput-object v3, v2, v0

    .line 121
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v0

    iget-wide v3, v1, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    iput-wide v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mItemId:J

    .line 123
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    iput-object v3, v2, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1           #playlist:Lcom/andrew/apollo/model/Playlist;
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 69
    if-nez p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mLayoutId:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v1, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v1, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 73
    .local v1, holder:Lcom/andrew/apollo/ui/MusicHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    aget-object v0, v2, p1

    .line 87
    .local v0, dataHolder:Lcom/andrew/apollo/ui/MusicHolder$DataHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/MusicHolder$DataHolder;->mLineOne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-object p2

    .line 80
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
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mData:[Lcom/andrew/apollo/ui/MusicHolder$DataHolder;

    .line 133
    return-void
.end method
