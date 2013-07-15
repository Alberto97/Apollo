.class public Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;,
        Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;
    }
.end annotation


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtSmall:Landroid/widget/ImageView;

.field private mArtistName:Landroid/widget/TextView;

.field private mAudioPlayerHeader:Landroid/widget/LinearLayout;

.field private mCurrentTime:Landroid/widget/TextView;

.field private final mFastForwardListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

.field private mFromTouch:Z

.field private mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private mIsPaused:Z

.field private mLastSeekEventTime:J

.field private mNextButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

.field private final mOpenAlbumProfile:Landroid/view/View$OnClickListener;

.field private mPageContainer:Landroid/widget/FrameLayout;

.field private mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

.field private mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

.field private mPlaybackStatus:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;

.field private mPosOverride:J

.field private mPreviousButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

.field private mProgress:Landroid/widget/SeekBar;

.field private mQueueSwitch:Landroid/widget/ImageView;

.field private mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

.field private mResources:Lcom/andrew/apollo/utils/ThemeUtils;

.field private final mRewindListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

.field private final mScrollToCurrentSong:Landroid/view/View$OnClickListener;

.field private mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

.field private mStartSeekPos:J

.field private mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

.field private final mToggleHiddenPanel:Landroid/view/View$OnClickListener;

.field private mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    .line 153
    iput-boolean v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mIsPaused:Z

    .line 155
    iput-boolean v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFromTouch:Z

    .line 795
    new-instance v0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$2;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRewindListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    .line 808
    new-instance v0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$3;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFastForwardListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    .line 822
    new-instance v0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$4;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mToggleHiddenPanel:Landroid/view/View$OnClickListener;

    .line 846
    new-instance v0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$5;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mOpenAlbumProfile:Landroid/view/View$OnClickListener;

    .line 858
    new-instance v0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$6;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mScrollToCurrentSong:Landroid/view/View$OnClickListener;

    .line 896
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updateNowPlayingInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/PlayPauseButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/RepeatButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/widgets/ShuffleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mOpenAlbumProfile:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAudioPlayerHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->showAlbumArt()V

    return-void
.end method

.method static synthetic access$600(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mScrollToCurrentSong:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)Lcom/andrew/apollo/adapters/PagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->refreshCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->queueNextRefresh(J)V

    return-void
.end method

.method private fade(Landroid/view/View;F)V
    .locals 4
    .parameter "v"
    .parameter "alpha"

    .prologue
    .line 742
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 743
    .local v0, fade:Landroid/animation/ObjectAnimator;
    const v1, 0x10a0004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 746
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 747
    return-void
.end method

.method private initPlaybackControls()V
    .locals 3

    .prologue
    .line 456
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    .line 458
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v2, "audio_player_pager_container"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAudioPlayerHeader:Landroid/widget/LinearLayout;

    .line 464
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAudioPlayerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mOpenAlbumProfile:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 468
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mToggleHiddenPanel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    .line 473
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const-class v1, Lcom/andrew/apollo/ui/fragments/QueueFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 476
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 478
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 480
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 482
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/PlayPauseButton;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    .line 484
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ShuffleButton;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    .line 486
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/RepeatButton;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    .line 488
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/RepeatingImageButton;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPreviousButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

    .line 490
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/RepeatingImageButton;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mNextButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

    .line 492
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTrackName:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mArtistName:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArt:Landroid/widget/ImageView;

    .line 498
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArtSmall:Landroid/widget/ImageView;

    .line 500
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTotalTime:Landroid/widget/TextView;

    .line 504
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mQueueSwitch:Landroid/widget/ImageView;

    .line 506
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mQueueSwitch:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const-string v2, "btn_switch_queue"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mProgress:Landroid/widget/SeekBar;

    .line 511
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPreviousButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRewindListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setRepeatListener(Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;)V

    .line 513
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mNextButton:Lcom/andrew/apollo/widgets/RepeatingImageButton;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFastForwardListener:Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/RepeatingImageButton;->setRepeatListener(Lcom/andrew/apollo/widgets/RepeatingImageButton$RepeatListener;)V

    .line 515
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 516
    return-void
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 597
    iget-boolean v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mIsPaused:Z

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->removeMessages(I)V

    .line 600
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshCurrentTime()J
    .locals 13

    .prologue
    .line 690
    sget-object v9, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v9, :cond_1

    .line 691
    const-wide/16 v3, 0x1f4

    .line 734
    :cond_0
    :goto_0
    return-wide v3

    .line 694
    :cond_1
    :try_start_0
    iget-wide v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->position()J

    move-result-wide v0

    .line 695
    .local v0, pos:J
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-ltz v9, :cond_6

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 696
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {p0, v10, v11}, Lcom/andrew/apollo/utils/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v11

    div-long/2addr v9, v11

    long-to-int v2, v9

    .line 698
    .local v2, progress:I
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 700
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 701
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    .end local v2           #progress:I
    :goto_2
    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x3e8

    rem-long v11, v0, v11

    sub-long v3, v9, v11

    .line 719
    .local v3, remaining:J
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getWidth()I

    move-result v8

    .line 720
    .local v8, width:I
    if-nez v8, :cond_2

    .line 721
    const/16 v8, 0x140

    .line 723
    :cond_2
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v9

    int-to-long v11, v8

    div-long v5, v9, v11

    .line 724
    .local v5, smoothrefreshtime:J
    cmp-long v9, v5, v3

    if-gtz v9, :cond_0

    .line 727
    const-wide/16 v9, 0x14

    cmp-long v9, v5, v9

    if-gez v9, :cond_7

    .line 728
    const-wide/16 v3, 0x14

    goto :goto_0

    .line 694
    .end local v0           #pos:J
    .end local v3           #remaining:J
    .end local v5           #smoothrefreshtime:J
    .end local v8           #width:I
    :cond_3
    iget-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    goto :goto_1

    .line 704
    .restart local v0       #pos:J
    .restart local v2       #progress:I
    :cond_4
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    .line 705
    .local v7, vis:I
    iget-object v10, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    const-wide/16 v3, 0x1f4

    goto :goto_0

    .line 705
    :cond_5
    const/4 v9, 0x4

    goto :goto_3

    .line 710
    .end local v2           #progress:I
    .end local v7           #vis:I
    :cond_6
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v10, "--:--"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v9, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mProgress:Landroid/widget/SeekBar;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 731
    .end local v0           #pos:J
    :catch_0
    move-exception v9

    .line 734
    const-wide/16 v3, 0x1f4

    goto/16 :goto_0

    .restart local v0       #pos:J
    .restart local v3       #remaining:J
    .restart local v5       #smoothrefreshtime:J
    .restart local v8       #width:I
    :cond_7
    move-wide v3, v5

    .line 730
    goto/16 :goto_0
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 611
    sget-object v4, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v4, :cond_0

    .line 644
    :goto_0
    return-void

    .line 614
    :cond_0
    if-nez p1, :cond_1

    .line 615
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    .line 616
    iput-wide v10, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    goto :goto_0

    .line 618
    :cond_1
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 620
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 625
    :goto_1
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 626
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    .line 628
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->previous(Landroid/content/Context;)V

    .line 629
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v0

    .line 630
    .local v0, duration:J
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    .line 631
    add-long/2addr v2, v0

    .line 633
    .end local v0           #duration:J
    :cond_2
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 634
    :cond_3
    invoke-static {v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->seek(J)V

    .line 635
    iput-wide p2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    .line 637
    :cond_4
    if-ltz p1, :cond_6

    .line 638
    iput-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    .line 642
    :goto_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->refreshCurrentTime()J

    goto :goto_0

    .line 623
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 640
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 653
    sget-object v4, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v4, :cond_0

    .line 686
    :goto_0
    return-void

    .line 656
    :cond_0
    if-nez p1, :cond_1

    .line 657
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    .line 658
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    goto :goto_0

    .line 660
    :cond_1
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 662
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 667
    :goto_1
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 668
    .local v2, newpos:J
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v0

    .line 669
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 671
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->next()V

    .line 672
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mStartSeekPos:J

    .line 673
    sub-long/2addr v2, v0

    .line 675
    :cond_2
    iget-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 676
    :cond_3
    invoke-static {v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->seek(J)V

    .line 677
    iput-wide p2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    .line 679
    :cond_4
    if-ltz p1, :cond_6

    .line 680
    iput-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    .line 684
    :goto_2
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->refreshCurrentTime()J

    goto :goto_0

    .line 665
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 682
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    goto :goto_2
.end method

.method private shareCurrentTrack()V
    .locals 5

    .prologue
    .line 779
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 783
    const v1, 0x7f090068

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 786
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showAlbumArt()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArtSmall:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mQueueSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->fade(Landroid/view/View;F)V

    .line 759
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArt:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->fade(Landroid/view/View;F)V

    .line 760
    return-void
.end method

.method private startPlayback()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 544
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v7, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 549
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 552
    .local v0, handled:Z
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 553
    invoke-static {p0, v6}, Lcom/andrew/apollo/utils/MusicUtils;->playFile(Landroid/content/Context;Landroid/net/Uri;)V

    .line 554
    const/4 v0, 0x1

    .line 573
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 575
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v7}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 577
    iget-object v7, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/andrew/apollo/ui/fragments/QueueFragment;

    invoke-virtual {v7}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->refreshQueue()V

    goto :goto_0

    .line 555
    :cond_3
    const-string v7, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 556
    const-string v7, "playlistId"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 557
    .local v1, id:J
    cmp-long v7, v1, v10

    if-gez v7, :cond_4

    .line 558
    const-string v7, "playlist"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, idString:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 561
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 567
    .end local v3           #idString:Ljava/lang/String;
    :cond_4
    :goto_2
    cmp-long v7, v1, v10

    if-ltz v7, :cond_2

    .line 568
    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    .line 569
    const/4 v0, 0x1

    goto :goto_1

    .line 562
    .restart local v3       #idString:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method private updateNowPlayingInfo()V
    .locals 5

    .prologue
    .line 523
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTrackName:Landroid/widget/TextView;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mArtistName:Landroid/widget/TextView;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->loadCurrentArtwork(Landroid/widget/ImageView;)V

    .line 531
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArtSmall:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->loadCurrentArtwork(Landroid/widget/ImageView;)V

    .line 533
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->queueNextRefresh(J)V

    .line 535
    return-void
.end method

.method private updatePlaybackControls()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlayPauseButton:Lcom/andrew/apollo/widgets/PlayPauseButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/PlayPauseButton;->updateState()V

    .line 588
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mShuffleButton:Lcom/andrew/apollo/widgets/ShuffleButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ShuffleButton;->updateShuffleState()V

    .line 590
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mRepeatButton:Lcom/andrew/apollo/widgets/RepeatButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/RepeatButton;->updateRepeatState()V

    .line 591
    return-void
.end method


# virtual methods
.method public hideAlbumArt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 766
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mQueueSwitch:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArtSmall:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mAlbumArt:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->fade(Landroid/view/View;F)V

    .line 772
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPageContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->fade(Landroid/view/View;F)V

    .line 773
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 377
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 378
    invoke-static {p0}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    .line 379
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    new-instance v1, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 167
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/utils/ThemeUtils;->setOverflowStyle(Landroid/app/Activity;)V

    .line 170
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->overridePendingTransition(II)V

    .line 173
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 176
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 179
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 182
    new-instance v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    .line 185
    new-instance v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;

    .line 188
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 189
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->themeActionBar(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->setContentView(I)V

    .line 196
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->initPlaybackControls()V

    .line 197
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f000a

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v3, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setSearchIcon(Landroid/view/Menu;)V

    .line 295
    const v3, 0x7f0d009e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 297
    .local v1, searchView:Landroid/widget/SearchView;
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 298
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 299
    .local v2, searchableInfo:Landroid/app/SearchableInfo;
    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 301
    new-instance v3, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$1;-><init>(Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 320
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f000b

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 324
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0f

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 325
    const/4 v3, 0x1

    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mIsPaused:Z

    .line 435
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mTimeHandler:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$TimeHandler;->removeMessages(I)V

    .line 437
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 444
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 205
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->startPlayback()V

    .line 206
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 369
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 336
    :sswitch_0
    invoke-static {p0}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    move v0, v1

    .line 337
    goto :goto_0

    .line 340
    :sswitch_1
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->shuffleAll(Landroid/content/Context;)V

    .line 342
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/QueueFragment;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->refreshQueue()V

    move v0, v1

    .line 343
    goto :goto_0

    .line 347
    :sswitch_2
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->toggleFavorite()V

    .line 348
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->invalidateOptionsMenu()V

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :sswitch_3
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    move v0, v1

    .line 353
    goto :goto_0

    .line 356
    :sswitch_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->shareCurrentTrack()V

    move v0, v1

    .line 357
    goto :goto_0

    .line 360
    :sswitch_5
    invoke-static {p0}, Lcom/andrew/apollo/utils/NavUtils;->openEffectsPanel(Landroid/app/Activity;)V

    move v0, v1

    .line 361
    goto :goto_0

    .line 364
    :sswitch_6
    invoke-static {p0}, Lcom/andrew/apollo/utils/NavUtils;->openSettings(Landroid/app/Activity;)V

    move v0, v1

    .line 365
    goto :goto_0

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d008b -> :sswitch_6
        0x7f0d0098 -> :sswitch_4
        0x7f0d0099 -> :sswitch_5
        0x7f0d009a -> :sswitch_3
        0x7f0d009b -> :sswitch_2
        0x7f0d009f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 278
    const v2, 0x7f0d0099

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 279
    .local v0, effects:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    .end local v0           #effects:Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v2, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setFavoriteIcon(Landroid/view/Menu;)V

    .line 282
    const/4 v2, 0x1

    return v2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 237
    if-eqz p3, :cond_0

    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 241
    .local v0, now:J
    iget-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 242
    iput-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    .line 243
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->duration()J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    .line 244
    iget-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    invoke-static {v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->seek(J)V

    .line 245
    iget-boolean v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFromTouch:Z

    if-nez v2, :cond_0

    .line 247
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 388
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updatePlaybackControls()V

    .line 390
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updateNowPlayingInfo()V

    .line 392
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/fragments/QueueFragment;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->refreshQueue()V

    .line 393
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 213
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 215
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->startPlayback()V

    .line 217
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updatePlaybackControls()V

    .line 219
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->updateNowPlayingInfo()V

    .line 221
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 222
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 230
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v3, "com.andrew.apollo.shufflemodechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v3, "com.andrew.apollo.repeatmodechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v3, "com.andrew.apollo.refresh"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPlaybackStatus:Lcom/andrew/apollo/ui/activities/AudioPlayerActivity$PlaybackStatus;

    invoke-virtual {p0, v3, v0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->refreshCurrentTime()J

    move-result-wide v1

    .line 414
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->queueNextRefresh(J)V

    .line 415
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 416
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mLastSeekEventTime:J

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFromTouch:Z

    .line 259
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 425
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageFetcher;->flush()V

    .line 426
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mPosOverride:J

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;->mFromTouch:Z

    .line 268
    return-void
.end method
