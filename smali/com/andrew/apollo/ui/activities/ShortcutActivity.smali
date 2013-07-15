.class public Lcom/andrew/apollo/ui/activities/ShortcutActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final OPEN_AUDIO_PLAYER:Ljava/lang/String;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mList:[J

.field private mShouldShuffle:Z

.field private final mSong:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final mSongAlbumArtistQuery:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

.field private mVoiceQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->OPEN_AUDIO_PLAYER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 90
    invoke-static {}, Lcom/andrew/apollo/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity$2;-><init>(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSongAlbumArtistQuery:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/andrew/apollo/ui/activities/ShortcutActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z

    return p1
.end method

.method static synthetic access$200(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J

    return-object v0
.end method

.method static synthetic access$202(Lcom/andrew/apollo/ui/activities/ShortcutActivity;[J)[J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J

    return-object p1
.end method

.method static synthetic access$300(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->allDone()V

    return-void
.end method

.method static synthetic access$500(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mVoiceQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->isFavorite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSong:Ljava/util/ArrayList;

    return-object v0
.end method

.method private allDone()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    sget-object v1, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->OPEN_AUDIO_PLAYER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J

    array-length v1, v1

    if-lez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mList:[J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mShouldShuffle:Z

    invoke-static {p0, v1, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 336
    :cond_0
    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->finish()V

    .line 343
    return-void
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private isFavorite()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 311
    const v3, 0x7f09002a

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, favoritePlaylist:Ljava/lang/String;
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mVoiceQuery:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v2

    .line 317
    :cond_1
    const v3, 0x7f090029

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, favorite:Ljava/lang/String;
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mVoiceQuery:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->overridePendingTransition(II)V

    .line 102
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 105
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/format/Capitalize;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mVoiceQuery:Ljava/lang/String;

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 209
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 213
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 116
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 119
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->mSongAlbumArtistQuery:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/activities/ShortcutActivity$1;-><init>(Lcom/andrew/apollo/ui/activities/ShortcutActivity;)V

    invoke-static {v0}, Lcom/andrew/apollo/loaders/AsyncHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 199
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 200
    return-void
.end method
