.class Lcom/andrew/apollo/ui/activities/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity;->showOpenSourceLicenses()V
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
    .line 225
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$5;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$5;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->createOpenSourceDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
