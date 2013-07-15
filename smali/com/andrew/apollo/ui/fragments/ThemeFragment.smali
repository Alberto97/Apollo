.class public Lcom/andrew/apollo/ui/fragments/ThemeFragment;
.super Landroid/support/v4/app/Fragment;
.source "ThemeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;,
        Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;

.field private mEntries:[Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTheme:Lcom/andrew/apollo/utils/ThemeUtils;

.field private mThemeName:Ljava/lang/String;

.field private mThemePackageName:Ljava/lang/String;

.field private mThemePreview:[Landroid/graphics/drawable/Drawable;

.field private mThemeResources:Landroid/content/res/Resources;

.field private mThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/fragments/ThemeFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/ui/fragments/ThemeFragment;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePreview:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.andrew.apollo.THEMES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, apolloThemeIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 117
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    .line 118
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mValues:[Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePreview:[Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;

    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 125
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePreview:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePackageName:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemeName:Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemeName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 131
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mValues:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemeResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemeResources:Landroid/content/res/Resources;

    const-string v4, "theme_preview"

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, previewId:I
    if-eqz v2, :cond_0

    .line 144
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePreview:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemeResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v2           #previewId:I
    :cond_1
    new-instance v3, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030011

    invoke-direct {v3, p0, v4, v5}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;-><init>(Lcom/andrew/apollo/ui/fragments/ThemeFragment;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mAdapter:Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;

    .line 151
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mAdapter:Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    new-instance v3, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mTheme:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 155
    return-void

    .line 137
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 178
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mValues:[Ljava/lang/String;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->openAppPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 163
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 164
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v1, :cond_0

    .line 166
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 169
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 88
    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    .local v0, rootView:Landroid/view/ViewGroup;
    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    .line 92
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 94
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 99
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mTheme:Lcom/andrew/apollo/utils/ThemeUtils;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090050

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;

    aget-object v4, v4, p3

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {v0, v1, v2}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->show()V

    .line 198
    return-void
.end method
