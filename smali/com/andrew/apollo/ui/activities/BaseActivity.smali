.class public abstract Lcom/andrew/apollo/ui/activities/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;
    }
.end annotation


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mArtistName:Landroid/widget/TextView;

.field private mIsBackPressed:Z

.field private final mMusicStateListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/MusicStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenCurrentAlbumProfile:Landroid/view/View$OnClickListener;

.field private final mOpenNowPlaying:Landroid/view/View$OnClickListener;

.field private mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

.field private mPlaybackStatus:Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;

.field private mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

.field protected mResources:Lcom/andrew/apollo/utils/ThemeUtils;

.field private mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

.field private mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

.field private mTrackName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 68
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mIsBackPressed:Z

    .line 355
    new-instance v0, Lcom/andrew/apollo/ui/activities/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity$2;-><init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mOpenCurrentAlbumProfile:Landroid/view/View$OnClickListener;

    .line 377
    new-instance v0, Lcom/andrew/apollo/ui/activities/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity$3;-><init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mOpenNowPlaying:Landroid/view/View$OnClickListener;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/activities/BaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->updateBottomActionBarInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/ui/activities/BaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/PlayPauseButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/RepeatButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/andrew/apollo/ui/activities/BaseActivity;)Lcom/andrew/apollo/widgets/ShuffleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    return-object v0
.end method

.method private initBottomActionBar()V
    .locals 3

    .prologue
    .line 308
    const v1, 0x7f0d0045

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/widgets/PlayPauseButton;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    .line 310
    const v1, 0x7f0d0043

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/widgets/ShuffleButton;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    .line 312
    const v1, 0x7f0d0047

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/widgets/RepeatButton;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    .line 314
    const v1, 0x7f0d004c

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mTrackName:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f0d004d

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mArtistName:Landroid/widget/TextView;

    .line 318
    const v1, 0x7f0d004a

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mAlbumArt:Landroid/widget/ImageView;

    .line 320
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mAlbumArt:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mOpenCurrentAlbumProfile:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 325
    .local v0, bottomActionBar:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mOpenNowPlaying:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method private updateBottomActionBarInfo()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mTrackName:Landroid/widget/TextView;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mArtistName:Landroid/widget/TextView;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->loadCurrentArtwork(Landroid/widget/ImageView;)V

    .line 338
    return-void
.end method

.method private updatePlaybackControls()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->updateState()V

    .line 347
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->updateShuffleState()V

    .line 349
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/RepeatButton;->updateRepeatState()V

    .line 350
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mIsBackPressed:Z

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 131
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/utils/ThemeUtils;->setOverflowStyle(Landroid/app/Activity;)V

    .line 134
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->overridePendingTransition(II)V

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setVolumeControlStream(I)V

    .line 140
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 143
    new-instance v0, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;-><init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;

    .line 146
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->themeActionBar(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setContentView(I)V

    .line 152
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->initBottomActionBar()V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f000a

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0f

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v3, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setSearchIcon(Landroid/view/Menu;)V

    .line 189
    const v3, 0x7f0d009e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 191
    .local v1, searchView:Landroid/widget/SearchView;
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 192
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 193
    .local v2, searchableInfo:Landroid/app/SearchableInfo;
    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 195
    new-instance v3, Lcom/andrew/apollo/ui/activities/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity$1;-><init>(Lcom/andrew/apollo/ui/activities/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 285
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 221
    :pswitch_0
    invoke-static {p0}, Lcom/andrew/apollo/utils/NavUtils;->openSettings(Landroid/app/Activity;)V

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d008b
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 237
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->updatePlaybackControls()V

    .line 239
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->updateBottomActionBarInfo()V

    .line 240
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 160
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 162
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->updatePlaybackControls()V

    .line 164
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->updateBottomActionBarInfo()V

    .line 166
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->invalidateOptionsMenu()V

    .line 167
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "com.andrew.apollo.shufflemodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "com.andrew.apollo.repeatmodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "com.andrew.apollo.refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/BaseActivity$PlaybackStatus;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 260
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 269
    return-void
.end method

.method public abstract setContentView()I
.end method

.method public setMusicStateListenerListener(Lcom/andrew/apollo/MusicStateListener;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/BaseActivity;->mMusicStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    return-void
.end method
