.class public Lcom/andrew/apollo/appwidgets/AppWidgetLarge;
.super Lcom/andrew/apollo/appwidgets/AppWidgetBase;
.source "AppWidgetLarge.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/andrew/apollo/appwidgets/AppWidgetBase;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 67
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v0, appWidgetViews:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 71
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/appwidgets/AppWidgetLarge;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    invoke-direct {v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;-><init>()V

    sput-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    .line 45
    :cond_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->mInstance:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 88
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 90
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
    const v5, 0x7f0d001c

    const v4, 0x7f0d001b

    const/4 v3, 0x0

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    if-eqz p3, :cond_0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 167
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    :goto_0
    const-string v1, "com.andrew.apollo.previous"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 179
    const v2, 0x7f0d0021

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 182
    const-string v1, "com.andrew.apollo.togglepause"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 183
    const v2, 0x7f0d0022

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 186
    const-string v1, "com.andrew.apollo.next"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 187
    const v1, 0x7f0d0023

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 188
    return-void

    .line 171
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/HomeActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 173
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 174
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 74
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 75
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 80
    :goto_0
    return-void

    .line 78
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
    .line 98
    invoke-direct {p0, p1}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    .line 104
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 54
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "app_widget_large_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V
    .locals 9
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v8, 0x7f0d0022

    .line 110
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030005

    invoke-direct {v1, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .local v1, appWidgetView:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, trackName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, artistName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, albumName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 119
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const v6, 0x7f0d001d

    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    const v6, 0x7f0d001e

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    const v6, 0x7f0d001f

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    const v6, 0x7f0d001b

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v4

    .line 126
    .local v4, isPlaying:Z
    if-eqz v4, :cond_1

    .line 127
    const v6, 0x7f02000f

    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 129
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    const v6, 0x7f090044

    invoke-virtual {p1, v6}, Lcom/andrew/apollo/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 143
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1, v4}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 146
    invoke-direct {p0, p1, p2, v1}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 147
    return-void

    .line 134
    :cond_1
    const v6, 0x7f020010

    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 136
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    const v6, 0x7f090043

    invoke-virtual {p1, v6}, Lcom/andrew/apollo/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
