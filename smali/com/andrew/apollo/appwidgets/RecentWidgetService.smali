.class public Lcom/andrew/apollo/appwidgets/RecentWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "RecentWidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 44
    new-instance v0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/andrew/apollo/appwidgets/RecentWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
