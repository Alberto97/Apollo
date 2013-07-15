.class Lcom/andrew/apollo/ui/activities/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity;->openThemeChooser()V
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
    .line 161
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    const-class v2, Lcom/andrew/apollo/ui/activities/ThemesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$2;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method
