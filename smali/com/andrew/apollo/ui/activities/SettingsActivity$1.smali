.class Lcom/andrew/apollo/ui/activities/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity;->updateColorScheme()V
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
    .line 147
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$1;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->showColorPicker(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
