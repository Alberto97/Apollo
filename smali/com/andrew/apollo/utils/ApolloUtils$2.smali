.class final Lcom/andrew/apollo/utils/ApolloUtils$2;
.super Ljava/lang/Object;
.source "ApolloUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/utils/ApolloUtils;->showColorPicker(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$colorPickerView:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/andrew/apollo/widgets/ColorSchemeDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/andrew/apollo/utils/ApolloUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/andrew/apollo/utils/ApolloUtils$2;->val$colorPickerView:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/andrew/apollo/utils/ApolloUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/utils/ApolloUtils$2;->val$colorPickerView:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setDefaultThemeColor(I)V

    .line 336
    return-void
.end method
