.class public Lcom/andrew/apollo/adapters/ProfileSongAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProfileSongAdapter.java"


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
.field private mCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private final mShowDuration:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, p1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 83
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mCount:Ljava/util/List;

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mHeader:Landroid/view/View;

    .line 118
    iput p2, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mLayoutId:I

    .line 120
    iput-boolean v3, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mShowDuration:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "layoutId"
    .parameter "yesToDuration"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 83
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mCount:Ljava/util/List;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mHeader:Landroid/view/View;

    .line 100
    iput p2, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mLayoutId:I

    .line 102
    iput-boolean p3, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mShowDuration:Z

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mCount:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    .local v0, size:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    const-wide/16 v0, -0x1

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mHeader:Landroid/view/View;

    .line 158
    :goto_0
    return-object v2

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 138
    new-instance v0, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v0, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 140
    .local v0, holder:Lcom/andrew/apollo/ui/MusicHolder;
    iget-object v2, v0, Lcom/andrew/apollo/ui/MusicHolder;->mLineThree:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_1
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Song;

    .line 150
    .local v1, song:Lcom/andrew/apollo/model/Song;
    iget-object v2, v0, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-boolean v2, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mShowDuration:Z

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, v0, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/andrew/apollo/model/Song;->mDuration:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v2, p2

    .line 158
    goto :goto_0

    .line 143
    .end local v0           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    .end local v1           #song:Lcom/andrew/apollo/model/Song;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v0       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_1

    .line 156
    .restart local v1       #song:Lcom/andrew/apollo/model/Song;
    :cond_2
    iget-object v2, v0, Lcom/andrew/apollo/ui/MusicHolder;->mLineTwo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public setCount(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Song;>;"
    iput-object p1, p0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->mCount:Ljava/util/List;

    .line 220
    return-void
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->clear()V

    .line 213
    return-void
.end method
