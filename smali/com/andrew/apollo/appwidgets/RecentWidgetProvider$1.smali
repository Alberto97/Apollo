.class Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;
.super Ljava/lang/Object;
.source "RecentWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;->notifyChange(Lcom/andrew/apollo/MusicPlaybackService;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

.field final synthetic val$service:Lcom/andrew/apollo/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;Lcom/andrew/apollo/MusicPlaybackService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;->this$0:Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    iput-object p2, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;->val$service:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;->val$service:Lcom/andrew/apollo/MusicPlaybackService;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider$1;->val$service:Lcom/andrew/apollo/MusicPlaybackService;

    const-class v3, Lcom/andrew/apollo/appwidgets/RecentWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const v2, 0x7f0d0036

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 216
    return-void
.end method
