.class Lcom/andrew/apollo/ui/activities/SettingsActivity$4$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/activities/SettingsActivity$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrew/apollo/ui/activities/SettingsActivity$4;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/activities/SettingsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$2;->this$1:Lcom/andrew/apollo/ui/activities/SettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity$4$2;->this$1:Lcom/andrew/apollo/ui/activities/SettingsActivity$4;

    iget-object v0, v0, Lcom/andrew/apollo/ui/activities/SettingsActivity$4;->this$0:Lcom/andrew/apollo/ui/activities/SettingsActivity;

    #getter for: Lcom/andrew/apollo/ui/activities/SettingsActivity;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;
    invoke-static {v0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->access$000(Lcom/andrew/apollo/ui/activities/SettingsActivity;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageCache;->clearCaches()V

    .line 207
    return-void
.end method
