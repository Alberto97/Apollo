.class public Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;
.super Lcom/andrew/apollo/appwidgets/AppWidgetBase;
.source "RecentWidgetProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static mInstance:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

.field private static sWorkerQueue:Landroid/os/Handler;


# instance fields
.field private mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/andrew/apollo/appwidgets/AppWidgetBase;-><init>()V

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecentWidgetProviderWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v0, workerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->sWorkerQueue:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method private compatSetRemoteAdapter(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter "rv"
    .parameter "appWidgetId"
    .parameter "intent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 173
    const v0, 0x7f0d0036

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mInstance:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    invoke-direct {v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;-><init>()V

    sput-object v0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mInstance:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    .line 81
    :cond_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mInstance:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 181
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 182
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 184
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d002f

    const/4 v3, 0x0

    .line 256
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    if-eqz p3, :cond_0

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/AudioPlayerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 262
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 271
    :goto_0
    const-string v1, "com.andrew.apollo.previous"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    const v2, 0x7f0d0032

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 275
    const-string v1, "com.andrew.apollo.togglepause"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 276
    const v2, 0x7f0d0033

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 279
    const-string v1, "com.andrew.apollo.next"

    invoke-virtual {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    const v1, 0x7f0d0034

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 281
    return-void

    .line 265
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/HomeActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 267
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 188
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 189
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 194
    :goto_0
    return-void

    .line 192
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
    .locals 2
    .parameter "service"
    .parameter "what"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    monitor-enter p1

    .line 206
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->sWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;-><init>(Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;Lcom/andrew/apollo/MusicPlaybackService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x1000

    const/high16 v8, 0x400

    const-wide/16 v6, -0x1

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "com.andrew.apollo.recents.appwidget.action.CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 132
    const-string v2, "set_action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "play_album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v3, "id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    const-string v0, "mime_type"

    const-string v1, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    sget-object v0, Lcom/andrew/apollo/ui/activities/ShortcutActivity;->OPEN_AUDIO_PLAYER:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/andrew/apollo/appwidgets/AppWidgetBase;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    return-void

    .line 144
    :cond_1
    const-string v2, "set_action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v4, "mime_type"

    const-string v5, "vnd.android.cursor.dir/albums"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "artist_name"

    const-string v5, "artist_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v4, "album_year"

    invoke-static {p1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->getReleaseDateForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "id"

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 90
    array-length v2, p3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p3, v0

    .line 92
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030007

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    .line 95
    iget-object v4, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v4, v1}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 97
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/andrew/apollo/appwidgets/RecentWidgetService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {v4, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v5, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v5, v3, v4}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->compatSetRemoteAdapter(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 102
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v5, "command"

    const-string v6, "app_widget_recents_update"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v5, "appWidgetIds"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 106
    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v5, "com.andrew.apollo.recents.appwidget.action.CLICK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v4, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    const/high16 v5, 0x800

    invoke-static {p1, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 115
    iget-object v5, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    const v6, 0x7f0d0036

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 118
    iget-object v4, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V
    .locals 5
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v4, 0x7f0d0033

    .line 227
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030007

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    .line 230
    invoke-virtual {p1}, Lcom/andrew/apollo/MusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 231
    .local v0, isPlaying:Z
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x7f02000f

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v1, v0}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 241
    iget-object v1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, v1}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 242
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x7f020010

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method
