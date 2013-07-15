.class Lcom/andrew/apollo/MusicPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2152
    iput-object p1, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2158
    const-string v5, "command"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    .local v0, command:Ljava/lang/String;
    const-string v5, "app_widget_small_update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2161
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 2162
    .local v4, small:[I
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetSmall:Lcom/andrew/apollo/appwidgets/AppWidgetSmall;
    invoke-static {v5}, Lcom/andrew/apollo/MusicPlaybackService;->access$800(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetSmall;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v5, v6, v4}, Lcom/andrew/apollo/appwidgets/AppWidgetSmall;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    .line 2176
    .end local v4           #small:[I
    :goto_0
    return-void

    .line 2163
    :cond_0
    const-string v5, "app_widget_large_update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2164
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 2165
    .local v1, large:[I
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLarge:Lcom/andrew/apollo/appwidgets/AppWidgetLarge;
    invoke-static {v5}, Lcom/andrew/apollo/MusicPlaybackService;->access$900(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetLarge;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v5, v6, v1}, Lcom/andrew/apollo/appwidgets/AppWidgetLarge;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    goto :goto_0

    .line 2166
    .end local v1           #large:[I
    :cond_1
    const-string v5, "app_widget_large_alternate_update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2167
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 2169
    .local v2, largeAlt:[I
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mAppWidgetLargeAlternate:Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;
    invoke-static {v5}, Lcom/andrew/apollo/MusicPlaybackService;->access$1000(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v5, v6, v2}, Lcom/andrew/apollo/appwidgets/AppWidgetLargeAlternate;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    goto :goto_0

    .line 2170
    .end local v2           #largeAlt:[I
    :cond_2
    const-string v5, "app_widget_recents_update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2171
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 2172
    .local v3, recent:[I
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #getter for: Lcom/andrew/apollo/MusicPlaybackService;->mRecentWidgetProvider:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;
    invoke-static {v5}, Lcom/andrew/apollo/MusicPlaybackService;->access$1100(Lcom/andrew/apollo/MusicPlaybackService;)Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v5, v6, v3}, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->performUpdate(Lcom/andrew/apollo/MusicPlaybackService;[I)V

    goto :goto_0

    .line 2174
    .end local v3           #recent:[I
    :cond_3
    iget-object v5, p0, Lcom/andrew/apollo/MusicPlaybackService$3;->this$0:Lcom/andrew/apollo/MusicPlaybackService;

    #calls: Lcom/andrew/apollo/MusicPlaybackService;->handleCommandIntent(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/andrew/apollo/MusicPlaybackService;->access$1200(Lcom/andrew/apollo/MusicPlaybackService;Landroid/content/Intent;)V

    goto :goto_0
.end method
