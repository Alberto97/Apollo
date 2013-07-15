.class public Lcom/andrew/apollo/adapters/PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/adapters/PagerAdapter$1;,
        Lcom/andrew/apollo/adapters/PagerAdapter$Holder;,
        Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    }
.end annotation


# instance fields
.field private final mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mFragmentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/adapters/PagerAdapter$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter "fragmentActivity"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    .line 43
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mHolderList:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 58
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, className:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;-><init>(Lcom/andrew/apollo/adapters/PagerAdapter$1;)V

    .line 70
    .local v0, mHolder:Lcom/andrew/apollo/adapters/PagerAdapter$Holder;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;->mClassName:Ljava/lang/String;

    .line 71
    iput-object p2, v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    .line 73
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    .local v1, mPosition:I
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PagerAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 125
    .local v0, mWeakFragment:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 128
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 87
    .local v0, mWeakFragment:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 90
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .parameter "position"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;

    .line 113
    .local v0, mCurrentHolder:Lcom/andrew/apollo/adapters/PagerAdapter$Holder;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/andrew/apollo/adapters/PagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 115
    .local v1, mFragment:Landroid/support/v4/app/Fragment;
    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 99
    .local v0, mFragment:Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 100
    .local v1, mWeakFragment:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    return-object v0
.end method
