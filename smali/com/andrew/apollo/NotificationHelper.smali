.class public Lcom/andrew/apollo/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mExpandedView:Landroid/widget/RemoteViews;

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTemplate:Landroid/widget/RemoteViews;

.field private final mService:Lcom/andrew/apollo/MusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    .line 73
    iput-object p1, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    .line 74
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/andrew/apollo/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 76
    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.AUDIO_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private initCollapsedLayout(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "trackName"
    .parameter "artistName"
    .parameter "albumArt"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d006e

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d006f

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d006d

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 244
    return-void
.end method

.method private initExpandedLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "trackName"
    .parameter "artistName"
    .parameter "albumName"
    .parameter "albumArt"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 260
    return-void
.end method

.method private initExpandedPlaybackActions(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    const v3, 0x7f0d0077

    .line 149
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0078

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 157
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0076

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0079

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 165
    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_0

    const v0, 0x7f02000f

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 167
    return-void

    .line 165
    :cond_0
    const v0, 0x7f020010

    goto :goto_0
.end method

.method private initPlaybackActions(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    const v3, 0x7f0d0071

    .line 174
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0072

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 182
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0070

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 186
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v1, 0x7f0d0073

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/andrew/apollo/NotificationHelper;->retreivePlaybackActions(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 190
    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_0

    const v0, 0x7f020010

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 192
    return-void

    .line 190
    :cond_0
    const v0, 0x7f02000f

    goto :goto_0
.end method

.method private final retreivePlaybackActions(I)Landroid/app/PendingIntent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 201
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const-class v2, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v2, 0x3

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.stop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public buildNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "albumName"
    .parameter "artistName"
    .parameter "trackName"
    .parameter "albumId"
    .parameter "albumArt"
    .parameter "isPlaying"

    .prologue
    .line 86
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    .line 90
    invoke-direct {p0, p3, p2, p5}, Lcom/andrew/apollo/NotificationHelper;->initCollapsedLayout(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/andrew/apollo/NotificationHelper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    .line 100
    invoke-direct {p0, p6}, Lcom/andrew/apollo/NotificationHelper;->initPlaybackActions(Z)V

    .line 101
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/andrew/apollo/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    .line 105
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 107
    invoke-direct {p0, p6}, Lcom/andrew/apollo/NotificationHelper;->initExpandedPlaybackActions(Z)V

    .line 109
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/andrew/apollo/NotificationHelper;->initExpandedLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mService:Lcom/andrew/apollo/MusicPlaybackService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 112
    return-void
.end method

.method public updatePlayState(Z)V
    .locals 5
    .parameter "isPlaying"

    .prologue
    const v2, 0x7f020010

    const v1, 0x7f02000f

    .line 120
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 124
    iget-object v3, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationTemplate:Landroid/widget/RemoteViews;

    const v4, 0x7f0d0071

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 128
    :cond_2
    invoke-static {}, Lcom/andrew/apollo/utils/ApolloUtils;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mExpandedView:Landroid/widget/RemoteViews;

    const v3, 0x7f0d0077

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/andrew/apollo/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/andrew/apollo/NotificationHelper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 124
    goto :goto_1

    :cond_5
    move v1, v2

    .line 129
    goto :goto_2
.end method
