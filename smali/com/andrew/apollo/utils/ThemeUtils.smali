.class public Lcom/andrew/apollo/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static sApolloSearch:Ljava/lang/String;


# instance fields
.field private final mActionBarLayout:Landroid/view/View;

.field private final mCurrentThemeColor:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private final mThemePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const v1, 0x7f090073

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/andrew/apollo/utils/ThemeUtils;->sApolloSearch:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mPreferences:Landroid/content/SharedPreferences;

    .line 118
    invoke-virtual {p0}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mThemePackage:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mThemePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    invoke-static {p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getDefaultThemeColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mCurrentThemeColor:I

    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mActionBarLayout:Landroid/view/View;

    .line 133
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "com.andrew.apollo"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/andrew/apollo/utils/ThemeUtils;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static openAppPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "themeName"

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, shopIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 387
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .locals 4
    .parameter "resourceName"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "color"

    iget-object v3, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mThemePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, resourceId:I
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 177
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v1

    .line 177
    iget v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mCurrentThemeColor:I

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "resourceName"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mThemePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, resourceId:I
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v1

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getThemePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "theme_package_name"

    const-string v2, "com.andrew.apollo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionBarDark()Z
    .locals 1

    .prologue
    .line 204
    const-string v0, "action_bar"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isColorDark(I)Z

    move-result v0

    return v0
.end method

.method public setAddToHomeScreenIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "search"

    .prologue
    .line 303
    const v2, 0x7f0d008c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 304
    .local v0, pinnAction:Landroid/view/MenuItem;
    const-string v1, "ic_action_pinn_to_home"

    .line 305
    .local v1, pinnIconId:Ljava/lang/String;
    const-string v2, "pinn_to_action"

    const-string v3, "ic_action_pinn_to_home"

    invoke-virtual {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setFavoriteIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "favorite"

    .prologue
    .line 263
    const v2, 0x7f0d009b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 264
    .local v0, favoriteAction:Landroid/view/MenuItem;
    const-string v1, "ic_action_favorite"

    .line 265
    .local v1, favoriteIconId:Ljava/lang/String;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "favorite_selected"

    const-string v3, "ic_action_favorite"

    invoke-virtual {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v2, "favorite_normal"

    const-string v3, "ic_action_favorite"

    invoke-virtual {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "menuItem"
    .parameter "resourceColorName"
    .parameter "resourceDrawableName"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, p3}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 234
    .local v8, maskDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 254
    .end local v8           #maskDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 238
    .restart local v8       #maskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #maskDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 239
    .local v7, maskBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 240
    .local v11, width:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 242
    .local v6, height:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 243
    .local v9, outBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 247
    .local v5, maskedPaint:Landroid/graphics/Paint;
    invoke-virtual {p0, p2}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 250
    int-to-float v3, v11

    int-to-float v4, v6

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mResources:Landroid/content/res/Resources;

    invoke-direct {v10, v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 253
    .local v10, outDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setOverflowStyle(Landroid/app/Activity;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/andrew/apollo/utils/ThemeUtils;->isActionBarDark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/high16 v0, 0x7f0c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const v0, 0x7f0c0001

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method public setSearchIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "search"

    .prologue
    .line 279
    const v2, 0x7f0d009e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 280
    .local v0, searchAction:Landroid/view/MenuItem;
    const-string v1, "ic_action_search"

    .line 281
    .local v1, searchIconId:Ljava/lang/String;
    const-string v2, "search_action"

    const-string v3, "ic_action_search"

    invoke-virtual {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setShopIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "search"

    .prologue
    .line 291
    const v2, 0x7f0d00a0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 292
    .local v0, shopAction:Landroid/view/MenuItem;
    const-string v1, "ic_action_shop"

    .line 293
    .local v1, shopIconId:Ljava/lang/String;
    const-string v2, "shop_action"

    const-string v3, "ic_action_shop"

    invoke-virtual {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMenuItemColor(Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3
    .parameter "subtitle"

    .prologue
    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mActionBarLayout:Landroid/view/View;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, actionBarSubtitle:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    const-string v1, "action_bar_subtitle"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .end local v0           #actionBarSubtitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setThemePackageName(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 141
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/utils/ThemeUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/andrew/apollo/utils/ThemeUtils$1;-><init>(Lcom/andrew/apollo/utils/ThemeUtils;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mActionBarLayout:Landroid/view/View;

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    .local v0, actionBarTitle:Landroid/widget/TextView;
    const-string v1, "action_bar_title"

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v0           #actionBarTitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shopFor(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, shopIntent:Landroid/content/Intent;
    const-string v1, "https://market.android.com/search?q=%s&c=apps&featured=APP_STORE_SEARCH"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/andrew/apollo/utils/ThemeUtils;->sApolloSearch:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public themeActionBar(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 1
    .parameter "actionBar"
    .parameter "title"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/andrew/apollo/utils/ThemeUtils;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 325
    const-string v0, "action_bar"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    invoke-virtual {p0, p2}, Lcom/andrew/apollo/utils/ThemeUtils;->setTitle(Ljava/lang/String;)V

    .line 329
    return-void
.end method
