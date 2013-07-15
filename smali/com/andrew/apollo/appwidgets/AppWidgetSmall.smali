.class public Lcom/andrew/apollo/appwidgets/AppWidgetSmall;
.super Lcom/andrew/apollo/appwidgets/AppWidgetBase;
.source "AppWidgetSmall.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/andrew/apollo/appwidgets/AppWidgetBase;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 69
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030009

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 71
    .local v0, appWidgetViews:Landroid/widget/RemoteViews;
    const v1, 0x7f0d003f

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 72
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 74
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/appwidgets/AppWidgetSmall;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    invoke-direct {v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;-><init>()V

    sput-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    .line 47
    :cond_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 90
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 91
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 93
    .local v1, mAppWidgetIds:[I
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0d003f

    const v4, 0x7f0d003b

    const/4 v3, 0x0

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    if-eqz p3, :cond_0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 173
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 174
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 184
    :goto_0
    const-string v1, "com.andrew.apollo.previous"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 185
    const v2, 0x7f0d003c

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 188
    const-string v1, "com.andrew.apollo.togglepause"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 189
    const v2, 0x7f0d003d

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 192
    const-string v1, "com.andrew.apollo.next"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 193
    const v1, 0x7f0d003e

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 194
    return-void

    .line 177
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/HomeActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 179
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 180
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 77
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 78
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    .line 107
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 56
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "app_widget_small_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V
    .locals 9
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v8, 0x7f0d003f

    const v7, 0x7f0d003d

    .line 113
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030009

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v0, appWidgetView:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, trackName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, artistName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    const/4 v5, 0x4

    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 128
    :goto_0
    const v5, 0x7f0d003b

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v3

    .line 132
    .local v3, isPlaying:Z
    if-eqz v3, :cond_2

    .line 133
    const v5, 0x7f02000f

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 135
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    const v5, 0x7f090044

    invoke-virtual {p1, v5}, Lcom/andrew/apollo/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 149
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 153
    return-void

    .line 124
    .end local v3           #isPlaying:Z
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    const v5, 0x7f0d0040

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    const v5, 0x7f0d0042

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .restart local v3       #isPlaying:Z
    :cond_2
    const v5, 0x7f020010

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 142
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    const v5, 0x7f090043

    invoke-virtual {p1, v5}, Lcom/andrew/apollo/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method
