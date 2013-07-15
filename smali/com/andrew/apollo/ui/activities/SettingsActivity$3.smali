.class Lcom/andrew/apollo/ui/activities/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity;->toggleLockscreenControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    const-class v2, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const-string v1, "com.andrew.apollo.updatelockscreen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.andrew.apollo.updatelockscreen"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$3;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    const/4 v0, 0x1

    return v0
.end method
