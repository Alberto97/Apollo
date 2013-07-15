.class public abstract Lcom/andrew/apollo/appwidgets/AppWidgetBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidgetBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "serviceName"

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    const-string v1, "nowinforeground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method
