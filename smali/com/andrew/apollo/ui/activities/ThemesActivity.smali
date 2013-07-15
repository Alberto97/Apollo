.class public Lcom/andrew/apollo/ui/activities/ThemesActivity;
.super Lcom/andrew/apollo/ui/activities/BaseActivity;
.source "ThemesActivity.java"


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
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ThemesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/ThemesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ThemesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0008

    new-instance v3, Lcom/andrew/apollo/ui/fragments/ThemeFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ThemesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 73
    :sswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/ThemesActivity;->finish()V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/ThemesActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/utils/ThemeUtils;->shopFor(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d00a0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/ThemesActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setShopIcon(Landroid/view/Menu;)V

    .line 54
    invoke-super {p0, p1}, Lcom/andrew/apollo/ui/activities/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setContentView()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f030001

    return v0
.end method
