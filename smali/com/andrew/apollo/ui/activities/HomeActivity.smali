.class public Lcom/andrew/apollo/ui/activities/HomeActivity;
.super Lcom/andrew/apollo/ui/activities/BaseActivity;
.source "HomeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d0008

    new-instance v2, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;

    invoke-direct {v2}, Lcom/andrew/apollo/ui/fragments/phone/MusicBrowserPhoneFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    :cond_0
    return-void
.end method

.method public setContentView()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f030001

    return v0
.end method
