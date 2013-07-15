.class public Lcom/andrew/apollo/ui/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mImageCache:Lcom/andrew/apollo/cache/ImageCache;

.field private mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/activities/SettingsActivity;)Lcom/andrew/apollo/cache/ImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    return-object v0
.end method

.method private deleteCache()V
    .locals 2

    .prologue
    .line 197
    const-string v1, "delete_cache"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 198
    .local v0, deleteCache:Landroid/preference/Preference;
    new-instance v1, Lcom/andrew/apollo/ui/activities/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$4;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 218
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->toggleLockscreenControls()V

    .line 140
    return-void
.end method

.method private initInterface()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->updateColorScheme()V

    .line 131
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->openThemeChooser()V

    .line 132
    return-void
.end method

.method private openThemeChooser()V
    .locals 2

    .prologue
    .line 160
    const-string v1, "theme_chooser"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, themeChooser:Landroid/preference/Preference;
    new-instance v1, Lcom/andrew/apollo/ui/activities/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$2;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    return-void
.end method

.method private showOpenSourceLicenses()V
    .locals 2

    .prologue
    .line 224
    const-string v1, "open_source"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 225
    .local v0, mOpenSourceLicenses:Landroid/preference/Preference;
    new-instance v1, Lcom/andrew/apollo/ui/activities/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$5;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    return-void
.end method

.method private toggleLockscreenControls()V
    .locals 2

    .prologue
    .line 176
    const-string v1, "lockscreen_controls"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 177
    .local v0, lockscreenControls:Landroid/preference/CheckBoxPreference;
    new-instance v1, Lcom/andrew/apollo/ui/activities/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$3;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    return-void
.end method

.method private updateColorScheme()V
    .locals 2

    .prologue
    .line 146
    const-string v1, "color_scheme"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 147
    .local v0, colorScheme:Landroid/preference/Preference;
    new-instance v1, Lcom/andrew/apollo/ui/activities/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity$1;-><init>(Lcom/andrew/apollo/ui/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->overridePendingTransition(II)V

    .line 62
    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity;->mPreferences:Lcom/andrew/apollo/utils/PreferenceUtils;

    .line 65
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/ui/activities/SettingsActivity;->mImageCache:Lcom/andrew/apollo/cache/ImageCache;

    .line 68
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 74
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->initInterface()V

    .line 76
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->initData()V

    .line 78
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->deleteCache()V

    .line 80
    invoke-direct {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->showOpenSourceLicenses()V

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 84
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v2, "version"

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "version"

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->onBackPressed()V

    .line 98
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SettingsActivity;->finish()V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 112
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 113
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 122
    return-void
.end method
