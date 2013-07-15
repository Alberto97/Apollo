.class public Lcom/andrew/apollo/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;,
        Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;,
        Lcom/andrew/apollo/MusicPlaybackService$Shuffler;,
        Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;,
        Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mShuffler:Lcom/andrew/apollo/MusicPlaybackService$Shuffler;


# instance fields
.field private final mAppWidgetLarge:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

.field private final mAppWidgetLargeAlternate:Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

.field private final mAppWidgetSmall:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mBuildNotification:Z

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field private mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

.field private mEnableLockscreenControls:Z

.field private mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

.field private mFileToPlay:Ljava/lang/String;

.field private mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mMediaButtonReceiverComponent:Landroid/content/ComponentName;

.field private mMediaMountedCount:I

.field private mNextPlayPos:I

.field private mNotificationHelper:Lcom/andrew/apollo/NotificationHelper;

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

.field private mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private final mRecentWidgetProvider:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

.field private mRecentsCache:Lcom/andrew/apollo/provider/RecentStore;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepeatMode:I

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 274
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/andrew/apollo/MusicPlaybackService;->PROJECTION:[Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    .line 289
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;

    invoke-direct {v0}, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;-><init>()V

    sput-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffler:Lcom/andrew/apollo/MusicPlaybackService$Shuffler;

    .line 297
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/andrew/apollo/MusicPlaybackService;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 304
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;

    invoke-direct {v0, p0, v2}, Lcom/andrew/apollo/MusicPlaybackService$ServiceStub;-><init>(Lcom/andrew/apollo/MusicPlaybackService;Lcom/andrew/apollo/MusicPlaybackService$1;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 309
    invoke-static {}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->getInstance()Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetSmall:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    .line 314
    invoke-static {}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->getInstance()Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLarge:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    .line 319
    invoke-static {}, Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;->getInstance()Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLargeAlternate:Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

    .line 325
    invoke-static {}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->getInstance()Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRecentWidgetProvider:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    .line 361
    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z

    .line 366
    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mQueueIsSaveable:Z

    .line 376
    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 381
    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    .line 399
    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 401
    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 403
    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I

    .line 405
    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    .line 407
    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaMountedCount:I

    .line 409
    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    .line 411
    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    .line 413
    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceStartId:I

    .line 415
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    .line 417
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAutoShuffleList:[J

    .line 423
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 2152
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/MusicPlaybackService$3;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2179
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/MusicPlaybackService$4;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2608
    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/MusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLargeAlternate:Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRecentWidgetProvider:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/andrew/apollo/MusicPlaybackService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->handleCommandIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/andrew/apollo/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/andrew/apollo/MusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/andrew/apollo/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    return-void
.end method

.method static synthetic access$1900(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1902(Lcom/andrew/apollo/MusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$2000(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I

    return v0
.end method

.method static synthetic access$202(Lcom/andrew/apollo/MusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/andrew/apollo/MusicPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/andrew/apollo/MusicPlaybackService;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$2300(Lcom/andrew/apollo/MusicPlaybackService;J)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->setNextTrack()V

    return-void
.end method

.method static synthetic access$2500(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$2600(Lcom/andrew/apollo/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$308(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/andrew/apollo/MusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$500(Lcom/andrew/apollo/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getCardId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$700(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetSmall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetSmall:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    return-object v0
.end method

.method static synthetic access$900(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetLarge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLarge:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    return-object v0
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 910
    array-length v0, p1

    .line 911
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 912
    const/4 v3, 0x0

    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 913
    const/4 p2, 0x0

    .line 915
    :cond_0
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/andrew/apollo/MusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 916
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 917
    iget p2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 920
    :cond_1
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 921
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 922
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 921
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 925
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 926
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 928
    :cond_3
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 929
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-nez v3, :cond_4

    .line 930
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 931
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 932
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v3}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 934
    :cond_4
    return-void
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2109
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_1

    .line 2110
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->setRepeatMode(I)V

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-ne v0, v2, :cond_2

    .line 2112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->setRepeatMode(I)V

    .line 2113
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-eqz v0, :cond_0

    .line 2114
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 2117
    :cond_2
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->setRepeatMode(I)V

    goto :goto_0
.end method

.method private cycleShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2125
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-nez v0, :cond_1

    .line 2126
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->setShuffleMode(I)V

    .line 2127
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-ne v0, v1, :cond_0

    .line 2128
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->setRepeatMode(I)V

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2130
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-ne v0, v2, :cond_0

    .line 2131
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->setShuffleMode(I)V

    goto :goto_0
.end method

.method private doAutoShuffleUpdate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1142
    const/4 v3, 0x0

    .line 1143
    .local v3, notify:Z
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 1144
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v5, v5, -0x9

    invoke-virtual {p0, v9, v5}, Lcom/andrew/apollo/MusicPlaybackService;->removeTracks(II)I

    .line 1145
    const/4 v3, 0x1

    .line 1147
    :cond_0
    iget v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gez v5, :cond_2

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v4, v5, 0x7

    .line 1148
    .local v4, toAdd:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1149
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 1150
    .local v2, lookback:I
    const/4 v1, -0x1

    .line 1152
    .local v1, idx:I
    :goto_2
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mShuffler:Lcom/andrew/apollo/MusicPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAutoShuffleList:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 1153
    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->wasRecentlyUsed(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1158
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1159
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    .line 1160
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1162
    :cond_1
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 1163
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    iget-object v7, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAutoShuffleList:[J

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    .line 1164
    const/4 v3, 0x1

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1147
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v2           #lookback:I
    .end local v4           #toAdd:I
    :cond_2
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1156
    .restart local v0       #i:I
    .restart local v1       #idx:I
    .restart local v2       #lookback:I
    .restart local v4       #toAdd:I
    :cond_3
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1166
    .end local v1           #idx:I
    .end local v2           #lookback:I
    :cond_4
    if-eqz v3, :cond_5

    .line 1167
    const-string v5, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1169
    :cond_5
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1196
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 1200
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 1201
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    array-length v1, v3

    .line 1202
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1203
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1201
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 1205
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    .line 1209
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getCardId()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 741
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 744
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 745
    .local v7, mCardId:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 748
    const/4 v6, 0x0

    .line 750
    :cond_0
    return v7
.end method

.method private getCursorForId(J)Landroid/database/Cursor;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 941
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/andrew/apollo/MusicPlaybackService;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 943
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 944
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 946
    :cond_0
    return-object v6
.end method

.method private getNextPosition(Z)I
    .locals 13
    .parameter "force"

    .prologue
    const/4 v12, 0x1

    const/4 v0, 0x0

    const/4 v11, 0x2

    const/4 v9, -0x1

    .line 1027
    if-nez p1, :cond_2

    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-ne v8, v12, :cond_2

    .line 1028
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gez v8, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1032
    :cond_2
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-ne v8, v12, :cond_e

    .line 1033
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-ltz v8, :cond_3

    .line 1034
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    iget v10, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_3
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_4

    .line 1037
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1039
    :cond_4
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 1040
    .local v4, numTracks:I
    new-array v7, v4, [I

    .line 1041
    .local v7, tracks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 1042
    aput v1, v7, v1

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1045
    :cond_5
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 1046
    .local v3, numHistory:I
    move v5, v4

    .line 1047
    .local v5, numUnplayed:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_7

    .line 1048
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1049
    .local v2, idx:I
    if-ge v2, v4, :cond_6

    aget v8, v7, v2

    if-ltz v8, :cond_6

    .line 1050
    add-int/lit8 v5, v5, -0x1

    .line 1051
    aput v9, v7, v2

    .line 1047
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1054
    .end local v2           #idx:I
    :cond_7
    if-gtz v5, :cond_a

    .line 1055
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-eq v8, v11, :cond_8

    if-eqz p1, :cond_9

    .line 1056
    :cond_8
    move v5, v4

    .line 1057
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_a

    .line 1058
    aput v1, v7, v1

    .line 1057
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v0, v9

    .line 1061
    goto :goto_0

    .line 1064
    :cond_a
    const/4 v6, 0x0

    .line 1065
    .local v6, skip:I
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-eq v8, v12, :cond_b

    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-ne v8, v11, :cond_c

    .line 1066
    :cond_b
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->mShuffler:Lcom/andrew/apollo/MusicPlaybackService$Shuffler;

    invoke-virtual {v8, v5}, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    .line 1068
    :cond_c
    const/4 v0, -0x1

    .line 1070
    .local v0, cnt:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_d

    .line 1073
    add-int/lit8 v6, v6, -0x1

    .line 1074
    if-gez v6, :cond_d

    goto/16 :goto_0

    .line 1079
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v6           #skip:I
    .end local v7           #tracks:[I
    :cond_e
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-ne v8, v11, :cond_f

    .line 1080
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->doAutoShuffleUpdate()V

    .line 1081
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_0

    .line 1083
    :cond_f
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    iget v10, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v10, v10, -0x1

    if-lt v8, v10, :cond_11

    .line 1084
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-nez v8, :cond_10

    if-nez p1, :cond_10

    move v0, v9

    .line 1085
    goto/16 :goto_0

    .line 1086
    :cond_10
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-eq v8, v11, :cond_0

    if-nez p1, :cond_0

    move v0, v9

    .line 1089
    goto/16 :goto_0

    .line 1091
    :cond_11
    iget v8, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    const-wide/32 v3, 0xea60

    .line 807
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 809
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v1, v0, v3, v4}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    new-instance v2, Lcom/andrew/apollo/MusicPlaybackService$2;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/MusicPlaybackService$2;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    return-void
.end method

.method private handleCommandIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 684
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.andrew.apollo.musicservicecommand"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, command:Ljava/lang/String;
    :goto_0
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.andrew.apollo.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->gotoNext(Z)V

    .line 718
    :cond_1
    :goto_1
    return-void

    .line 685
    .end local v1           #command:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 689
    .restart local v1       #command:Ljava/lang/String;
    :cond_3
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.andrew.apollo.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 690
    :cond_4
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 691
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->prev()V

    goto :goto_1

    .line 693
    :cond_5
    invoke-virtual {p0, v6, v7}, Lcom/andrew/apollo/MusicPlaybackService;->seek(J)J

    .line 694
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    goto :goto_1

    .line 696
    :cond_6
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.andrew.apollo.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 697
    :cond_7
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 698
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->pause()V

    .line 699
    iput-boolean v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_1

    .line 701
    :cond_8
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    goto :goto_1

    .line 703
    :cond_9
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.andrew.apollo.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 704
    :cond_a
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->pause()V

    .line 705
    iput-boolean v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_1

    .line 706
    :cond_b
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 707
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    goto :goto_1

    .line 708
    :cond_c
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.andrew.apollo.stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 709
    :cond_d
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->pause()V

    .line 710
    iput-boolean v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 711
    invoke-virtual {p0, v6, v7}, Lcom/andrew/apollo/MusicPlaybackService;->seek(J)J

    .line 712
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->killNotification()V

    goto/16 :goto_1

    .line 713
    :cond_e
    const-string v2, "com.andrew.apollo.repeat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 714
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->cycleRepeat()V

    goto/16 :goto_1

    .line 715
    :cond_f
    const-string v2, "com.andrew.apollo.shuffle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->cycleShuffle()V

    goto/16 :goto_1
.end method

.method private makeAutoShuffleList()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1111
    const/4 v6, 0x0

    .line 1113
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1117
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1130
    :cond_0
    if-eqz v6, :cond_1

    .line 1131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1132
    const/4 v6, 0x0

    :cond_1
    move v0, v11

    .line 1135
    :goto_0
    return v0

    .line 1120
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1121
    .local v8, len:I
    new-array v9, v8, [J

    .line 1122
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1123
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1124
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7

    .line 1122
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1126
    :cond_3
    iput-object v9, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAutoShuffleList:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1130
    if-eqz v6, :cond_4

    .line 1131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1132
    const/4 v6, 0x0

    :cond_4
    move v0, v10

    goto :goto_0

    .line 1128
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v0

    .line 1130
    if-eqz v6, :cond_5

    .line 1131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1132
    const/4 v6, 0x0

    :cond_5
    move v0, v11

    .line 1135
    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1132
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 8
    .parameter "what"

    .prologue
    .line 1215
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1217
    const-string v0, "artist"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string v0, "album"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const-string v0, "track"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    const-string v0, "isfavorite"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isFavorite()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0, v6}, Lcom/andrew/apollo/MusicPlaybackService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1224
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1225
    .local v7, musicIntent:Landroid/content/Intent;
    const-string v0, "com.andrew.apollo"

    const-string v1, "com.android.music"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0, v7}, Lcom/andrew/apollo/MusicPlaybackService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1229
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 1231
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/provider/FavoritesStore;->getSongId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/andrew/apollo/provider/FavoritesStore;->addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRecentsCache:Lcom/andrew/apollo/provider/RecentStore;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongCountForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getReleaseDateForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/andrew/apollo/provider/RecentStore;->addAlbumId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :goto_0
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    if-eqz v0, :cond_1

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNotificationHelper:Lcom/andrew/apollo/NotificationHelper;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/NotificationHelper;->updatePlayState(Z)V

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetSmall:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLarge:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLargeAlternate:Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;->notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRecentWidgetProvider:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V

    .line 1256
    return-void

    .line 1241
    :cond_2
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 1244
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndMaybeNext(Z)V

    .line 1958
    return-void
.end method

.method private openCurrentAndMaybeNext(Z)V
    .locals 4
    .parameter "openNext"

    .prologue
    .line 965
    monitor-enter p0

    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 968
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 971
    :cond_0
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-nez v1, :cond_1

    .line 972
    monitor-exit p0

    .line 1019
    :goto_0
    return-void

    .line 974
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 976
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 978
    :goto_1
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->openFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1015
    if-eqz p1, :cond_2

    .line 1016
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->setNextTrack()V

    .line 1018
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 987
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 988
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 989
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 991
    :cond_4
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_7

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 992
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 993
    .local v0, pos:I
    if-gez v0, :cond_6

    .line 994
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V

    .line 995
    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_5

    .line 996
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 997
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 999
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1001
    :cond_6
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1002
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 1003
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1004
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 1006
    .end local v0           #pos:I
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    .line 1007
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V

    .line 1008
    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_8

    .line 1009
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1010
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1012
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private openCurrentAndNext()V
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndMaybeNext(Z)V

    .line 955
    return-void
.end method

.method private reloadQueue()V
    .locals 15

    .prologue
    const-wide/16 v7, 0x0

    const/4 v13, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 1359
    .line 1360
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    .line 1361
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cardid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cardid"

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    xor-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1364
    :cond_0
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    if-ne v0, v1, :cond_17

    .line 1365
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1367
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    .line 1368
    :goto_1
    if-le v5, v12, :cond_7

    move v3, v6

    move v1, v6

    move v0, v6

    move v2, v6

    .line 1372
    :goto_2
    if-ge v3, v5, :cond_5

    .line 1373
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1374
    const/16 v11, 0x3b

    if-ne v10, v11, :cond_2

    .line 1375
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 1376
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    int-to-long v10, v0

    aput-wide v10, v1, v2

    .line 1377
    add-int/lit8 v0, v2, 0x1

    move v1, v6

    move v2, v0

    move v0, v6

    .line 1372
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v14, v0

    move v0, v1

    move v1, v14

    goto :goto_2

    :cond_1
    move v5, v6

    .line 1367
    goto :goto_1

    .line 1381
    :cond_2
    const/16 v11, 0x30

    if-lt v10, v11, :cond_3

    const/16 v11, 0x39

    if-gt v10, v11, :cond_3

    .line 1382
    add-int/lit8 v10, v10, -0x30

    shl-int/2addr v10, v1

    add-int/2addr v0, v10

    .line 1389
    :goto_4
    add-int/lit8 v1, v1, 0x4

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_3

    .line 1383
    :cond_3
    const/16 v11, 0x61

    if-lt v10, v11, :cond_4

    const/16 v11, 0x66

    if-gt v10, v11, :cond_4

    .line 1384
    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x61

    shl-int/2addr v10, v1

    add-int/2addr v0, v10

    goto :goto_4

    :cond_4
    move v2, v6

    .line 1392
    :cond_5
    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 1393
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "curpos"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1394
    if-ltz v0, :cond_6

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_8

    .line 1395
    :cond_6
    iput v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 1471
    :cond_7
    :goto_5
    return-void

    .line 1398
    :cond_8
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1399
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v9, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    aget-wide v9, v5, v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 1404
    :cond_9
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1405
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/andrew/apollo/MusicPlaybackService;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v9, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    aget-wide v9, v5, v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1408
    :cond_a
    if-eqz v0, :cond_b

    .line 1409
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1412
    :cond_b
    const/16 v0, 0x14

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    .line 1413
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 1414
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1415
    iput v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    goto :goto_5

    .line 1419
    :cond_c
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "seekpos"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1420
    cmp-long v2, v0, v7

    if-ltz v2, :cond_10

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->duration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->seek(J)J

    .line 1422
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "repeatmode"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1423
    if-eq v0, v13, :cond_d

    if-eq v0, v12, :cond_d

    move v0, v6

    .line 1426
    :cond_d
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    .line 1428
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "shufflemode"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1429
    if-eq v2, v13, :cond_e

    if-eq v2, v12, :cond_e

    move v2, v6

    .line 1432
    :cond_e
    if-eqz v2, :cond_f

    .line 1433
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "history"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1434
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    .line 1435
    :goto_7
    if-le v4, v12, :cond_f

    .line 1439
    sget-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move v3, v6

    move v1, v6

    move v0, v6

    .line 1440
    :goto_8
    if-ge v3, v4, :cond_f

    .line 1441
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1442
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_13

    .line 1443
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_12

    .line 1444
    sget-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1464
    :cond_f
    :goto_9
    if-ne v2, v13, :cond_16

    .line 1465
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1469
    :goto_a
    iput v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    goto/16 :goto_5

    :cond_10
    move-wide v0, v7

    .line 1420
    goto :goto_6

    :cond_11
    move v4, v6

    .line 1434
    goto :goto_7

    .line 1447
    :cond_12
    sget-object v1, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v6

    move v1, v6

    .line 1440
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move v14, v0

    move v0, v1

    move v1, v14

    goto :goto_8

    .line 1451
    :cond_13
    const/16 v8, 0x30

    if-lt v7, v8, :cond_14

    const/16 v8, 0x39

    if-gt v7, v8, :cond_14

    .line 1452
    add-int/lit8 v7, v7, -0x30

    shl-int/2addr v7, v1

    add-int/2addr v0, v7

    .line 1459
    :goto_c
    add-int/lit8 v1, v1, 0x4

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_b

    .line 1453
    :cond_14
    const/16 v8, 0x61

    if-lt v7, v8, :cond_15

    const/16 v8, 0x66

    if-gt v7, v8, :cond_15

    .line 1454
    add-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, -0x61

    shl-int/2addr v7, v1

    add-int/2addr v0, v7

    goto :goto_c

    .line 1456
    :cond_15
    sget-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_9

    :cond_16
    move v6, v2

    goto :goto_a

    :cond_17
    move-object v9, v4

    goto/16 :goto_0
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v4, 0x0

    .line 856
    monitor-enter p0

    .line 857
    if-ge p2, p1, :cond_0

    .line 858
    :try_start_0
    monitor-exit p0

    .line 899
    :goto_0
    return v4

    .line 859
    :cond_0
    if-gez p1, :cond_3

    .line 860
    const/4 p1, 0x0

    .line 865
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 866
    .local v0, gotonext:Z
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_4

    .line 867
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 868
    const/4 v0, 0x1

    .line 872
    :cond_2
    :goto_2
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    add-int/lit8 v2, v4, -0x1

    .line 873
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 874
    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 861
    .end local v0           #gotonext:Z
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_3
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_1

    .line 862
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v4, -0x1

    goto :goto_1

    .line 869
    .restart local v0       #gotonext:Z
    :cond_4
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_2

    .line 870
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 900
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 876
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 878
    if-eqz v0, :cond_7

    .line 879
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_8

    .line 880
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 881
    const/4 v4, -0x1

    iput v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 882
    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 883
    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 884
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 897
    :cond_6
    :goto_4
    const-string v4, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 899
    :cond_7
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 887
    :cond_8
    iget v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_9

    .line 888
    const/4 v4, 0x0

    iput v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 890
    :cond_9
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v3

    .line 891
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 892
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 893
    if-eqz v3, :cond_6

    .line 894
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private saveQueue(Z)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    .line 1301
    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mQueueIsSaveable:Z

    if-nez v1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1306
    if-eqz p1, :cond_8

    .line 1307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    iget v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    move v3, v0

    .line 1309
    :goto_1
    if-ge v3, v6, :cond_4

    .line 1310
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v1, v1, v3

    .line 1311
    cmp-long v7, v1, v9

    if-gez v7, :cond_1

    .line 1309
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1313
    :cond_1
    cmp-long v7, v1, v9

    if-nez v7, :cond_2

    .line 1314
    const-string v1, "0;"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1316
    :cond_2
    :goto_3
    cmp-long v7, v1, v9

    if-eqz v7, :cond_3

    .line 1317
    const-wide/16 v7, 0xf

    and-long/2addr v7, v1

    long-to-int v7, v7

    .line 1318
    const/4 v8, 0x4

    ushr-long/2addr v1, v8

    .line 1319
    sget-object v8, Lcom/andrew/apollo/MusicPlaybackService;->HEX_DIGITS:[C

    aget-char v7, v8, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1321
    :cond_3
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1324
    :cond_4
    const-string v1, "queue"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1325
    const-string v1, "cardid"

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1326
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-eqz v1, :cond_8

    .line 1327
    sget-object v1, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 1328
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 1329
    :goto_4
    if-ge v1, v2, :cond_7

    .line 1330
    sget-object v0, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1331
    if-nez v0, :cond_5

    .line 1332
    const-string v0, "0;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1334
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 1335
    and-int/lit8 v3, v0, 0xf

    .line 1336
    ushr-int/lit8 v0, v0, 0x4

    .line 1337
    sget-object v6, Lcom/andrew/apollo/MusicPlaybackService;->HEX_DIGITS:[C

    aget-char v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1339
    :cond_6
    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1342
    :cond_7
    const-string v0, "history"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1345
    :cond_8
    const-string v0, "curpos"

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1346
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1347
    const-string v0, "seekpos"

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->position()J

    move-result-wide v1

    invoke-interface {v4, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1349
    :cond_9
    const-string v0, "repeatmode"

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1350
    const-string v0, "shufflemode"

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1351
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private setNextTrack()V
    .locals 5

    .prologue
    .line 1100
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->getNextPosition(Z)I

    move-result v2

    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I

    .line 1101
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNextPlayPos:I

    aget-wide v0, v2, v3

    .line 1103
    .local v0, id:J
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1105
    .end local v0           #id:J
    :cond_0
    return-void
.end method

.method private setUpRemoteControlClient()V
    .locals 6

    .prologue
    .line 576
    iget-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mEnableLockscreenControls:Z

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v2, :cond_0

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    new-instance v2, Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 583
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 586
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    :cond_0
    const/16 v0, 0xbd

    .line 592
    .local v0, flags:I
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v3, 0xbd

    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 594
    .end local v0           #flags:I
    :cond_1
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 828
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->stop()V

    .line 831
    :cond_0
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 834
    iput-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 836
    :cond_1
    if-eqz p1, :cond_3

    .line 837
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V

    .line 841
    :goto_0
    if-eqz p1, :cond_2

    .line 842
    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 844
    :cond_2
    return-void

    .line 839
    :cond_3
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private updateRemoteControlClient(Ljava/lang/String;)V
    .locals 6
    .parameter "what"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 1264
    iget-boolean v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mEnableLockscreenControls:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v3, :cond_1

    .line 1265
    const-string v3, "com.andrew.apollo.playstatechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1268
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    iget-boolean v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    :cond_0
    invoke-virtual {v3, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 1293
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1273
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1274
    .local v0, albumArt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 1277
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1278
    .local v1, config:Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_3

    .line 1279
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1281
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1283
    .end local v1           #config:Landroid/graphics/Bitmap$Config;
    :cond_4
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v3, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->duration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private wasRecentlyUsed(II)Z
    .locals 9
    .parameter "idx"
    .parameter "lookbacksize"

    .prologue
    const/4 v6, 0x0

    .line 1173
    if-nez p2, :cond_0

    move v5, v6

    .line 1187
    :goto_0
    return v5

    .line 1176
    :cond_0
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 1177
    .local v2, histsize:I
    if-ge v2, p2, :cond_1

    .line 1178
    move p2, v2

    .line 1180
    :cond_1
    add-int/lit8 v4, v2, -0x1

    .line 1181
    .local v4, maxidx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_3

    .line 1182
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    sub-int v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    .line 1183
    .local v0, entry:J
    int-to-long v7, p1

    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    .line 1184
    const/4 v5, 0x1

    goto :goto_0

    .line 1181
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #entry:J
    :cond_3
    move v5, v6

    .line 1187
    goto :goto_0
.end method


# virtual methods
.method public buildNotification()V
    .locals 7

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNotificationHelper:Lcom/andrew/apollo/NotificationHelper;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/andrew/apollo/NotificationHelper;->buildNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/graphics/Bitmap;Z)V

    .line 728
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 759
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 760
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 761
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1765
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2081
    monitor-enter p0

    .line 2082
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 2083
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/andrew/apollo/MusicPlaybackService;->addToPlayList([JI)V

    .line 2084
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2096
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 2097
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 2098
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 2099
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 2100
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2102
    :cond_1
    monitor-exit p0

    .line 2103
    :goto_0
    return-void

    .line 2086
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/andrew/apollo/MusicPlaybackService;->addToPlayList([JI)V

    .line 2087
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2088
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2089
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 2090
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 2091
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 2092
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2093
    monitor-exit p0

    goto :goto_0

    .line 2102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArt()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 2140
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/andrew/apollo/cache/ImageFetcher;->getArtwork(Ljava/lang/String;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2142
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 1690
    monitor-enter p0

    .line 1691
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1692
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1694
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1695
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1648
    monitor-enter p0

    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1650
    const/4 v0, 0x0

    monitor-exit p0

    .line 1652
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1653
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 1704
    monitor-enter p0

    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1706
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1708
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1709
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1676
    monitor-enter p0

    .line 1677
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1678
    const/4 v0, 0x0

    monitor-exit p0

    .line 1680
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1681
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 1718
    monitor-enter p0

    .line 1719
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 1723
    :goto_0
    return-wide v0

    .line 1722
    :cond_0
    monitor-exit p0

    .line 1723
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1722
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1535
    monitor-enter p0

    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1634
    monitor-enter p0

    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1636
    const/4 v0, 0x0

    monitor-exit p0

    .line 1638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1774
    monitor-enter p0

    .line 1775
    :try_start_0
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 1776
    .local v1, len:I
    new-array v2, v1, [J

    .line 1777
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1778
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1781
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1623
    monitor-enter p0

    .line 1624
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 1625
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1566
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1662
    monitor-enter p0

    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    monitor-exit p0

    .line 1666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoNext(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 1902
    monitor-enter p0

    .line 1903
    :try_start_0
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_0

    .line 1904
    monitor-exit p0

    .line 1922
    :goto_0
    return-void

    .line 1906
    :cond_0
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 1907
    .local v0, pos:I
    if-gez v0, :cond_2

    .line 1908
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V

    .line 1909
    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_1

    .line 1910
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1911
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1913
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1921
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1915
    .restart local v0       #pos:I
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1916
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 1917
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1918
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 1919
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 1920
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1921
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1795
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    if-eqz v2, :cond_1

    .line 1796
    monitor-enter p0

    .line 1797
    :try_start_0
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/provider/FavoritesStore;->getSongId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1798
    .local v0, id:Ljava/lang/Long;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    .line 1801
    .end local v0           #id:Ljava/lang/Long;
    :cond_1
    return v1

    .line 1799
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public killNotification()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->stopForeground(Z)V

    .line 735
    return-void
.end method

.method public moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 1979
    monitor-enter p0

    .line 1980
    :try_start_0
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_0

    .line 1981
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v3, -0x1

    .line 1983
    :cond_0
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_1

    .line 1984
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v3, -0x1

    .line 1986
    :cond_1
    if-ge p1, p2, :cond_5

    .line 1987
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1988
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1989
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1991
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1992
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_4

    .line 1993
    iput p2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 2009
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_3
    :goto_1
    const-string v3, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v3}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2010
    monitor-exit p0

    .line 2011
    return-void

    .line 1994
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_4
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_3

    .line 1995
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2010
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1997
    :cond_5
    if-ge p2, p1, :cond_3

    .line 1998
    :try_start_1
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1999
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 2000
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1999
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2002
    :cond_6
    iget-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 2003
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_7

    .line 2004
    iput p2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2005
    :cond_7
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_3

    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_3

    .line 2006
    iget v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z

    .line 452
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 499
    invoke-static {p0}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRecentsCache:Lcom/andrew/apollo/provider/RecentStore;

    .line 500
    invoke-static {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    .line 503
    new-instance v0, Lcom/andrew/apollo/NotificationHelper;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/NotificationHelper;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mNotificationHelper:Lcom/andrew/apollo/NotificationHelper;

    .line 506
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 508
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mImageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->setImageCache(Lcom/andrew/apollo/cache/ImageCache;)V

    .line 514
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicPlayerHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 516
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 519
    new-instance v1, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;-><init>(Lcom/andrew/apollo/MusicPlaybackService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    .line 520
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    .line 524
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 525
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/andrew/apollo/MediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    .line 527
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 531
    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->enableLockscreenControls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mEnableLockscreenControls:Z

    .line 532
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->setUpRemoteControlClient()V

    .line 535
    const-string v0, "Service"

    invoke-virtual {p0, v0, v3}, Lcom/andrew/apollo/MusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 536
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getCardId()I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCardId:I

    .line 538
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->registerExternalStorageListener()V

    .line 541
    new-instance v0, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    .line 542
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 545
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 546
    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v1, "com.andrew.apollo.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v1, "com.andrew.apollo.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "com.andrew.apollo.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "com.andrew.apollo.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "com.andrew.apollo.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "com.andrew.apollo.repeat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v1, "com.andrew.apollo.shuffle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 559
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 560
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 563
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->reloadQueue()V

    .line 564
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 565
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 570
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 601
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, audioEffectsIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->release()V

    .line 611
    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    .line 614
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 615
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 618
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 619
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 622
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 624
    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 631
    iput-object v3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 636
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z

    .line 489
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 643
    iput p3, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceStartId:I

    .line 644
    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v4, v5}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 645
    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, action:Ljava/lang/String;
    const-string v4, "nowinforeground"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    const-string v4, "nowinforeground"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    .line 650
    iget-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->buildNotification()V

    .line 657
    :cond_1
    :goto_0
    const-string v2, "com.andrew.apollo.updatelockscreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 658
    const-string v2, "com.andrew.apollo.updatelockscreen"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mEnableLockscreenControls:Z

    .line 659
    iget-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mEnableLockscreenControls:Z

    if-eqz v2, :cond_4

    .line 660
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->setUpRemoteControlClient()V

    .line 662
    const-string v2, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 663
    const-string v2, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 677
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v2, v5}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 678
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v2}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 679
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 680
    return v3

    .line 652
    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mBuildNotification:Z

    if-nez v2, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->killNotification()V

    goto :goto_0

    .line 666
    :cond_4
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 668
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_1

    .line 671
    :cond_5
    invoke-direct {p0, p1}, Lcom/andrew/apollo/MusicPlaybackService;->handleCommandIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceInUse:Z

    .line 461
    invoke-direct {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    .line 463
    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v4

    .line 473
    :cond_1
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    invoke-virtual {v1, v4}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mDelayedStopHandler:Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/andrew/apollo/MusicPlaybackService$DelayedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 478
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method

.method public open([JI)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1811
    monitor-enter p0

    .line 1812
    :try_start_0
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1813
    const/4 v5, 0x1

    iput v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 1816
    .local v3, oldId:J
    array-length v1, p1

    .line 1817
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 1818
    .local v2, newlist:Z
    iget v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_1

    .line 1819
    const/4 v2, 0x0

    .line 1820
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1821
    aget-wide v5, p1, v0

    iget-object v7, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v7, v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 1822
    const/4 v2, 0x1

    .line 1827
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 1828
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/andrew/apollo/MusicPlaybackService;->addToPlayList([JI)V

    .line 1829
    const-string v5, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1831
    :cond_2
    if-ltz p2, :cond_5

    .line 1832
    iput p2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1836
    :goto_1
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 1837
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 1838
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 1839
    const-string v5, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1841
    :cond_3
    monitor-exit p0

    .line 1842
    return-void

    .line 1820
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1834
    .end local v0           #i:I
    :cond_5
    sget-object v5, Lcom/andrew/apollo/MusicPlaybackService;->mShuffler:Lcom/andrew/apollo/MusicPlaybackService$Shuffler;

    iget v6, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1841
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public openFile(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1479
    monitor-enter p0

    .line 1480
    if-nez p1, :cond_0

    .line 1481
    :try_start_0
    monitor-exit p0

    move v0, v6

    .line 1525
    :goto_0
    return v0

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1486
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1490
    const-string v1, "content://media/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1491
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v3, v4

    .line 1502
    :goto_1
    :try_start_1
    sget-object v2, Lcom/andrew/apollo/MusicPlaybackService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1503
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1505
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1518
    :cond_1
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1519
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1521
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mOpenFailedCounter:I

    .line 1522
    monitor-exit p0

    move v0, v7

    goto :goto_0

    .line 1495
    :cond_2
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1496
    const-string v3, "_data=?"

    .line 1497
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    goto :goto_1

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1508
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 1510
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 1511
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1512
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1515
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1524
    :cond_4
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 1525
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1887
    monitor-enter p0

    .line 1888
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->removeMessages(I)V

    .line 1889
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->pause()V

    .line 1891
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->gotoIdleState()V

    .line 1892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1893
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1895
    :cond_0
    monitor-exit p0

    .line 1896
    return-void

    .line 1895
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x7d0

    const/4 v4, 0x1

    .line 1855
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1857
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1860
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1862
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    if-eq v2, v4, :cond_0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    sub-long/2addr v0, v5

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 1864
    invoke-virtual {p0, v4}, Lcom/andrew/apollo/MusicPlaybackService;->gotoNext(Z)V

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->start()V

    .line 1868
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->removeMessages(I)V

    .line 1869
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayerHandler:Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/MusicPlaybackService$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 1872
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->buildNotification()V

    .line 1873
    iget-boolean v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_1

    .line 1874
    iput-boolean v4, p0, Lcom/andrew/apollo/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1875
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1881
    :cond_1
    :goto_0
    return-void

    .line 1878
    :cond_2
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_1

    .line 1879
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->setShuffleMode(I)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1753
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    .line 1928
    monitor-enter p0

    .line 1929
    :try_start_0
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1931
    sget-object v2, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1932
    .local v0, histsize:I
    if-nez v0, :cond_0

    .line 1933
    monitor-exit p0

    .line 1949
    .end local v0           #histsize:I
    :goto_0
    return-void

    .line 1935
    .restart local v0       #histsize:I
    :cond_0
    sget-object v2, Lcom/andrew/apollo/MusicPlaybackService;->mHistory:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1936
    .local v1, pos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 1944
    .end local v0           #histsize:I
    .end local v1           #pos:Ljava/lang/Integer;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 1945
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrent()V

    .line 1946
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 1947
    const-string v2, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1948
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1938
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    if-lez v2, :cond_2

    .line 1939
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1941
    :cond_2
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 2149
    const-string v0, "com.andrew.apollo.refresh"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2150
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 771
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 772
    new-instance v1, Lcom/andrew/apollo/MusicPlaybackService$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/MusicPlaybackService$1;-><init>(Lcom/andrew/apollo/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 794
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 795
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 800
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1586
    .local v1, numremoved:I
    monitor-enter p0

    .line 1587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 1588
    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1589
    invoke-direct {p0, v0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1590
    add-int/lit8 v0, v0, -0x1

    .line 1587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1593
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    if-lez v1, :cond_2

    .line 1595
    const-string v2, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1597
    :cond_2
    return v1

    .line 1593
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1610
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 1611
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 1612
    const-string v1, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1614
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1734
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1735
    const-wide/16 p1, 0x0

    .line 1739
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 1741
    :goto_1
    return-wide v0

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayer:Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/MusicPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    goto :goto_0

    .line 1741
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2062
    monitor-enter p0

    .line 2063
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 2064
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 2065
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 2066
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 2067
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2068
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2069
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->doAutoShuffleUpdate()V

    .line 2071
    :cond_0
    monitor-exit p0

    .line 2072
    return-void

    .line 2071
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 2019
    monitor-enter p0

    .line 2020
    :try_start_0
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mRepeatMode:I

    .line 2021
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->setNextTrack()V

    .line 2022
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    .line 2023
    const-string v0, "com.andrew.apollo.repeatmodechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2024
    monitor-exit p0

    .line 2025
    return-void

    .line 2024
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 2033
    monitor-enter p0

    .line 2034
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2035
    monitor-exit p0

    .line 2054
    :goto_0
    return-void

    .line 2037
    :cond_0
    iput p1, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    .line 2038
    iget v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2039
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2040
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayListLen:I

    .line 2041
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->doAutoShuffleUpdate()V

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mPlayPos:I

    .line 2043
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService;->openCurrentAndNext()V

    .line 2044
    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->play()V

    .line 2045
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2046
    monitor-exit p0

    goto :goto_0

    .line 2053
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2048
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mShuffleMode:I

    .line 2051
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->saveQueue(Z)V

    .line 2052
    const-string v0, "com.andrew.apollo.shufflemodechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2053
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/MusicPlaybackService;->stop(Z)V

    .line 1849
    return-void
.end method

.method public toggleFavorite()V
    .locals 5

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    if-eqz v0, :cond_0

    .line 1965
    monitor-enter p0

    .line 1966
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService;->mFavoritesCache:Lcom/andrew/apollo/provider/FavoritesStore;

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/andrew/apollo/provider/FavoritesStore;->toggleSong(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    monitor-exit p0

    .line 1970
    :cond_0
    return-void

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
