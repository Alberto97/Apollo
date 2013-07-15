.class Lcom/andrew/apollo/ui/activities/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity;->deleteCache()V
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
    .line 198
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$2;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$2;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002e

    new-instance v2, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$1;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$1;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
