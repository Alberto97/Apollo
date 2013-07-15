.class public final Lcom/andrew/apollo/utils/ApolloUtils;
.super Ljava/lang/Object;
.source "ApolloUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static final createOpenSourceDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"

    .prologue
    .line 215
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, webView:Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/licenses.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 217
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createShortcutIntent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    :try_start_0
    invoke-static {p3}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    .line 284
    const-string v1, "vnd.android.cursor.dir/albums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    :goto_0
    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020018

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/ui/activities/ShortcutActivity;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 300
    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 305
    const-string v3, "android.intent.extra.shortcut.ICON"

    const/16 v4, 0x60

    invoke-static {v0, v4}, Lcom/andrew/apollo/utils/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    const v0, 0x7f09004c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {p3, v0, v1}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->show()V

    .line 320
    :goto_1
    return-void

    .line 287
    :cond_1
    invoke-virtual {v0, p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "ApolloUtils"

    const-string v2, "createShortcutIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const v0, 0x7f09004d

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/devspark/appmsg/AppMsg;->STYLE_ALERT:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {p3, v0, v1}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/devspark/appmsg/AppMsg;->show()V

    goto :goto_1
.end method

.method public static doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "runnable"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/andrew/apollo/utils/ApolloUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/andrew/apollo/utils/ApolloUtils$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 255
    .local v0, listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 256
    return-void
.end method

.method public static varargs execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .parameter "forceSerial"
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TT;**>;"
    .local p2, args:[Ljava/lang/Object;,"[TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class can only be used on API 4 and newer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_2
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static final getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;
    .locals 2
    .parameter "activity"

    .prologue
    .line 265
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageFetcher;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    .line 266
    .local v0, imageFetcher:Lcom/andrew/apollo/cache/ImageFetcher;
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->findOrCreateCache(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->setImageCache(Lcom/andrew/apollo/cache/ImageCache;)V

    .line 267
    return-object v0
.end method

.method public static final hasJellyBean()Z
    .locals 2

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isColorDark(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 231
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    const/16 v1, 0x82

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 92
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isOnline(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 133
    if-nez p0, :cond_1

    move v4, v6

    .line 168
    :cond_0
    :goto_0
    return v4

    .line 137
    :cond_1
    const/4 v4, 0x0

    .line 138
    .local v4, state:Z
    invoke-static {p0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/andrew/apollo/utils/PreferenceUtils;->onlyOnWifi()Z

    move-result v3

    .line 141
    .local v3, onlyOnWifi:Z
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 145
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 147
    .local v5, wifiNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    .line 148
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 152
    :cond_2
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 154
    .local v2, mbobileNetwork:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 155
    if-nez v3, :cond_3

    .line 156
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 161
    :cond_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 162
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 163
    if-nez v3, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    goto :goto_0
.end method

.method public static removeHardwareAccelerationSupport(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 360
    :cond_0
    return-void
.end method

.method public static showCheatSheet(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 179
    const/4 v11, 0x2

    new-array v4, v11, [I

    .line 180
    .local v4, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 182
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 187
    .local v9, viewWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 188
    .local v8, viewHeight:I
    aget v11, v4, v6

    div-int/lit8 v12, v9, 0x2

    add-int v7, v11, v12

    .line 189
    .local v7, viewCenterX:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v5, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 190
    .local v5, screenWidth:I
    const/high16 v11, 0x4240

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v3, v11

    .line 192
    .local v3, estimatedToastHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    .local v0, cheatSheet:Landroid/widget/Toast;
    aget v11, v4, v10

    if-ge v11, v3, :cond_0

    move v6, v10

    .line 195
    .local v6, showBelow:Z
    :cond_0
    if-eqz v6, :cond_1

    .line 198
    const/16 v11, 0x31

    div-int/lit8 v12, v5, 0x2

    sub-int v12, v7, v12

    aget v10, v4, v10

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v13

    add-int/2addr v10, v8

    invoke-virtual {v0, v11, v12, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 206
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    return-void

    .line 203
    :cond_1
    const/16 v11, 0x51

    div-int/lit8 v12, v5, 0x2

    sub-int v12, v7, v12

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    aget v10, v4, v10

    sub-int v10, v13, v10

    invoke-virtual {v0, v11, v12, v10}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public static showColorPicker(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 328
    new-instance v0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, colorPickerView:Lcom/andrew/apollo/widgets/ColorSchemeDialog;
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/andrew/apollo/utils/ApolloUtils$2;

    invoke-direct {v3, p0, v0}, Lcom/andrew/apollo/utils/ApolloUtils$2;-><init>(Landroid/content/Context;Lcom/andrew/apollo/widgets/ColorSchemeDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 338
    const/4 v2, -0x2

    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 340
    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->show()V

    .line 341
    return-void
.end method
