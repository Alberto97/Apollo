.class public Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;
.super Landroid/support/v4/app/Fragment;
.source "MusicBrowserPhoneFragment.java"

# interfaces
.implements Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;


# instance fields
.field private mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

.field private mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

.field private mResources:Lcom/andrew/apollo/utils/ThemeUtils;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    return-void
.end method

.method private getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    return-object v0
.end method

.method private getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    return-object v0
.end method

.method private getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/SongFragment;

    return-object v0
.end method

.method private isAlbumPage()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isArtistPage()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecentPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSongPage()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->setHasOptionsMenu(Z)V

    .line 132
    return-void
.end method

.method public onCenterItemClick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 306
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/ArtistFragment;->scrollToCurrentArtist()V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->scrollToCurrentAlbum()V

    goto :goto_0

    .line 312
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/SongFragment;->scrollToCurrentSong()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v1, 0x7f0f000e

    .line 158
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 160
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    const v0, 0x7f0f000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isRecentPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 171
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 93
    const v7, 0x7f030010

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 97
    .local v6, rootView:Landroid/view/ViewGroup;
    new-instance v7, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    .line 98
    invoke-static {}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->values()[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    move-result-object v4

    .line 99
    .local v4, mFragments:[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    move-object v0, v4

    .local v0, arr$:[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 100
    .local v3, mFragment:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v3           #mFragment:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    :cond_0
    const v7, 0x7f0d0060

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 106
    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v8}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 110
    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    invoke-virtual {v8}, Lcom/andrew/apollo/utils/PreferenceUtils;->getStartPage()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 113
    const v7, 0x7f0d005f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/viewpagerindicator/TitlePageIndicator;

    .line 116
    .local v5, pageIndicator:Lcom/viewpagerindicator/TitlePageIndicator;
    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v7}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 118
    invoke-virtual {v5, p0}, Lcom/viewpagerindicator/TitlePageIndicator;->setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V

    .line 119
    return-object v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 297
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 185
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/andrew/apollo/utils/MusicUtils;->shuffleAll(Landroid/content/Context;)V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->toggleFavorite()V

    .line 191
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "artist_key"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSortOrder(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/ArtistFragment;->refresh()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "album_key"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSortOrder(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->refresh()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "title_key"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto :goto_0

    .line 206
    :pswitch_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "artist_key DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSortOrder(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/ArtistFragment;->refresh()V

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "album_key DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSortOrder(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->refresh()V

    goto :goto_0

    .line 212
    :cond_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "title_key DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto/16 :goto_0

    .line 218
    :pswitch_5
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "artist"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSortOrder(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 221
    :cond_5
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "artist"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "album"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto/16 :goto_0

    .line 233
    :pswitch_7
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 234
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "minyear DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSortOrder(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 236
    :cond_6
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "year DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto/16 :goto_0

    .line 242
    :pswitch_8
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isSongPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "duration DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSongSortOrder(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getSongFragment()Lcom/andrew/apollo/ui/fragments/SongFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/SongFragment;->refresh()V

    goto/16 :goto_0

    .line 248
    :pswitch_9
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "number_of_tracks DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSortOrder(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/ArtistFragment;->refresh()V

    goto/16 :goto_0

    .line 252
    :cond_7
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "numsongs DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumSortOrder(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getAlbumFragment()Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->refresh()V

    goto/16 :goto_0

    .line 258
    :pswitch_a
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "number_of_albums DESC"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistSortOrder(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getArtistFragment()Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/ArtistFragment;->refresh()V

    goto/16 :goto_0

    .line 265
    :pswitch_b
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isRecentPage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 266
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "simple"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setRecentLayout(Ljava/lang/String;)V

    .line 272
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 267
    :cond_9
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 268
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "simple"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistLayout(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_a
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "simple"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumLayout(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :pswitch_c
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isRecentPage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 276
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "detailed"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setRecentLayout(Ljava/lang/String;)V

    .line 282
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 277
    :cond_c
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 278
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "detailed"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistLayout(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_d
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 280
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "detailed"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumLayout(Ljava/lang/String;)V

    goto :goto_2

    .line 285
    :pswitch_d
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isRecentPage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 286
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "grid"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setRecentLayout(Ljava/lang/String;)V

    .line 292
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 287
    :cond_f
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isArtistPage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 288
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "grid"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setArtistLayout(Ljava/lang/String;)V

    goto :goto_3

    .line 289
    :cond_10
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->isAlbumPage()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 290
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    const-string v2, "grid"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->setAlbumLayout(Ljava/lang/String;)V

    goto :goto_3

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d008e
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setStartPage(I)V

    .line 142
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 150
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setFavoriteIcon(Landroid/view/Menu;)V

    .line 151
    return-void
.end method
